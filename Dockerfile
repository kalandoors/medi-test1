# Dockerfile
FROM nginx:1.27-alpine

# Copy your static site into the default web root
# Put your files in ./html (index.html, assets, etc.)
COPY html/ /usr/share/nginx/html/

# (Optional) Replace the default nginx config with your own
# Uncomment the next line if you provide nginx.conf
# COPY nginx.conf /etc/nginx/nginx.conf

# Health check to ensure the server is responding
HEALTHCHECK --interval=30s --timeout=5s --retries=3 CMD \
  wget -qO- http://localhost/ || exit 1

# Expose HTTP
EXPOSE 80

# Default command provided by the base image:
# CMD ["nginx", "-g", "daemon off;"]
