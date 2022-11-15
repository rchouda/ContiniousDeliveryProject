FROM nginx:alpine
WORKDIR /app

COPY ./dist/myapp /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx", "-g", "deamon off;"]
