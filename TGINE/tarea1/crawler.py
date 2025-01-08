import scrapy
import sys
import json
import locale
import time
import random
from bs4 import BeautifulSoup
from typing import Generator, Any
from pathlib import Path

import scrapy.http
import scrapy.http.response

# Crawler para la página de la Bulbapedia
class BulbaSpyder(scrapy.Spider):
    """
    BulbaSpyder es un spyder de Scrapy diseñada para extraer información de la Bulbapedia.
    Atributos:
    
    ----------
    
    name : str
        Nombre del spyder.
    allowed_domains : list
        Lista de dominios permitidos para el spyder.
    start_urls : list
        Lista de URLs de inicio para el spyder.
    custom_settings : dict
        Configuraciones personalizadas para el spyder, como el USER_AGENT.
    Métodos:
    
    --------
    
    parse(response):
        Método principal que se llama para cada página que se analiza. Extrae información relevante
        de la página y la guarda en un archivo JSON. También sigue los enlaces a otras páginas que
        cumplen con ciertos criterios.
    """
    
    name = 'bulbapedia'

    # Decimos que el dominio válido es el de la Bulbapedia
    allowed_domains = ['bulbapedia.bulbagarden.net']

    # Definimos la página de inicio
    start_urls = ['https://bulbapedia.bulbagarden.net/wiki/Abomasnow_(Pokémon)']
    
    # Para evitar que el sitio te bloquee por usar scrapy es interesante cambiar el USER_AGENT
    # El user agent por defecto de Scrapy cuando hace una petición es
    # Scrapy/VERSION (+https://scrapy.org)
    custom_settings = {
        'USER_AGENT': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36',
    }
    
    stop_crawl = False
    
    # Ahora implementamos el método parse que se llama para cada página que se analiza
    def parse(self, response: scrapy.http.Response) -> Generator[Any, None, None]:
        """
        Analiza la respuesta de la página web y extrae información relevante sobre Pokémon.
        Args:
            response: La respuesta de la página web que se está analizando.
        Returns:
            Un generador que produce nuevas solicitudes para seguir enlaces en la página actual.
        El método realiza las siguientes acciones:
        1. Guarda la URL de la página actual.
        2. Crea una carpeta para almacenar los archivos JSON.
        3. Utiliza selectores CSS para extraer el nombre, número y descripción del Pokémon.
        4. Convierte la información extraída en un diccionario y luego en un archivo JSON.
        5. Guarda el archivo JSON en la carpeta especificada.
        6. Extrae todos los enlaces de la página actual y sigue aquellos que contienen la palabra "_(Pokémon)" en su URL.
        """
        if self.stop_crawl:
            return
        
        # Guardamos la URL del sitio que se está visitando
        url = str(response.request.url).strip()
        
        # Creamos una carpeta para guardar los JSON
        json_folder = Path("bulbapedia")
        
        # Cogemos el contenido relevante y para eso debemos usar selectores CSS
        for section in response.css('.bulbapediamonobook-body'):
            # Seleccionamos el nombre del pokemon
            pokemon = section.css('div .mw-parser-output > p').get().strip()
            pokemon = BeautifulSoup(pokemon, 'html.parser').get_text().strip()
            pokemon = pokemon.split(" (")[0]
            
            # Seleccionamos el número del pokemon
            number = section.css('table .roundy th a span').get()      
            number = BeautifulSoup(number, 'html.parser').get_text().strip()
            number = number[1:]
            
            # Seleccionamos el origen del pokemon
            origin = section.css('span.mw-headline#Origin').get()
            origin = section.xpath('//h3[span[@id="Origin"]]/following-sibling::p[1]').get()
            origin = BeautifulSoup(origin, 'html.parser').get_text().strip()
            
            # Seleccionamos la descripción del pokemon
            description = section.xpath('//h2/following-sibling::*[preceding-sibling::h2 and self::p and not(preceding-sibling::h3)]').getall()
            description = [BeautifulSoup(c, 'html.parser').get_text().strip() for c in description]
            description = " ".join(description)
                        
            # Mostramos el contenido
            data = {
                "url": url,
                "pokemon": pokemon,
                "pokedex_number": number,
                "origin": origin,
                "description": description
            }
            
            # Convertimos el diccionario a JSON
            json_data = json.dumps(data, ensure_ascii=False, indent=4)
            
            # Mostramos el JSON
            print(json_data)
            
            # Guardamos el JSON en un archivo
            with open(json_folder / f"{number}.json", "w", encoding="utf-8") as file:
                file.write(json_data)
                if len(list(json_folder.glob("*.json"))) > 500:
                    print("Se alcanzó el límite de 500 archivos JSON. Terminando el rastreo.")
                    self.stop_crawl = True
                    break
            
        
        # Obtenemos todas las otros links de la página representados por la etiqueta <a>
        url_in_current_document = response.css("a")
        for next_page in url_in_current_document:
            # Para limitar que solamente se parseen las noticias dentro de 'https://bulbapedia.bulbagarden.net/wiki/'
            # que contengan la palabra _(Pokémon) en su URL obtenemos el atributo href de la etiqueta <a> y 
            # parseamos la página
            url = str(next_page.css("a::attr(href)").get())
            if "_(Pok%C3%A9mon)" in url and not any(substring in url for substring in ["_(Pok%C3%A9mon)/", ":", "#"]):
                # Comprobamos si la URL es relativa y la convertimos en absoluta
                if url.startswith("/wiki/"):
                    url = self.allowed_domains[0] + url
                if url.startswith(self.allowed_domains[0]):
                    yield response.follow(next_page, self.parse)  # Ahora seguimos la URL correctamente
