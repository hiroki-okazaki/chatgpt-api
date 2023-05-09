import os

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def index():
    print("called index")
    print(f"env: {os.environ.get('APP_ENV')}")
    return {"message": "Hello World"}


@app.get("/health")
def health_check():
    print("called health check")
    return {"message": "OK"}
