FROM dnhsoft/phpmyadmin-base:4.x

# make it compatible with dnhsoft/mysql-utf8:5.7
ENV DBUSER root

ENV PMA_VERSION "4.6.3"
RUN /install-pma.sh
