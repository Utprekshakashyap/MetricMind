-- MetricMind
-- Dimension: Date
-- Purpose: Stores calendar information used for time-based business analytics

CREATE TABLE IF NOT EXISTS dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE NOT NULL,
    day INT NOT NULL,
    month INT NOT NULL,
    month_name VARCHAR(20) NOT NULL,
    quarter INT NOT NULL,
    year INT NOT NULL,
    week_of_year INT NOT NULL
);