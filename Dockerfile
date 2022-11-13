From nginx:1.17.1-alpine
COPY ./dist/my-app1 /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx", "-g", "deamon off;"]
