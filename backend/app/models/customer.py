from sqlalchemy import Column, String

from backend.app.db.database import Base


class Customer(Base):
    __tablename__ = "dim_customer"

    customer_id = Column(String(20), primary_key=True)
    customer_name = Column(String(100), nullable=False)
    segment = Column(String(50), nullable=False)
    region_id = Column(String(20), nullable=False)