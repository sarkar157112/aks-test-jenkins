# Use the official Nginx image as a base
FROM nginx:1.21.1

# Define a variable for good practice and easy configuration
ENV NGINX_HOST localhost

# Copy over the Nginx configuration file
COPY default.conf /etc/nginx/conf.d/default.conf

# Remove the default Nginx index.html file
RUN rm /usr/share/nginx/html/index.html

# Copy over static web files
COPY static-html-directory /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Define the default command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
