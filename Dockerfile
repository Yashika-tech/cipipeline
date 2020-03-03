#Apache Implementation as webserver
ARG version="18.04"
FROM ubuntu:$version
RUN echo "versoin is "$version
ARG ENCRYPTION_KEY="995"
LABEL MAINTAINER dj@webapps.com
RUN mkdir /code
COPY Sample.sh /code/Sample.sh
#RUN apt-get -y update && apt-get -y install apache2 curl
#RUN apt-get -y install apache2 curl
#COPY boot.sh /boot.sh
RUN chmod +x /code/Sample.sh
RUN echo "encryotion key is "$ENCRYPTION_KEY
ENTRYPOINT ["sh","/code/Sample.sh"]
CMD ["/etc/hosts"]
