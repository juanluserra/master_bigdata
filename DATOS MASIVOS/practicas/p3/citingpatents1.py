from mrjob.job import MRJob
from mrjob.protocol import TextProtocol, TextValueProtocol
from typing import Generator, Any
from pathlib import Path
FILE_PATH = Path(__file__).parent

class MRCitingPatents(MRJob):

    # El protocolo de entrada sólo tiene en cuenta el valor (la línea de entrada)
    INPUT_PROTOCOL = TextValueProtocol

    # El protocolo de salida por defecto separa clave y valor por tabulador
    OUTPUT_PROTOCOL = TextProtocol

    def mapper(self, key, value) -> Generator[tuple, Any, None]:
        citting, citted = value.split(',')
        
        with open(FILE_PATH / 'log_citingpatents.txt', 'w') as f:
            f.write('test \n')
        
        if '"' not in value:
            yield citting, citted

    def reducer(self, key, values) -> Generator[tuple, Any, None]:
        yield key, ",".join(values)


if __name__ == '__main__':
    MRCitingPatents.run()
