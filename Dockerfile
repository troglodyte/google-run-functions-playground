FROM python:3.11-slim

# Install dependencies
WORKDIR /srv
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your function code
COPY . .

# Cloud Functions expect PORT env var
ENV PORT=8080

# Default command (can be overridden by docker-compose)
CMD ["functions-framework", "--target=hello", "--port=8080"]
