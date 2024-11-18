# **TechCorp Data Lake Architecture**

## **Overview**
TechCorp's Data Lake architecture is designed to serve as a centralized repository for all organizational data, enabling storage, processing, and analytics of structured, semi-structured, and unstructured data. The data lake supports primarily batch processing ingestion.
Per TechCorp's current situation, there is not heavy demand form real time analytics and ML applications since transactions are not as numerous per day.

---

## **Data Sources**
The data lake integrates data from the following sources:
1. **Relational Databases**: Operational databases like MySQL for transactional data (e.g., orders, customers, and products).
2. **Finance Database**: Spreadsheets, PDFs, and documents stored in shared drives or collaboration platforms.
3. **Legal Documents**
---

## **Data Pipeline**
### **Ingestion**
- **Batch Processing**:
  - Data from MySQL and other relational databases is extracted using tools like Apache Sqoop or custom ETL scripts.
  - Historical data from files is ingested using tools like AWS Glue or Azure Data Factory.

- **Streaming Processing**:
  - Real-time data from social media and web logs is ingested using Apache Kafka or AWS Kinesis.

### **Storage**
- **Raw Zone**: Stores data in its original format, often in a scalable storage solution like Amazon S3, Azure Blob Storage, or Hadoop HDFS.
- **Cleansed Zone**: Stores cleaned and transformed data for downstream processing and analytics.
- **Curated Zone**: Stores aggregated, query-ready data optimized for business use cases.

### **Processing**
- **Data Transformation**:
  - Tools like Apache Spark, AWS Glue, or Databricks are used to clean and enrich raw data.
  - Workflows orchestrated using Apache Airflow or AWS Step Functions.

### **Analytics & Querying**
- **Data Warehouse Integration**: Processed data is exported to a data warehouse like Amazon Redshift, Snowflake, or Azure Synapse for advanced querying.
- **Business Intelligence (BI)**: Visualization tools like Tableau or Power BI connect to the data warehouse for reporting and dashboarding.

---

## **Technology Stack**
| **Component**       | **Technology**                                      |
|----------------------|----------------------------------------------------|
| **Data Ingestion**   | Apache Kafka|
| **Data Storage**     | Amazon S3                   |
| **Data Processing**  | Apache Spark                |
| **Data Warehouse**   | Amazon Redshift   |
| **Orchestration**    | Apache Airflow              |
| **Visualization**    | Tableau,                    |

---

## **Benefits**
1. **Scalability**: Supports growing data volumes with cloud-based, scalable storage and processing.
2. **Flexibility**: Handles diverse data formats, from relational tables to unstructured legal and compliance documents.
3. **Real-time Insights**: Enables real-time processing and analytics using streaming technologies.
4. **Centralized Repository**: Facilitates a unified view of organizational data for business intelligence

---

## **Usage Instructions**
1. **Data Ingestion**:
   - Use predefined connectors or scripts for loading data into the raw zone.
2. **Data Transformation**:
   - Execute predefined Spark jobs or Glue workflows for data cleaning and enrichment.
3. **Data Querying**:
   - Access data in the curated zone via SQL using tools like Redshift or Snowflake.
4. **Visualization**:
   - Connect BI tools like Tableau or Power BI

---

