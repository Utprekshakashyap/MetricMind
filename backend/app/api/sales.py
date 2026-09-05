from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session

from backend.app.db.database import get_db
from backend.app.models.sales import Sales
from backend.app.schemas.sales import SalesResponse

router = APIRouter(
    prefix="/api/sales",
    tags=["Sales"],
)


@router.get("/", response_model=list[SalesResponse])
def get_sales(
    region_id: str | None = None,
    customer_id: str | None = None,
    product_id: str | None = None,
    db: Session = Depends(get_db)
):
    query = db.query(Sales)

    if region_id:
        query = query.filter(Sales.region_id == region_id)

    if customer_id:
        query = query.filter(Sales.customer_id == customer_id)

    if product_id:
        query = query.filter(Sales.product_id == product_id)

    return query.all()