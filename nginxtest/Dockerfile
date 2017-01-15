FROM ubuntu:14.04
MAINTAINER chenny
ENV WEB_DOCUMENT_ROOT /application/code/
ENV WEB_DOCUMENT_INDEX index.php
ENV WEB_ALIAS_DOMAIN *.vm
RUN apt-get update
RUN apt-get install nginx -y
EXPOSE 80 
EXPOSE 443 
CMD ["supervisord"]
