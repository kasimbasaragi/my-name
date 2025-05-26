# Use the official Python base image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Copy app files into container
COPY . /app

# Install dependencies
RUN pip install --upgrade pip \
    && pip install flask

# Expose the port Flask runs on
EXPOSE 5000

# Run the application
CMD ["python", "my_name.py"]
