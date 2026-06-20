FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade pip && 
pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080

ENV FLASK_APP=service
ENV FLASK_ENV=production

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "service:app"]
