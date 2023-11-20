# Stage 1: Build Flask App
FROM python:3.9 AS builder

WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Stage 2: Create a lightweight container
FROM python:3.9-slim

WORKDIR /app

# Copy only necessary files from the builder stage
COPY --from=builder /app .

# Install Flask (or you can copy a virtualenv from builder stage)
RUN pip install --no-cache-dir Flask

# Expose the port
EXPOSE 5000

# Run the Flask application
CMD ["python", "app.py"]

# Install Gunicorn
RUN pip install --no-cache-dir gunicorn

# Expose the port your app runs on
EXPOSE 5000

# Command to run the application using Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]