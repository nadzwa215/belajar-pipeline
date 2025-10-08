FROM nginx:alpine

# Copy semua file HTML dan CSS
COPY index.html /usr/share/nginx/html/
COPY sarah-display.html /usr/share/nginx/html/
COPY jules-display.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]