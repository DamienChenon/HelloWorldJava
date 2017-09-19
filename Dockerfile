FROM java:8
MAINTAINER Damien damien.chenon@orange.com

COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java

ENV FOO bar
ENV VERSION 1.2

RUN touch toto
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
