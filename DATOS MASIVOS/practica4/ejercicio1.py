#!/usr/bin/env python3
from pyspark.sql import SparkSession
from pyspark.sql.functions import col, count
import sys

def main():
    # Verifica que se pasen exactamente 4 argumentos al script
    if len(sys.argv) != 5:
        print(f"Uso: {sys.argv} cite75_99.txt apat63_99.txt dfCitas.parquet dfInfo.parquet")
        exit(-1)

    # Asigna los argumentos a variables
    path_cite = sys.argv[1]
    path_apat = sys.argv[2]
    output_citas = sys.argv[3]
    output_info = sys.argv[4]

    # Crea una sesión de Spark
    spark = SparkSession.builder.appName("Ejercicio1").getOrCreate()
    spark.sparkContext.setLogLevel("FATAL")

    # a) Contar citas por patente
    # Lee el archivo de citas en un DataFrame
    cites = spark.read.option("inferSchema", "true").option("header", "true").csv(path_cite)
    # Agrupa por la columna "CITED" y cuenta el número de citas por patente
    df_citas = cites\
        .groupBy("CITED")\
        .agg(count("*")\
        .alias("ncitas"))\
        .withColumnRenamed("CITED", "NPatente")
    # Muestra el DataFrame resultante
    df_citas.show()
    # Guarda el DataFrame en formato Parquet con compresión gzip
    df_citas.write.format("parquet").option("compression", "gzip").mode("overwrite").save(output_citas)
    
    # b) Extraer información de patentes
    # Lee el archivo de información de patentes en un DataFrame
    apat = spark.read.option("inferSchema", "true").option("header", "true").csv(path_apat)
    # Selecciona las columnas relevantes y las renombra
    df_info = apat.select(col("PATENT").alias("NPatente"), "COUNTRY", col("GYEAR").alias("Año"))
    # Muestra el DataFrame resultante
    df_info.show()
    # Guarda el DataFrame en formato Parquet con compresión gzip
    df_info.write.format("parquet").option("compression", "gzip").mode("overwrite").save(output_info)
    
    # Detiene la sesión de Spark
    spark.stop()
    

if __name__ == "__main__":
    main()