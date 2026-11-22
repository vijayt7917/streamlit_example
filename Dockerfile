# Use an official lightweight Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Install Streamlit directly
RUN pip install --no-cache-dir streamlit

# Copy the rest of the application code
COPY . .

# Expose Streamlit's default port
EXPOSE 8080

# Configure Streamlit to run on port 8080 and listen on all interfaces
CMD ["streamlit", "run", "app.py", "--server.port=8080", "--server.address=0.0.0.0"]
