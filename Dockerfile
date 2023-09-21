# Use the official Ubuntu image as the base image 

FROM ubuntu:latest 

 

# Set the working directory to /app 

WORKDIR /app 

 

# Copy the shell script to the /app directory 

COPY script.sh /app 

 

# Make the shell script executable 

RUN chmod +x script.sh 

 

# Run the shell script when the container starts 

CMD ["./script.sh"] 
