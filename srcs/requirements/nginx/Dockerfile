FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx openssl

ARG SSIGNEDCRT
ENV SSIGNEDCRT=$SSIGNEDCRT

ARG SSIGNEDKEY
ENV SSIGNEDKEY=$SSIGNEDKEY

COPY ./conf/nginx.conf /etc/nginx/
COPY ./tools/genSSL.sh  /

RUN chmod +x /genSSL.sh
RUN ./genSSL.sh

ENTRYPOINT ["nginx", "-g", "daemon off;"]
