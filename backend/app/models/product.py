from sqlalchemy import Column, String, Numeric

from backend.app.db.database import Base


class Product(Base):
    __tablename__ = "dim_product"

    product_id = Column(String(20), primary_key=True)
    product_name = Column(String(100), nullable=False)
    category = Column(String(100), nullable=False)
    subcategory = Column(String(100), nullable=False)
    unit_price = Column(Numeric(12, 2), nullable=False)