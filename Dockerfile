FROM dnhsoft/phpmyadmin-base:4.x

ENV PMA_VERSION "4.1.6"
RUN /install-pma.sh
