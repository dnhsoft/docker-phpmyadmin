FROM dnhsoft/phpmyadmin-base:4.x

ENV PMA_VERSION "4.2.13.3"
RUN /install-pma.sh
