FROM debian:stretch

RUN apt-get update

RUN apt-get install -y apache2

RUN apt-get install -y wget

RUN apt-get install -y gnupg

RUN apt update
RUN apt upgrade

RUN apt install -y ca-certificates apt-transport-https 

RUN wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -
RUN echo "deb https://packages.sury.org/php/ stretch main" | tee /etc/apt/sources.list.d/php.list

RUN apt update

RUN apt install -y php7.2

RUN apt-get update

RUN apt install -y php7.2-cli php7.2-common php7.2-curl php7.2-mbstring php7.2-mysql php7.2-xml

RUN apt install -y php7.2-imap php7.2-gd php7.2-zip

RUN apt-get update