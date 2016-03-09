FROM dnhsoft/phpmyadmin-base:4.x

ENV PMA_VERSION "4.4.10"
RUN /install-pma.sh
