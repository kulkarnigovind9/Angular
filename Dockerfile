FROM nginx
LABEL maintainer Govind_Kulkarni(kulkarnigovind9@gmail.com)
RUN mkdir /app
WORKDIR /app
COPY dist/beerbank/. /app
ADD nginx.conf /etc/nginx/nginx.conf
RUN echo ***NGINX-CONFIG****
RUN cat /etc/nginx/nginx.conf
