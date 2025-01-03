from pyspark.sql import SparkSession
from pyspark.sql.functions import col, row_number
from pyspark.sql.window import Window
import sys

def main():
    # Configuración de Spark
    spark = SparkSession.builder.appName("Ejercicio3").getOrCreate()
    spark.sparkContext.setLogLevel("FATAL")

    # Comprueba el número de argumentos
    if len(sys.argv) != 5:
        print(f"Uso: {sys.argv[0]} dfCitas.parquet dfInfo.parquet lista_paises salida.csv")
        exit(-1)

    # Obtiene los argumentos de línea de comandos
    dfCitas_path = sys.argv[1]
    dfInfo_path = sys.argv[2]
    lista_paises = sys.argv[3].split(',')
    salida_path = sys.argv[4]

    # Carga de los DataFrames desde Parquet
    dfCitas = spark.read.parquet(dfCitas_path)
    dfInfo = spark.read.parquet(dfInfo_path)

    # Filtrar por los países especificados
    dfInfo = dfInfo.filter(col("COUNTRY").isin(lista_paises))

    # Inner join de los DataFrames
    df_joined = dfCitas.join(dfInfo, "NPatente", "inner")

    # Crear una ventana para calcular el rango
    windowSpec = Window.partitionBy("COUNTRY", "Año").orderBy(col("Ncitas").desc())

    # Añadir la columna de rango
    df_ranked = df_joined.withColumn("Rango", row_number().over(windowSpec))

    # Seleccionar y ordenar las columnas
    df_result = df_ranked.select(
        col("COUNTRY").alias("País"),
        "Año",
        "NPatente",
        "Ncitas",
        "Rango"
    ).orderBy("País", "Año", col("Ncitas").desc())
    
    # Mostrar el resultado
    df_result.show()
    
    # Guardar en un único fichero CSV sin compresión y con cabecera
    (df_result.coalesce(1)
        .write.format("csv")
        .mode("overwrite")
        .option("header", True)
        .save(salida_path))

if __name__ == "__main__":
    main()