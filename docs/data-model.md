# MetricMind Data Model

## Overview

MetricMind uses a star-schema-inspired data warehouse for business analytics.

The central fact table stores sales transactions, while dimension tables provide descriptive business context.

## Tables

### fact_sales

Central sales transaction table.

Columns:

- sales_id
- order_id
- date_id
- customer_id
- product_id
- region_id
- quantity
- unit_price
- discount
- revenue
- cost
- profit

### dim_customer

Customer information.

Columns:

- customer_id
- customer_name
- customer_segment
- country
- region_id
- signup_date

### dim_product

Product information.

Columns:

- product_id
- product_name
- category
- subcategory
- unit_cost
- unit_price

### dim_region

Geographic information.

Columns:

- region_id
- region_name
- country
- continent

### dim_date

Calendar information for analytics.

Columns:

- date_id
- full_date
- year
- quarter
- month
- month_name
- week
- day

## Core Metrics

### Revenue

SUM(fact_sales.revenue)

### Orders

COUNT(DISTINCT fact_sales.order_id)

### Units Sold

SUM(fact_sales.quantity)

### Cost

SUM(fact_sales.cost)

### Profit

SUM(fact_sales.profit)

### Profit Margin

Profit / Revenue

### Customers

COUNT(DISTINCT fact_sales.customer_id)

### Average Order Value

Revenue / Orders

## Relationships

fact_sales.customer_id → dim_customer.customer_id

fact_sales.product_id → dim_product.product_id

fact_sales.region_id → dim_region.region_id

fact_sales.date_id → dim_date.date_id

## Design Goal

The data model is designed to support natural-language business questions through the MetricMind semantic layer and AI agent.