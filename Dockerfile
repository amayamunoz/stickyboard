FROM ubuntu:14.04
RUN apt-get update && apt-get install -y nginx
ADD views/home.ejs /usr/share/nginx/ejs/home.ejs
EXPOSE 80
CMD ["nginx", "-g", "daemon off;”]
