from mrjob.job import MRJob
from mrjob.step import MRStep
from mrjob.protocol import TextProtocol, TextValueProtocol
from typing import Generator, Any
from countrypatents3 import MRCountryPatents

class MRSortSecundario(MRJob):

    # Se ordenan los valores de salida
    SORT_VALUES: bool = True

    # Se utiliza un particionador que ordena por la clave
    PARTITIONER = 'org.apache.hadoop.mapred.lib.KeyFieldBasedPartitioner'

    # El protocolo de entrada separa las claves por tabulador
    INPUT_PROTOCOL = TextValueProtocol
    # El protocolo de salida por defecto separa clave y valor por tabulador
    OUTPUT_PROTOCOL = TextProtocol

    # Incluir el fichero country_codes.txt en el trabajo
    FILES: list[str] = ['country_codes.txt']

    def steps(self) -> list[MRStep]:
        countryPatentsJob = MRCountryPatents()

        return [
            MRStep(
                   mapper_init=countryPatentsJob.mapper_init,
                   mapper=countryPatentsJob.mapper),
            MRStep(mapper=self.mapper,
                   reducer=self.reducer)
        ]

    def mapper(self, key, value) -> Generator[tuple, Any, None]:
        # Line format: country \t patent,year
        country, rest = key, value
        _, year = rest.split(',')
        
        yield f"{country}\t{year}", 1
        
    def reducer(self, key, values) -> Generator[tuple, Any, None]:
        # key: [country \t year]
        # values: counts
        country, year = key.split('\t')
        total_patents = sum(values)
        yield country, f"{year} -> {total_patents}"

if __name__ == '__main__':
    MRSortSecundario.run()