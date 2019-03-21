FROM nginx
LABEL maintainer Govind_Kulkarni(kulkarnigovind9@gmail.com)
RUN mkdir /app
WORKDIR /app
COPY dist/beerbank/. /app
COPY nginx.conf /etc/nginx/nginx.conf
RUN cat /etc/nginx/nginx.conf
RUN echo ***originalFile****
RUN cat nginx.conf