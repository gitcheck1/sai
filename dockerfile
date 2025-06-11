# Use the official nginx base image
FROM nginx:alpine

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default nginx static assets
RUN rm -rf ./*

# Copy your local project files to the container
COPY . .

# Expose port 80
EXPOSE 80

# Nginx will automatically serve the files from /usr/share/nginx/html
# No need to define CMD because it's already defined in the nginx base image
