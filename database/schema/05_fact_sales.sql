-- MetricMind
-- Fact Table: Sales
-- Purpose: Stores sales transactions and measurable business metrics

CREATE TABLE IF NOT EXISTS fact_sales (
    sales_id VARCHAR(20) PRIMARY KEY,
    order_id VARCHAR(20) NOT NULL,
    date_id INT NOT NULL,
    customer_id VARCHAR(20) NOT NULL,
    product_id VARCHAR(20) NOT NULL,
    region_id VARCHAR(20) NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(12, 2) NOT NULL,
    discount DECIMAL(12, 2) DEFAULT 0,
    revenue DECIMAL(14, 2) NOT NULL,
    cost DECIMAL(14, 2) NOT NULL,
    profit DECIMAL(14, 2) NOT NULL,

    CONSTRAINT fk_sales_date
        FOREIGN KEY (date_id)
        REFERENCES dim_date(date_id),

    CONSTRAINT fk_sales_customer
        FOREIGN KEY (customer_id)
        REFERENCES dim_customer(customer_id),

    CONSTRAINT fk_sales_product
        FOREIGN KEY (product_id)
        REFERENCES dim_product(product_id),

    CONSTRAINT fk_sales_region
        FOREIGN KEY (region_id)
        REFERENCES dim_region(region_id)
);