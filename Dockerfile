FROM --platform=linux/amd64 postgis/postgis:15-3.3

RUN apt-get update && apt-get install -y \
    nginx \
    && rm -rf /var/lib/apt/lists/*

COPY app/ /usr/share/nginx/html/

EXPOSE 5432 80
