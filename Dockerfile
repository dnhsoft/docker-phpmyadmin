FROM dnhsoft/phpmyadmin-base:4.x

ENV PMA_VERSION "4.0.10.1"
RUN /install-pma.sh

