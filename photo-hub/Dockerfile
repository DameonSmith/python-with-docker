# Use an official Python runtime as a parent image
FROM python:3.6-slim

# Set the working directory to /app
RUN mkdir /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY requirements.txt requirements.txt

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Copy over rest of directory
COPY . .

# Make port 80 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV GUNICORN_WORKERS 2
ENV GUNICORN_BACKLOG 4096
ENV GUNICORN_BIND 0.0.0.0:8000

# Run app.py when the container launches
CMD ["gunicorn", "-c", "gunicorn.conf", "app:app"]
