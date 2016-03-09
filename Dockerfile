FROM dnhsoft/phpmyadmin-base:4.x

ENV PMA_VERSION "4.0.5"
RUN /install-pma.sh

