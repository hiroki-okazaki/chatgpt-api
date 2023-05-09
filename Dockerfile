FROM python:3.11.3-slim

RUN pip install --upgrade pip && \
    pip install --no-cache-dir pipenv

WORKDIR /app

COPY Pipfile* /app

RUN pipenv install --dev --system

# ローカル用
# CMD ["tail", "-f", "/dev/null"]

RUN useradd fastapi
USER fastapi

ENTRYPOINT ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]