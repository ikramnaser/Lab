# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements.txt file into the container at /app
COPY requirements.txt /app

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code from the local directory into the container at /app
COPY . /app

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]
