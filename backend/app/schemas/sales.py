from decimal import Decimal

from pydantic import BaseModel, ConfigDict


class SalesResponse(BaseModel):
    model_config = ConfigDict(from_attributes=True)

    sales_id: str
    order_id: str
    date_id: int
    customer_id: str
    product_id: str
    region_id: str
    quantity: int
    unit_price: Decimal
    discount: Decimal
    revenue: Decimal
    cost: Decimal
    profit: Decimal