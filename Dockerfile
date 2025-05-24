# Use the official Python image.
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy files
COPY requirements.txt requirements.txt
COPY app.py app.py

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port
EXPOSE 8080

# Run the app
CMD ["python", "app.py"]
