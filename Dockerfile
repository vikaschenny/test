FROM ubuntu:14.04
MAINTAINER chenny
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y
RUN apt-get install -y apache2 vim bash-completion unzip
RUN mkdir -p /var/lock/apache2 /var/run/apache2
RUN apt-get install -y mysql-client mysql-server
RUN apt-get install -y php5 php5-mysql php5-dev php5-gd php5-memcache php5-pspell php5-snmp snmp php5-xmlrpc libapache2-mod-php5 php5-cli
RUN apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor
RUN apt-get install -y openssh-server openssh-client passwd
RUN mkdir -p /var/run/sshd
RUN sed -ri 's/PermitRootLogin without-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN echo 'root:changeme' | chpasswd
RUN mkdir -p /root/.ssh && touch /root/.ssh/authorized_keys && chmod 700 /root/.ssh
ADD phpinfo.php /var/www/html/
EXPOSE 22 80 443
CMD ["supervisord", "-n"]
