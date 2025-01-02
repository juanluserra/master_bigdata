# Proyecto de MapReduce con MRJob

Este proyecto contiene varios scripts de MapReduce utilizando la librería MRJob para procesar datos de patentes. A continuación se describen los archivos y su funcionalidad.

## Archivos

### 1. `citingpatents1.py`

Este script define un trabajo de MapReduce que obtiene la lista de patentes que citan a cada patente.

- **Mapper**: Lee líneas del formato `citing_patent,cited_patent` y emite pares `(cited_patent, citing_patent)`.
- **Reducer**: Agrupa todas las patentes que citan a una patente y emite el resultado en el formato `cited_patent \t citing_patent1,citing_patent2,...`.

### 2. `citationnumberbypatent_chained2.py`

Este script extiende el trabajo definido en `citingpatents1.py` para contar el número de citas por patente.

- **Paso 1**: Utiliza el mapper y reducer de `citingpatents1.py`.
- **Paso 2**: Cuenta el número de citas por patente.
  - **Mapper**: Cuenta el número de citas para cada patente.
  - **Reducer**: Suma las citas para cada patente.

### 3. `countrypatents3.py`

Este script procesa un archivo de patentes y reemplaza los códigos de país por nombres completos.

- **Mapper**: Lee líneas del formato `PATENT,GYEAR,...,COUNTRY,...` y emite pares `(country_name, patent,year)`.
- **Reducer**: No se utiliza en este script.

### 4. `sortsecundario4.py`

Este script realiza un ordenamiento secundario de las patentes por país y año.

- **Paso 1**: Utiliza el mapper de `countrypatents3.py` para obtener pares `(country_name, patent,year)`.
- **Paso 2**: Ordena las patentes por país y año.
  - **Mapper**: Emite pares `(country \t year, 1)`.
  - **Reducer**: Suma el número de patentes por país y año y emite el resultado en el formato `country \t year -> total_patents`.

## Dependencias

Para instalar las dependencias necesarias, ejecute el siguiente comando:

```bash
pip install mrjob
```

## Ejecución

Para ejecutar los scripts, se utiliza el comando `python` seguido del nombre del archivo y los parámetros necesarios. Por ejemplo:

```bash
python3 citingpatents1.py input_file.txt
python3 citationnumberbypatent_chained2.py input_file.txt
python3 countrypatents3.py input_file.txt
python3 sortsecundario4.py input_file.txt
```