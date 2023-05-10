FROM python:3.11.3-slim

RUN pip install --upgrade pip && \
    pip install --no-cache-dir pipenv

WORKDIR /app

COPY Pipfile* /app
COPY main.py /app

RUN pipenv install --dev --system

RUN useradd fastapi
RUN chown -R fastapi:fastapi /app
USER fastapi

EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]