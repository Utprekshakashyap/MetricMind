-- MetricMind
-- Seed Data: Region
-- Purpose: Inserts sample geographic data for analytics

INSERT INTO dim_region
    (region_id, region_name, country, continent)
VALUES
    ('R001', 'North India', 'India', 'Asia'),
    ('R002', 'South India', 'India', 'Asia'),
    ('R003', 'West India', 'India', 'Asia'),
    ('R004', 'East India', 'India', 'Asia'),
    ('R005', 'United Kingdom', 'United Kingdom', 'Europe'),
    ('R006', 'Germany', 'Germany', 'Europe'),
    ('R007', 'France', 'France', 'Europe'),
    ('R008', 'United States', 'United States', 'North America'),
    ('R009', 'Canada', 'Canada', 'North America'),
    ('R010', 'Australia', 'Australia', 'Oceania');