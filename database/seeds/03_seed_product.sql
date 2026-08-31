-- MetricMind
-- Seed: Product
-- Purpose: Inserts sample product data for analytics

INSERT INTO dim_product
    (product_id, product_name, category, sub_category, unit_cost)
VALUES
    ('P001', 'Laptop Pro 15', 'Technology', 'Laptops', 850.00),
    ('P002', 'Wireless Mouse', 'Technology', 'Accessories', 20.00),
    ('P003', 'Mechanical Keyboard', 'Technology', 'Accessories', 55.00),
    ('P004', 'Office Chair', 'Furniture', 'Chairs', 120.00),
    ('P005', 'Standing Desk', 'Furniture', 'Desks', 250.00),
    ('P006', 'Notebook Pack', 'Office Supplies', 'Paper', 8.00),
    ('P007', 'Ballpoint Pens', 'Office Supplies', 'Writing', 5.00),
    ('P008', 'Monitor 27 Inch', 'Technology', 'Monitors', 220.00),
    ('P009', 'USB-C Hub', 'Technology', 'Accessories', 35.00),
    ('P010', 'Desk Lamp', 'Furniture', 'Lighting', 40.00);