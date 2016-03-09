FROM dnhsoft/phpmyadmin-base:4.x

ENV PMA_VERSION "4.3.10"
RUN /install-pma.sh
