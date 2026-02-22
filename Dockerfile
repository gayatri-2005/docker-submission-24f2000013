# Use a lightweight Python base image
FROM python:3.11-slim

# Set metadata for the assignment
LABEL maintainer="24f2000013@ds.study.iitm.ac.in"
LABEL student_id="24f2000013"

# Set the working directory
WORKDIR /app

# Create a simple script to verify the container is running
RUN echo "echo 'Container successfully running for student: 24f2000013'" > hello.sh
RUN chmod +x hello.sh

# Run the script when the container starts
CMD ["sh", "hello.sh"]
