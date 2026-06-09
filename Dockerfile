# Use the official lightweight Nginx Alpine image
FROM nginx:alpine

# Copy the static web page to the default Nginx html serving directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Run Nginx in the foreground to keep the container active
CMD ["nginx", "-g", "daemon off;"]
