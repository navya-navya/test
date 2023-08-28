# Use the base image with nginx
FROM nginx:latest

# Install git in the container
RUN apt-get update && apt-get install -y git

# Clone the repository and copy the nginx.conf file
RUN git clone https://github.com/yourusername/your-repo.git /tmp/repo
RUN cp /tmp/repo/test/nginx.conf /etc/nginx/nginx.conf

# Copy your index.html to the container
COPY index.html /usr/share/nginx/html

# Expose the desired port
EXPOSE 9000

# CMD instruction to start nginx as the main process
CMD ["nginx", "-g", "daemon off;"]

