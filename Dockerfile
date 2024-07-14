# Use the official Nginx image as the base image
FROM nginx:latest

# Copy the HTML file into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80