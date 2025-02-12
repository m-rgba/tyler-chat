FROM python:3.12-slim

# Set working directory
WORKDIR /src

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    POETRY_VERSION=1.7.1

# Install system dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    git \
    libmagic1 \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements file
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY backend .
RUN chmod +x run.sh

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["./run.sh"]