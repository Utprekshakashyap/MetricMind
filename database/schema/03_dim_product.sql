-- MetricMind
-- Dimension: Product
-- Purpose: Stores product information used for business analytics.

CREATE TABLE IF NOT EXISTS dim_product (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(100),
    sub_category VARCHAR(100),
    unit_cost DECIMAL(12, 2)
);