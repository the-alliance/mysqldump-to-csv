# Use the official Python image as the base image
FROM python:3.10.1

# Set the working directory inside the container
WORKDIR /app

# Copy the rest of the application files
COPY ./app.py .

# Install dependencies
RUN pip install --no-cache-dir flask

# Expose the port on which Flask will run
EXPOSE 9000

# Set the Flask environment variable
ENV FLASK_ENV=development

# Command to run the Flask development server
CMD ["flask", "run", "--host=0.0.0.0"]
