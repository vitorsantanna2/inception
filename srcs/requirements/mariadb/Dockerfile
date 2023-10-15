FROM debian:bullseye

RUN apt-get update

#RUN curl -LsS https://r.mariadb.com/downloads/mariadb_repo_setup | bash

RUN apt-get install -y mariadb-server

RUN mariadb-install-db --user=mysql --basedir=/usr --datadir=/database

COPY ./tools/setup.sh /
RUN chmod +x /setup.sh

CMD /setup.sh
