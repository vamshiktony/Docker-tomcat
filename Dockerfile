FROM ubuntu
RUN apt-get update -y
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN apt install curl -y
RUN curl -O https://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.99/bin/apache-tomcat-7.0.99.tar.gz
RUN tar xvfz apache-tomcat-7.0.99.tar.gz
RUN apt install default-jdk -y
RUN java -version
WORKDIR /opt/tomcat/webapps
RUN apt install wget -y
RUN wget https://vamshich.s3-us-west-1.amazonaws.com/works-with-heroku-1.0.war
EXPOSE 8080

