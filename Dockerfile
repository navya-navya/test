# Use the base image with nginx
FROM nginx:latest

# Copy your nginx configuration to the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your index.html to the container
COPY index.html /usr/share/nginx/html

# Expose the desired port
EXPOSE 9000

