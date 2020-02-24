FROM ubuntu:xenial

RUN apt update
RUN apt install -y curl libfindbin-libs-perl openjdk-8-jdk

# We have java but it complains
ENV DRUID_SKIP_JAVA_CHECK=1

RUN mkdir -p /opt/druid
WORKDIR /opt/druid
RUN curl -o apache-druid-0.17.0-bin.tar.gz http://apache.cs.utah.edu/druid/0.17.0/apache-druid-0.17.0-bin.tar.gz
RUN tar zxvf apache-druid-0.17.0-bin.tar.gz
RUN rm apache-druid-0.17.0-bin.tar.gz
RUN mv apache-druid-0.17.0/* .
RUN rmdir apache-druid-0.17.0

EXPOSE 8081-8090
EXPOSE 2181

CMD ["bin/start-micro-quickstart"]
