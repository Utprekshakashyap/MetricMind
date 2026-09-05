from fastapi import FastAPI

from backend.app.api.sales import router as sales_router

app = FastAPI(
    title="MetricMind API",
    description="Backend API for MetricMind analytics platform",
    version="1.0.0",
)

app.include_router(sales_router)


@app.get("/")
def root():
    return {
        "message": "MetricMind API is running",
        "status": "success",
    }


@app.get("/health")
def health_check():
    return {
        "status": "healthy",
    }