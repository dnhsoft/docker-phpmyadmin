FROM dnhsoft/phpmyadmin-base:4.x

ENV PMA_VERSION "4.0.6"
RUN /install-pma.sh

