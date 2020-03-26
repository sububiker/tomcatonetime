FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y wget
RUN mkdir -p /usr/local/tomcat
RUN cd /tmp
RUN wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.33/bin/apache-tomcat-9.0.33.tar.gz -O /tmp/apache-tomcat-9.0.33.tar.gz
RUN pwd
RUN chmod 777 /tmp/apache-tomcat-9.0.33.tar.gz
RUN cd /tmp 
RUN cd /usr/local/tomcat 
RUN tar xzvf /tmp/apache-tomcat-9.0.33.tar.gz
#RUN sudo cp -r /tmp/apache-tomcat-9.0.33 /usr/local/tomcat/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
