FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Copy the necessary files
COPY requirements.txt .
COPY feedback_rating_model.pkl .
COPY server.py .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "server.py"]
