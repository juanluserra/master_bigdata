from mrjob.job import MRJob
from mrjob.protocol import TextProtocol, TextValueProtocol
from typing import Generator, Any

class MRCountryPatents(MRJob):

    # El fichero country_codes.txt se incluirá en el trabajo
    FILES: list[str] = ['country_codes.txt']

    # El protocolo de entrada sólo tiene en cuenta el valor (la línea de entrada)
    INPUT_PROTOCOL = TextValueProtocol
    # El protocolo de salida por defecto separa clave y valor por tabulador
    OUTPUT_PROTOCOL = TextProtocol

    # Mapa de códigos de país a nombres de país
    country_map: dict[str,str] = {}

    def mapper_init(self):
        # Cargar el mapa de países
        with open(self.FILES[0]) as f:
            for line in f:
                (code, name) = line.strip().split('\t')
                self.country_map[code] = name

    def mapper(self, key: str, value: str) -> Generator[tuple, Any, None]:
        # Line format: "PATENT","GYEAR","GDATE","APPYEAR","COUNTRY","POSTATE","ASSIGNEE","ASSCODE","CLAIMS","NCLASS","CAT","SUBCAT","CMADE","CRECEIVE","RATIOCIT","GENERAL","ORIGINAL","FWDAPLAG","BCKGTLAG","SELFCTUB","SELFCTLB","SECDUPBD","SECDLWBD"
        fields = value.split(',')
        if fields[0] == '"PATENT"':
            # Skip header line
            return
        country_code = fields[4].strip('"')
        country_name = self.country_map.get(country_code, "Unknown")
        patent = fields[0].strip('"')
        year = fields[1].strip('"')
        yield country_name, f"{patent},{year}"

if __name__ == '__main__':
    MRCountryPatents.run()