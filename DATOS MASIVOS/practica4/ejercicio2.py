from pyspark.sql import SparkSession
from pyspark.sql.functions import col, count, avg, max, udf
from pyspark.sql.types import StringType
from pyspark.broadcast import Broadcast
import sys

def main():
    # Configuración de Spark
    spark = SparkSession.builder.appName("Ejercicio2").getOrCreate()
    spark.sparkContext.setLogLevel("FATAL")

    # Comprueba el número de argumentos
    if len(sys.argv) != 4:
        print(f"Uso: {sys.argv} path-to-country_codes.txt dfCitas.parquet dfInfo.parquet")
        exit(-1)

    # Obtiene los argumentos de línea de comandos
    country_codes_path = sys.argv[1]
    dfCitas_path = sys.argv[2]
    dfInfo_path = sys.argv[3]

    # Carga de los DataFrames desde Parquet
    dfCitas = spark.read.parquet(dfCitas_path)
    dfInfo = spark.read.parquet(dfInfo_path)

    # Carga de country_codes.txt en un diccionario
    ccDF = spark.read.option("delimiter", "\t").csv(country_codes_path).toDF("code", "country")
    ccDict = {row['code']: row['country'] for row in ccDF.collect()}
    bcastCCDict: Broadcast[dict[str, str]] = spark.sparkContext.broadcast(ccDict)

    # Inner join de los DataFrames
    df_joined = dfCitas.join(dfInfo, "NPatente", "inner")

    # Renombrar la columna COUNTRY a País
    df_joined = df_joined.withColumnRenamed("COUNTRY", "País")

    # Función para obtener el nombre completo del país usando el broadcast
    def get_country_name(code):
        return bcastCCDict.value.get(code)
    
    # Registrar la función como UDF
    get_country_name_udf = udf(get_country_name, StringType())

    # Aplicar la UDF para obtener el nombre completo del país
    df_joined = df_joined.withColumn("NombrePaís", get_country_name_udf(col("País")))

    # Agrupar y calcular las métricas
    df_grouped = df_joined.groupBy("País", "Año").agg(
        count("NPatente").alias("NumPatentes"),
        count("NPatente").alias("TotalCitas"),
        avg("Ncitas").alias("MediaCitas"),
        max("Ncitas").alias("MaxCitas")
    )

    # Reemplazar códigos por nombres
    df_with_country_name = df_grouped.withColumn("País", get_country_name_udf(col("País")))

    # Ordenar el DataFrame
    df_ordered = df_with_country_name.orderBy(col("MaxCitas").desc(), "País", "Año")
    
    # Enseñar el DataFrame resultante
    df_ordered.show()
    
    # Guardar en un único fichero CSV sin compresión y con cabecera
    (df_ordered.coalesce(1)
        .write.format("csv")
        .mode("overwrite")
        .option("header", True)
        .save("resultado_ejercicio2.csv"))

if __name__ == "__main__":
    main()