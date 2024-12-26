# Using an official Python runtime as a parent image
FROM python:3.12-slim

# Create a working directory
WORKDIR /app

# Copy requirements.txt first to leverage Docker caching
COPY requirements.txt /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . /app

# Expose the port (Flask default)
EXPOSE 5000

# Run the Flask server
CMD ["python", "app.py"]
