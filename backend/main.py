from fastapi import FastAPI

app = FastAPI(
    title="MetricMind API",
    description="Backend API for MetricMind analytics platform",
    version="1.0.0",
)


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