FROM ubuntu:latest

RUN apt update
RUN apt -y install software-properties-common curl apt-transport-https ca-certificates gnupg
RUN add-apt-repository ppa:ondrej/php
RUN apt update
RUN apt -y install nginx
RUN apt -y install php8.0
RUN apt -y install php8.0-fpm
RUN apt -y install php8.0-common php8.0-mysql php8.0-xml php8.0-curl php8.0-gd php8.0-imagick php8.0-cli php8.0-dev php8.0-imap php8.0-mbstring php8.0-opcache php8.0-soap php8.0-zip

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
