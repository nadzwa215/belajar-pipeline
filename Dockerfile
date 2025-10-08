FROM nginx:alpine

# Copy semua file aplikasi kita
COPY index.html /usr/share/nginx/html/
COPY sarah-display.html /usr/share/nginx/html/  
COPY jules-display.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Custom nginx config untuk routing
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]