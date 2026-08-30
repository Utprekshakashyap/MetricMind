-- MetricMind
-- Dimension: Region
-- Purpose: Stores geographic information used for business analytics.

CREATE TABLE IF NOT EXISTS dim_region (
    region_id VARCHAR(20) PRIMARY KEY,
    region_name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    continent VARCHAR(100) NOT NULL
);