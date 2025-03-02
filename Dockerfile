# Use Nginx as the base image
FROM nginx:latest

# Remove default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your index.html to Nginx's serving directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 for HTTP
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

