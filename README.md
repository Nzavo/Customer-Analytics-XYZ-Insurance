# Customer-Analytics-XYZ-Insurance

## Overview
This repository contains all assets for building a 360° Customer Analytics solution for XYZ Insurance. The project demonstrates how to generate synthetic insurance data, ingest it into a SQL Server database, and create interactive dashboards using Power BI. The end goal is to provide comprehensive insights into customer demographics, policies, claims, and communications.

## Key Components

1. **Data Generation**  
   - Python scripts that create synthetic datasets (Customers, Policies, Claims, Communications).
   - Utilizes Faker for names and addresses, along with custom logic for policy, claim, and communication details.

2. **Data Ingestion Pipeline**  
   - A pipeline built in Visual Studio 2022 that automates the loading of the synthetic CSV files into SQL Server.
   - Manages table creation, data validation, and incremental loading logic where needed.
   - Includes scripts or configuration files used for setting up the pipeline.

3. **SQL Server Database & Views**  
   - Create a database to store the data
   - All data is stored in the **XYZ Insurance Database** on SQL Server.
   - Contains tables for Customers, Policies, Claims, and Communications.
   - Includes views (`VW_Customer_Overview`, `VW_Policy_Portfolio`, `VW_Claims_Overview`, `VW_Communications_Overview`) that aggregate or simplify the data for analytics and reporting.

4. **Power BI Dashboards**  
   - Four dashboards focusing on Customer Insights, Claims Performance, Policy Portfolio, and Communications & Sentiment.
   - Interactive visuals and filters (Insurance Type, Customer Name, Gender) enable a 360° view of each customer’s journey.

## Repository Structure


- **Data-Generation-Scripts/**: Python scripts for generating synthetic insurance data.  
- **XYZ Insurance Database Solution/**: Visual Studio solution and supporting files for ingesting CSV data into SQL Server.  
- **sql/**: SQL scripts for table creation, view definitions, and indexing.  
- **360° Customer Dashboard.pbix.pbix**: Power BI report for the 360° dashboards.

## How to Use

1. **Generate Data**  
   - Run the Python scripts in `Data-Generation-Scripts/` to produce CSV files for Customers, Policies, Claims, and Communications.

2. **Ingest Data**  
   - Open the Visual Studio solution in `XYZ Insurance Database Solution/` and execute the pipeline to load the CSV files into the SQL Server database.

3. **Set Up SQL Views**  
   - Run the scripts in `sql/` to create the analytics-friendly views.

4. **Open Power BI Dashboards**  
   - Launch the `360° Customer Dashboard.pbix.pbix` file to explore the 360° dashboards.

