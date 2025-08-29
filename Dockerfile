# Use official lightweight Nginx image
FROM nginx:alpine

# Copy your website files into Nginx’s default web directory
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground (default CMD from base image)
CMD ["nginx", "-g", "daemon off;"]

