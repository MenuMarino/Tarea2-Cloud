FROM ubuntu:latest

# Instalar dependencias de Apache Spark y Python 3
RUN apt-get update && \
    apt-get install -y default-jre scala wget python3

# Descargar y descomprimir Apache Spark 1.5.2
RUN wget https://archive.apache.org/dist/spark/spark-1.5.2/spark-1.5.2-bin-hadoop2.6.tgz && \
    tar xzf spark-1.5.2-bin-hadoop2.6.tgz && \
    mv spark-1.5.2-bin-hadoop2.6 /spark && \
    rm spark-1.5.2-bin-hadoop2.6.tgz

WORKDIR /tarea2

# Copiar wordcount.py y el archivo input_file.txt
COPY wordcount.py .
COPY movies.csv .

RUN ln -s /usr/bin/python3 /usr/bin/python
# Script para ejecutar WordCount.py
RUN /spark/bin/spark-submit --master local[*] /tarea2/wordcount.py > /tarea2/output_file.txt
