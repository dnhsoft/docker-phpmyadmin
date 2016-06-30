FROM dnhsoft/phpmyadmin-base:4.x

ENV PMA_VERSION "4.6.3"
RUN /install-pma.sh
