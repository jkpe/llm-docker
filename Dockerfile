# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install pip
RUN apt-get update && apt-get install -y python3-pip

# Install openllm
RUN pip install openllm

# Run the command to start openllm
CMD ["openllm", "start", "/opt/integrations/Meta-Llama-3-8B", "--trust-remote-code"]
