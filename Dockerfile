# Use an Nginx base image
FROM nginx:alpine

# Copy static files into the default Nginx web root directory
COPY build /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
