import scrapy
import sys
import json
import locale
import time
import random
from bs4 import BeautifulSoup
from typing import Generator, Any
from pathlib import Path
import re
import scrapy.http
import scrapy.http.response
import random
from datetime import datetime, timedelta


# Función para geenerar una fecha aleatoria
def random_date(start: str, end: str) -> str:
    """
    Genera una fecha aleatoria entre 'inicio' y 'fin' (ambas en 'dd-mm-YYYY').

    :param inicio: Fecha de inicio en formato 'dd-mm-YYYY'
    :param fin:    Fecha final en formato 'dd-mm-YYYY'
    :return:       Fecha aleatoria en formato 'dd-mm-YYYY'
    """
    fmt = "%d-%m-%Y"
    d0 = datetime.strptime(start, fmt)
    d1 = datetime.strptime(end,    fmt)
    delta = d1 - d0
    # número de días aleatorio en el rango [0, delta.days]
    random_day = random.randrange(delta.days + 1)
    date = d0 + timedelta(days=random_day)
    return date.strftime(fmt)

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

        # Generamos una fecha aleatoria entre 01-01-2000 y 31-12-2023 para asignar a los documentos
        # y de esta forma poder filtrar por fecha en elasticsearch
        start_date = "01-01-2000"
        end_date = "31-12-2023"
        date = random_date(start_date, end_date)

        # Creamos un diccionario con los datos
        data = {
            "name": name,
            "number": number,
            "url": url,
            "date": date,
            "descriptions": descriptions_dict
        }

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
                print(name, "->", new_url)
                yield response.follow(new_url, self.parse)
