FROM java:7

#COPY HelloWorld.java /
COPY src /home/root/javahelloworld/src

#RUN javac HelloWorld.java
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java

RUN apt-get update && apt-get install -y vim
#RUN apt-get update
#RUN apt-get install -y vim

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]


