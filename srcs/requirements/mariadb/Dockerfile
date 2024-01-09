FROM debian:bullseye

ARG DB_NAME \
    DB_USER \
    DB_PASS

ENV DB_NAME=$DB_NAME
ENV DB_USER=$DB_USER
ENV DB_PASS=$DB_PASS

RUN apt update && apt install -y mariadb-server

RUN mariadb-install-db --user=mysql --basedir=/usr --datadir=/database

COPY conf/mariadb.conf /etc/mysql/mariadb/conf.d/50-server.cnf
COPY ./tools/create-db.sh /bin/

CMD ["sh", "/bin/create-db.sh"]
