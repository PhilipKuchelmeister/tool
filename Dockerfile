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

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE / var/run/apache2.pid

RUN echo "ServerName localhost" >> /etc/apache2/httpd.conf
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

EXPOSE 80

COPY www /var/www/site

COPY apache-config.conf /etc/apache2/sites-enabled/000-default.conf

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]