FROM ubuntu 

RUN apt update 

RUN apt install -y apache2 

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN service apache2 restart

RUN apt install -y apache2-utils 

RUN apt clean 

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]