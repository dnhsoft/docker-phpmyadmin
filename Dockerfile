FROM dnhsoft/phpmyadmin-base:4.x

ENV PMA_VERSION "4.2.8.1"
RUN /install-pma.sh
