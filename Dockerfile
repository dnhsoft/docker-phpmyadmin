FROM dnhsoft/phpmyadmin-base:4.x

ENV PMA_VERSION "4.6.0-rc2"
RUN /install-pma.sh
