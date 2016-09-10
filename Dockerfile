FROM dnhsoft/phpmyadmin-base:4.x-php7

ENV PMA_VERSION "4.6.4"
RUN /install-pma.sh
