FROM openjdk:11 AS BUILD_IMAGE

RUN apt update && apt install maven -y
RUN git clone https://github.com/SirineHassine/My-Resume.git
RUN cd My-Resume && git checkout main && mvn clean && mvn install

FROM tomcat:9-jre17


RUN rm -rf /usr/local/tomcat/webapps/*

COPY --from=BUILD_IMAGE My-Resume/target/MyResume.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
