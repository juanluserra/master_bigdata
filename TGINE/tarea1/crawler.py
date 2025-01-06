import scrapy
import sys
import json
import locale
import time
import random
from bs4 import BeautifulSoup
from typing import Generator, Any
from pathlib import Path

# Para cada crawler que nos definimos nos debemos crear una clase Spider que debe heredar de la clase scrapy.Spider

class BulbaSpyder(scrapy.Spider):
    name = 'bulbapedia'

    # Decimos que el dominio válido es el de la Bulbapedia
    allowed_domains = ['https://bulbapedia.bulbagarden.net']

    # podemos definir las páginas de inicio
    start_urls = ['https://bulbapedia.bulbagarden.net/wiki/Abomasnow_(Pokémon)']

    # para evitar que el sitio te bloquee por usar scrapy es interesante cambiar el USER_AGENT
    # El user agent por defecto de Scrapy cuando hace una petición es
    # Scrapy/VERSION (+https://scrapy.org)
    custom_settings = {
        'USER_AGENT': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36',
    }
    
    # debemos de implementar este método que se llamará para cada una de las páginas que se vayan analizando
    def parse(self, response) -> Generator[Any, None, None]:
        """
        @inherit

        @param self
        @param response
        """

        # Guardamos la URL del sitio que se está visitando
        url = str(response.request.url).strip()
        
        # Creamos una carpeta para guardar los JSON
        json_folder = Path("bulbapedia")

        # Cogemos el contenido relevante y para eso debemos usar selectores CSS
        for section in response.css('.bulbapediamonobook-body'):
            print("ELEMENTO:")
            
            # Seleccionamos el nombre del pokemon
            pokemon = section.css('div .mw-parser-output > p').get().strip()
            pokemon = BeautifulSoup(pokemon, 'html.parser').get_text().strip()
            pokemon = pokemon.split(" ")[0]
            
            # Seleccionamos el número del pokemon
            number = section.css('table .roundy th a span').get()      
            number = BeautifulSoup(number, 'html.parser').get_text().strip()
            number = number[1:]
            
            # Seleccionamos el contenido
            content = section.xpath('//h2/following-sibling::*[preceding-sibling::h2 and self::p and not(preceding-sibling::h3)]').getall()
            content = [BeautifulSoup(c, 'html.parser').get_text().strip().encode('utf-8').decode('utf-8') for c in content]
            
            # Mostramos el contenido
            data = {
                "url": url,
                "pokemon": pokemon,
                "numero_pokedex": number,
                "descripcion": content
            }
            
            # Convertimos el diccionario a JSON
            json_data = json.dumps(data, ensure_ascii=False, indent=4)
            
            # Mostramos el JSON
            print(json_data)
            
            # Guardamos el JSON en un archivo
            with open(json_folder / f"{number}.json", "w") as file:
                file.write(json_data)
            

        # # Obtenemos todas las otros links de la página representados por la etiqueta <a>
        # url_in_current_document = response.css ('a')
        # for next_page in url_in_current_document:
        #     # Para limitar que solamente se parseen las noticias dentro de 'https://bulbapedia.bulbagarden.net/wiki/'
        #     # que contengan la palabra _(Pokémon) en su URL obtenemos el atributo href de la etiqueta <a> y 
        #     # parseamos la página
        #     url = str(next_page.css("a::attr(href)").get())
        #     if "_(Pok%C3%A9mon)" in url:
        #         yield response.follow (next_page, self.parse)
