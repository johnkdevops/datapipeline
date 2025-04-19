from pyspark.sql import SparkSession

# Initialize Spark
spark = SparkSession.builder.appName("DataPipeline").getOrCreate()

# Sample data
data = [("Alice", 100), ("Bob", 200)]
df = spark.createDataFrame(data, ["name", "sales"])

# Save as a table
df.write.mode("overwrite").saveAsTable("sales_data")

# Show the DataFrame in output
print(df.show())
                                                      