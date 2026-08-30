-- MetricMind
-- Seed Data: Customer
-- Purpose: Inserts sample customer data for analytics

INSERT INTO dim_customer
    (customer_id, customer_name, customer_segment, region_id)
VALUES
    ('C001', 'Aarav Sharma', 'Consumer', 'R001'),
    ('C002', 'Priya Verma', 'Corporate', 'R002'),
    ('C003', 'Rohan Mehta', 'Consumer', 'R003'),
    ('C004', 'Ananya Gupta', 'Home Office', 'R004'),
    ('C005', 'James Wilson', 'Corporate', 'R005'),
    ('C006', 'Oliver Smith', 'Consumer', 'R006'),
    ('C007', 'Emma Martin', 'Corporate', 'R007'),
    ('C008', 'Michael Brown', 'Consumer', 'R008'),
    ('C009', 'Sophia Johnson', 'Home Office', 'R009'),
    ('C010', 'William Taylor', 'Corporate', 'R010');