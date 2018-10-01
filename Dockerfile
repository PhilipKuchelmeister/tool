FROM debian:stretch

RUN apt-get update

RUN apt-get install -y apache2

RUN apt-get install -y wget

RUN apt-get install -y gnupg

RUN apt update
RUN apt upgrade

apt install ca-certificates apt-transport-https 

apt install ca-certificates apt-transport-https 
wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -
echo "deb https://packages.sury.org/php/ stretch main" | tee /etc/apt/sources.list.d/php.list

apt update

apt install php7.2

apt-get update

apt install php7.2-cli php7.2-common php7.2-curl php7.2-mbstring php7.2-mysql php7.2-xml

apt install php7.2-imap php7.2-gd php7.2-zip

apt-get update