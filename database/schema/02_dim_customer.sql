-- MetricMind
-- Dimension: Customer
-- Purpose: Stores customer information used for business analytics.

CREATE TABLE IF NOT EXISTS dim_customer (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(150) NOT NULL,
    customer_segment VARCHAR(100),
    region_id VARCHAR(20),

    CONSTRAINT fk_customer_region
        FOREIGN KEY (region_id)
        REFERENCES dim_region(region_id)
);