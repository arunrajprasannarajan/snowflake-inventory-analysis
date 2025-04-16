# Snowflake Inventory Analysis

This project showcases a mini data analytics workflow using Snowflake to explore and analyse a fictional retail inventory dataset. It demonstrates how SQL and Snowflake's built-in features can be used to extract insights, prepare time series data, and visualise inventory trends over time.

## Project Objectives

- Load a structured CSV dataset into Snowflake
- Write SQL queries to explore product, region, and category-level inventory trends
- Prepare aggregated data for time series analysis
- Create a visual chart inside Snowflake to display inventory patterns
- Apply basic data cleaning to handle incomplete or skewed data

## Tools Used

- Snowflake (data warehouse and SQL engine)
- SQL (queries, aggregation, trend analysis)
- Snowflake chart builder (time series visualisation)

## Key Insights

- Identified top 5 products with highest inventory
- Analysed regional and category-wise inventory distribution
- Generated a clean monthly inventory trend chart using aggregated data
- Excluded partial month data to maintain visual integrity

## Project Files

- `inventory_analysis.sql` – All SQL queries used in this project (commented and structured)
- `inventory_over_time.png` – Screenshot of the final time series chart from Snowflake

## How to Reproduce

1. Sign up for a free Snowflake trial
2. Create a database, schema, and warehouse
3. Upload the retail inventory CSV file into a new table
4. Run the queries from `inventory_analysis.sql` in a Snowflake worksheet
5. Use the Chart tab to visualise the inventory trend
