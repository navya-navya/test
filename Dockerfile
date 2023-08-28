# Use the official Nginx image as the base image
FROM nginx

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/

# Copy the built WAR file into the Nginx HTML directory
COPY target/*.war /usr/share/nginx/html/

# Expose port 90 as defined in your nginx.conf
EXPOSE 90

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
