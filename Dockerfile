# 1. Use the official Nginx image as a lightweight web server
FROM nginx:alpine

# 2. Remove the default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# 3. Copy your index.html (and any other static assets) into the nginx html directory
#    Assumes index.html is in the same folder as this Dockerfile.
COPY index.html /usr/share/nginx/html/
# If you have other assets, e.g.:
# COPY assets/ /usr/share/nginx/html/assets/

# 4. Expose port 80 (change if you need a different port)
EXPOSE 80

# 5. Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]