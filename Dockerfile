FROM nginx:1.27-alpine
RUN echo '<h1>Hello from AKS!</h1>' > /usr/share/nginx/html/index.html
RUN printf 'server {\n    listen 80;\n    root /usr/share/nginx/html;\n    index index.html;\n}\n' > /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]