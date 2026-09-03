from sqlalchemy import Column, String

from backend.app.db.database import Base


class Region(Base):
    __tablename__ = "dim_region"

    region_id = Column(String(20), primary_key=True)
    region_name = Column(String(100), nullable=False)
    country = Column(String(100), nullable=False)
    continent = Column(String(100), nullable=False)