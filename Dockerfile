FROM alpine:latest
RUN apk add --update nginx && rm -rf  /var/cache/apk/*
RUN apk add openrc --no-cache
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY app /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g" ,"daemon off;"]
