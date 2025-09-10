# Use a lightweight Python image
FROM python:3.13-slim

# Set the working directory
WORKDIR /app

# Copy the dependency file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Run the app
CMD ["python", "app.py"]

# Expose Flask’s default port
EXPOSE 5000
