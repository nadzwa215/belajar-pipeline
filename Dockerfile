# Gunakan image nginx base
FROM nginx:alpine

# Copy file aplikasi kita ke folder nginx
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Pesan saat container running
CMD ["nginx", "-g", "daemon off;"]