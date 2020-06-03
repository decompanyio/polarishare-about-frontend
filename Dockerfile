FROM nginx:1.18.0
MAINTAINER jay <jay@polarishare.com>

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./application /usr/share/nginx/html
WORKDIR /etc/nginx

CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80