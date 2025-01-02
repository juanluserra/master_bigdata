from mrjob.job import MRJob
from mrjob.protocol import TextProtocol, TextValueProtocol
from typing import Generator, Any

class MRCitingPatents(MRJob):

    INPUT_PROTOCOL = TextValueProtocol
    OUTPUT_PROTOCOL = TextProtocol

    def mapper(self, _, value) -> Generator[tuple, Any, None]:
        # Ignorar la cabecera
        if value.startswith('"CITING"'):
            return
        citing_patent, cited_patent = value.split(',')
        yield cited_patent, citing_patent

    def reducer(self, key, values) -> Generator[tuple, Any, None]:
        citing_patents_list = list(values)
        citing_patents_str = ','.join(citing_patents_list)
        yield key, citing_patents_str

if __name__ == '__main__':
    MRCitingPatents.run()