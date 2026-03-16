FROM python:3.8-slim
RUN apt-get update && apt-get install -y unzip && rm -rf /var/lib/apt/lists/*
RUN pip install awscli ultralytics
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["python3", "app.py"]