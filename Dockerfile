# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the static content from your project folder to the Nginx web server directory
COPY . /usr/share/nginx/html

# Expose port 80 to be accessible from the outside
EXPOSE 80

# Start Nginx and make sure it stays in the foreground so that Docker container does not exit
CMD ["nginx", "-g", "daemon off;"]
