FROM python:3.11.3-slim

RUN pip install --upgrade pip && \
    pip install --no-cache-dir pipenv

WORKDIR /app

COPY Pipfile* /app

RUN pipenv install --dev --system

CMD ["tail", "-f", "/dev/null"]
