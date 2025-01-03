import sys
from pyspark.sql import SparkSession
from pyspark.sql.functions import col, floor, lag, count
from pyspark.sql.window import Window

def main():
    # Configuración de Spark
    spark = SparkSession.builder.appName("Ejercicio4").getOrCreate()
    spark.sparkContext.setLogLevel("FATAL")

    # Comprueba el número de argumentos
    if len(sys.argv) != 3:
        print(f"Uso: {sys.argv[0]} dfInfo.parquet output_csv_path")
        exit(-1)

    # Obtiene los argumentos de línea de comandos
    input_parquet_path = sys.argv[1]
    output_csv_path = sys.argv[2]

    # Carga del DataFrame desde Parquet
    df = spark.read.parquet(input_parquet_path)

    # Crear una nueva columna para la década
    df = df.withColumn("Década", (floor(col("Año") / 10) * 10).cast("int"))

    # Agrupar por COUNTRY y Década y contar el número de patentes
    df_grouped = df.groupBy("COUNTRY", "Década").agg(count("NPatente").alias("NPatentes"))

    # Crear una ventana para calcular la diferencia con la década anterior
    windowSpec = Window.partitionBy("COUNTRY").orderBy("Década")

    # Calcular la diferencia con la década anterior
    df_grouped = df_grouped.withColumn("Dif", col("NPatentes") - lag("NPatentes", 1, 0).over(windowSpec))

    # Renombrar la columna COUNTRY a País
    df_grouped = df_grouped.withColumnRenamed("COUNTRY", "País")

    # Ordenar el DataFrame por País y Década
    df_ordered = df_grouped.orderBy("País", "Década")

    # Mostrar el resultado
    df_ordered.show()

    # Guardar en un único fichero CSV sin compresión y con cabecera
    (df_ordered.coalesce(1)
        .write.format("csv")
        .mode("overwrite")
        .option("header", True)
        .save(output_csv_path))

    # Detener la sesión de Spark
    spark.stop()

if __name__ == "__main__":
    main()