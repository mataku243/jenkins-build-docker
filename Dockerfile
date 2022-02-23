FROM nginx:latest
RUN sed -i 's/nginx/risty/g' /usr/share/nginx/html/index.html
EXPOSE 80
