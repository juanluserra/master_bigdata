import scrapy
import json
from bs4 import BeautifulSoup
from typing import Generator, Any
from pathlib import Path
import re
import scrapy.http
import scrapy.http.response
import random


# Crawler para la página de la Pokedex
class PokedexSpyder(scrapy.Spider):
    name = 'pokedex'

    # Decimos que el dominio válido es el de la página pkparaiso
    allowed_domains = ['pkparaiso.com']

    # Definimos la página de inicio
    start_urls = [
        'https://www.pkparaiso.com/pokedex/nidorino.php']

    # Para evitar que el sitio te bloquee por usar scrapy es interesante cambiar el USER_AGENT
    # El user agent por defecto de Scrapy cuando hace una petición es
    # Scrapy/VERSION (+https://scrapy.org)
    custom_settings = {
        'USER_AGENT': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36',
    }

    # Creamos una carpeta para guardar los JSON
    json_folder = Path("pokedex")

    # Ahora implementamos el método parse que se llama para cada página que se analiza
    def parse(self, response: scrapy.http.Response) -> Generator[Any, None, None]:
        # Comprobamos si el número de archivos JSON es mayor que 500
        # Si es así, paramos el crawler
        # y no seguimos buscando más pokemons
        if len(list(self.json_folder.glob("*.json"))) > 500:
            print("Se han encontrado más de 500 pokemons, se para el crawler")
            return

        # Guardamos la URL del sitio que se está visitando
        url = str(response.request.url).strip()

        # Seleccionamos el nombre y número del pokemon
        names_count = 0
        for block in response.css('div.inblock'):
            # Cogemos los textos
            texts = block.css('::text').getall()

            # Seleccionamos el nombre y el número del pokemon
            names_count += sum(1 for text in texts if "#" in text)
            if names_count == 2:
                text1 = texts[1].split("#")
                text2 = text1[1].split(" ")
                number, name = text2
                break

        # Seleccionamos las descripciones de cada generación
        videogames = response.css('td[width="140"]::text').getall()[1::2]
        descriptions = response.css(
            'td[style*="text-align:justify"]::text').getall()
        descriptions_dict = {}
        for videogame, description in zip(videogames, descriptions):
            descriptions_dict[videogame] = description

        # Seleccionamos los tipos
        types = response.css(
            'table.dexg[width="320"] '
            'td.row2:contains("Tipos") + td.row1 '
            'img[src^="/imagenes/xy/sprites/tipos/"]::attr(src)'
        ).getall()
        for idx, type in enumerate(types):
            types[idx] = type.split("/")[-1].split(".")[0]

        # Seleccionamos la clase del pokemon
        pokemon_class = response.css(
            # la tabla "Datos básicos"
            'table.dexg[width="320"] '
            # el td.row1 que sigue al td.row2 con texto "Clase"
            'td.row2:contains("Clase") + td.row1::text'
        ).get().strip()

        # Seleccionamos el peso y la altura
        peso_altura = response.css(
            'table.dexg[width="320"] '
            'td.row2:contains("Peso / Altura") + td.row1::text'
        ).get().strip()
        weight, height = [x.strip() for x in peso_altura.split('/')]
        weight = float(weight.split(" ")[0].replace(",", "."))
        height = float(height.split(" ")[0].replace(",", "."))

        # Creamos un diccionario con los datos
        data = {
            "name": name,
            "number": number,
            "url": url,
            "types": types,
            "class": pokemon_class,
            "weight": weight,
            "height": height,
            "descriptions": descriptions_dict
        }
        print(data)

        # Guardamos el diccionaro en un archivo JSON
        json_file = self.json_folder / f"{number.lower()}.json"
        with open(json_file, 'w', encoding='utf-8') as f:
            json.dump(data, f, ensure_ascii=False, indent=4)

        # Obtenemos todas las otros links de la página representados por la etiqueta <a>
        url_in_current_document = response.css("a")
        for next_page in url_in_current_document:
            surl = str(next_page.css("a::attr(href)").get())
            # Limitamos las búsquedas que sean tipo "/pokedex/*.php"
            # Descartamos también la que contenga el nombre del pokemon actual
            if surl.startswith("/pokedex/"):
                # new_url = self.allowed_domains[0] + "/" + surl
                new_url = "https://pkparaiso.com/" + surl
                yield response.follow(new_url, self.parse)
