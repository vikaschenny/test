FROM ubuntu:14.04
MAINTAINER chenny
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y mysql-server
VOLUME ["/var/lib/mysql"]
CMD ["/usr/local/bin/run"]
