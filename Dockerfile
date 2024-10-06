# Use the official NGINX image from Docker Hub
FROM nginx:alpine

# Copy the HTML file to the NGINX html directory
COPY index.html /usr/share/nginx/html/index.html

COPY src /usr/share/nginx/html/src

# Expose port 80 to allow external access
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]

