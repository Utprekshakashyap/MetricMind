# MetricMind Database

## Overview

The MetricMind database layer contains the warehouse schema and seed data used by the analytics engine.

## Directory Structure

```text
database/
├── schema/
│   ├── 01_dim_region.sql
│   ├── 02_dim_product.sql
│   ├── 03_dim_customer.sql
│   ├── 04_dim_date.sql
│   └── 05_fact_sales.sql
│
└── seeds/
    └── seed_data.sql

Schema

The warehouse follows a star-schema-inspired design.

Dimension Tables
dim_region
dim_product
dim_customer
dim_date
Fact Table
fact_sales
Relationships
dim_region
     │
     ▼
fact_sales ◄── dim_product
     ▲
     │
dim_customer

dim_date
     │
     ▼
fact_sales

Core Business Metrics

The database supports metrics including:

Revenue
Orders
Units Sold
Cost
Profit
Profit Margin
Customers
Average Order Value
Design Principles
Use primary keys for entity identification.
Use foreign keys for relationships.
Maintain consistent data types.
Add constraints for data quality.
Add indexes for frequently queried columns.
Keep analytical definitions consistent with the MetricMind semantic layer.
Purpose

This database serves as the foundation for MetricMind's natural-language business intelligence system.

Users will eventually be able to ask questions such as:

What was our revenue last month?

Which products generated the highest profit?

Show revenue by region.

Compare European and Asian sales.

The MetricMind agent will translate these questions into controlled SQL using the semantic layer.