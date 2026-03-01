FROM nginx:stable-alpine
# Use official Nginx image as base (for serving static content)

# Copy our app files into the default Nginx document root (/usr/share/nginx/html)
COPY index.html /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/
COPY single.html /usr/share/nginx/html/
COPY images /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/
COPY images /usr/share/nginx/html/
COPY LICENSE.txt /usr/share/nginx/html/
COPY README.txt /usr/share/nginx/html/
# Expose port 80 for HTTP access (Nginx listens on port 80 by default)
EXPOSE 80
# Run command when container starts up (not needed here since Nginx runs automatically)
CMD ["nginx", "-g", "daemon off;"]