FROM ghcr.io/browserless/chrome:latest

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir --break-system-packages -r requirements.txt

COPY main.py .

CMD ["python", "main.py"]
