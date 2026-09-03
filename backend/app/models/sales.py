from sqlalchemy import Column, String, Integer, Numeric, ForeignKey

from backend.app.db.database import Base


class Sales(Base):
    __tablename__ = "fact_sales"

    sales_id = Column(String(20), primary_key=True)
    order_id = Column(String(20), nullable=False)

    date_id = Column(
        Integer,
        ForeignKey("dim_date.date_id"),
        nullable=False
    )

    customer_id = Column(
        String(20),
        ForeignKey("dim_customer.customer_id"),
        nullable=False
    )

    product_id = Column(
        String(20),
        ForeignKey("dim_product.product_id"),
        nullable=False
    )

    region_id = Column(
        String(20),
        ForeignKey("dim_region.region_id"),
        nullable=False
    )

    quantity = Column(Integer, nullable=False)

    unit_price = Column(Numeric(12, 2), nullable=False)

    discount = Column(Numeric(12, 2), default=0)

    revenue = Column(Numeric(14, 2), nullable=False)

    cost = Column(Numeric(14, 2), nullable=False)

    profit = Column(Numeric(14, 2), nullable=False)