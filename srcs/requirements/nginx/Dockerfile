FROM alpine:3.18

ARG SSLCRT \
    SSLKEY

ENV SSLCRT=${SSLCRT} \
    SSLKEY=${SSLKEY}

RUN apk update && apk upgrade && apk add --no-cache nginx

EXPOSE 443

COPY requirements/nginx/tools/create_keys.sh .

RUN sh create_keys.sh && rm create_keys.sh

CMD ["nginx", "-g", "daemon off;"]
