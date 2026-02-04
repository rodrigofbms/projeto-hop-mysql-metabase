# project-hop-mysql-metabase - Data Engineering ERP Pipeline

## 📌 Project Overview
This project demonstrates the development of an end-to-end data engineering pipeline using real-world ERP data.  
The main goal is to extract, transform, and load operational data into an analytical environment to support business decision-making.

## 🏗 Architecture
- Source: ERP system (MySQL)
- ETL Tool: Apache Hop
- Analytical Database: MySQL
- Visualization: Metabase

## 🗄 Data Modeling
The data model was designed to support analytical queries, focusing on:
- Fact and dimension separation
- Performance optimization
- Data consistency and clarity

### Staging Area:
<img width="860" height="673" alt="Staging Area" src="https://github.com/user-attachments/assets/a6dabac0-15cd-4d94-8626-35339014119c" />

### Data Warehouse:
<img width="1079" height="722" alt="DataWarehouse" src="https://github.com/user-attachments/assets/46035383-dad1-430f-97ef-8ed70cdcd16f" />

## 🔄 Data Pipeline
- Extraction of raw data from ERP tables
- Data cleaning and standardization
- Transformation into analytical-friendly tables
- Loading data into structured schemas
- Exposure of data for BI and reporting

### Workflow Staging area:
<img width="747" height="251" alt="Workflow staging" src="https://github.com/user-attachments/assets/5f197435-bf94-4986-a1d2-4e96b2612e2e" />

### Workflow dimensions:
<img width="926" height="128" alt="Workflow dimensions" src="https://github.com/user-attachments/assets/726a615b-0b7e-4421-871c-5b82767ba55a" />

### Dimension Customer:
<img width="730" height="213" alt="dimension customer" src="https://github.com/user-attachments/assets/eac8f41a-c24d-40d6-82fa-3c9ff5c5cc65" />

### Dimension Employee:
<img width="1227" height="416" alt="dimension employee" src="https://github.com/user-attachments/assets/aec53c84-4048-4ad9-9682-d8a2348a17fa" />

### Dimension Service order:
<img width="1288" height="373" alt="dimension service order" src="https://github.com/user-attachments/assets/b91e5cf2-39e1-4918-9820-4fff9907c80b" />

### Dimension Employee:
<img width="1227" height="416" alt="dimension employee" src="https://github.com/user-attachments/assets/bcfe4456-11da-46d0-b396-b879262a7378" />

### Workflow fact:
<img width="520" height="136" alt="Workflow fato" src="https://github.com/user-attachments/assets/4542029e-d1d7-438a-8da0-a06e5923e9b3" />

### Dimension Fact sales:
<img width="1739" height="334" alt="dimesion fato sales" src="https://github.com/user-attachments/assets/d59f0611-4b0b-4bca-a081-12286f45a2f1" />

### Main Workflow:
<img width="546" height="264" alt="Workflow principal" src="https://github.com/user-attachments/assets/271eac4d-31f6-4609-92a5-1a1286483ce9" />


## 📊 Dashboards
Dashboards were created in Metabase to:
- Monitor business KPIs
- Analyze operational and financial data
- Support decision-making processes

### Business dashboard
<img width="873" height="844" alt="dashboard 1" src="https://github.com/user-attachments/assets/c81e280a-1851-48f9-b2fb-a1315b446393" />

### Employee dashboard
<img width="1800" height="1720" alt="Design sem nome" src="https://github.com/user-attachments/assets/15b8f920-1322-4389-9243-614198159fe1" />

### Customer dashboard
<img width="1800" height="1720" alt="dashboard 3" src="https://github.com/user-attachments/assets/601d561a-4627-4e03-acbc-acd900041a0a" />


## 🛠 Tools & Technologies
- Apache Hop
- MySQL
- Metabase
- SQL

The pipeline follows best practices such as data standardization, transformation layers, and analytical modeling.

## 🚀 Key Learnings
- Building scalable ETL pipelines
- Working with real-world ERP data
- Applying data modeling concepts
- Transforming operational data into analytical insights
