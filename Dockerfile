FROM ubuntu
MAINTAINER eazytraining (eazytrainingfr@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive  apt-get install -y nginx git
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/eazytrainingfr/static-website-example.git var/www/html/ 
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]
