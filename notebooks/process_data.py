# Databricks notebook source      
from pyspark.sql import SparkSession      
spark = SparkSession.builder.appName("DataPipeline").getOrCreate()      
data = [("Alice", 100), ("Bob", 200)]      
df = spark.createDataFrame(data, ["name", "sales"])      
df.write.mode("overwrite").saveAsTable("sales_data")      
display(df)                                                      