# Use the official Python 3 image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy only requirements first for better caching
COPY src_new/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the application code
COPY src_new/ .

# Expose port
EXPOSE 5000

# Default command
CMD ["python", "app.py"]
