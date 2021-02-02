FROM nginx:alpine
ENV ENDPOINT=""
COPY index.html . 
ENTRYPOINT [ "sh", "-c", "envsubst < index.html > /usr/share/nginx/html/index.html && nginx -g 'daemon off;'"]