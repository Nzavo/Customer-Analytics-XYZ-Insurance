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
   - All data is stored in the **XYZ Insurance Database** on SQL Server.
   - Contains tables for Customers, Policies, Claims, and Communications.
   - Includes views (`VW_Customer_Overview`, `VW_Policy_Portfolio`, `VW_Claims_Overview`, `VW_Communications_Overview`) that aggregate or simplify the data for analytics and reporting.

4. **Power BI Dashboards**  
   - Four dashboards focusing on Customer Insights, Claims Performance, Policy Portfolio, and Communications & Sentiment.
   - Interactive visuals and filters (Insurance Type, Customer Name, Gender) enable a 360° view of each customer’s journey.


## Key Metrics Highlighted
1. Customer Insights

     - Total Customers: 10K
      
     - Avg Policy Per Customer: 2.01
   
     - Claims Approved by Age & Region
   
     - Sentiment Index: -0.22

2. Claims Performance

     - Total Claims: 30K
      
     - Claims Approved: 33.19%
      
     - Total Claim Amount: 2.06B
      
     - Monthly Claims Trend

3. Policy Portfolio

     - Total Policies Issued: 20K
      
     - Active Policies: 12K
      
     - Expired Policies: 8,325
      
     - Premium Total: 55M

3. Communications & Sentiment

     - Total Communications: 30K
      
     - Total Complaints: 9.9K
      
     - Positive Sentiment: 19.84%

360° Customer Insights Dashboard ![Customer Insights](Documentationn/360°-Customer-Insights-Dashboard.png)

Claims Performance & Trends Dashboard ![Customer Insights](https://github.com/Nzavo/Customer-Analytics-XYZ-Insurance/Documentationn/Claims-Performance-&-Trends-Dashboard.png)

## Data Flow Diagram

Here’s a visual representation of the data flow across the solution:   
![Customer Insights](https://github.com/Nzavo/Customer-Analytics-XYZ-Insurance/Documentationn/Solution-Architecture.png)


## Repository Structure


- **Data-Generation-Scripts/**: Python scripts for generating synthetic insurance data.
- **Data**: This contains the CSV files of the data generated
- **Documentationn**: This contains the document highlighting the flow of this project
- **XYZ Insurance Database Solution/**: This is a Visual Studio solution and supporting files for ingesting CSV data into SQL Server.  
- **sql/**: SQL scripts for table creation, view definitions, and indexing.  
- **360° Customer Dashboard.pbix**: Power BI report for the 360° dashboards.

## How to Use

1. **Generate Data**  
   - Run the Python scripts in `Data-Generation-Scripts/` to produce CSV files for Customers, Policies, Claims, and Communications.

2. **Ingest Data**  
   - Open the Visual Studio solution in `XYZ Insurance Database Solution/` and execute the pipeline to load the CSV files into the SQL Server database.

3. **Set Up SQL Views**  
   - Run the scripts in `sql/` to create the analytics-friendly views.

4. **Open Power BI Dashboards**  
   - Launch the `360° Customer Dashboard.pbix` file to explore the 360° dashboards.

