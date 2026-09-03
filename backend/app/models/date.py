from sqlalchemy import Column, Integer, Date, String

from backend.app.db.database import Base


class DateDimension(Base):
    __tablename__ = "dim_date"

    date_id = Column(Integer, primary_key=True)
    full_date = Column(Date, nullable=False)
    day_of_month = Column(Integer, nullable=False)
    day_of_week = Column(Integer, nullable=False)
    month_name = Column(String(20), nullable=False)
    month_number = Column(Integer, nullable=False)
    year = Column(Integer, nullable=False)
    week_of_year = Column(Integer, nullable=False)