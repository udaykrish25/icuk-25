FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD target/oms-zuul-service-0.0.1-SNAPSHOT.jar oms-zuul.jar
RUN sh -c 'touch /oms-zuul.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/oms-zuul.jar"]
EXPOSE 8082
