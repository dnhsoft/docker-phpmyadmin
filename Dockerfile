FROM dnhsoft/phpmyadmin-base:4.x

ENV PMA_VERSION "4.3.9"
RUN /install-pma.sh
