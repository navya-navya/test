# Use the base image with nginx
FROM nginx:latest

# Remove default nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your nginx configuration to the container
COPY nginx.conf /etc/nginx/conf.d/

# Copy your Maven project's target directory to the container
#COPY target/ /usr/share/nginx/html
# Copy the index.html file from Docker context to the Nginx HTML directory
COPY index.html /usr/share/nginx/html

# Expose the desired port
EXPOSE 9000

# CMD instruction to start nginx as the main process
CMD ["nginx", "-g", "daemon off;"]
