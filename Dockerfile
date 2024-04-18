# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Remove the default nginx index page
RUN rm /etc/nginx/conf.d/default.conf

# Optionally, add your own nginx.conf if you have specific configurations
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy the static content from the local path to the Nginx server directory
# Ensure that the path on the right-hand side of COPY is relative to the location of the Dockerfile
COPY . /usr/share/nginx/html

# Expose port 80 to be accessible from the outside
EXPOSE 80

# Start Nginx and make sure it stays in the foreground so that Docker container does not exit
CMD ["nginx", "-g", "daemon off;"]
