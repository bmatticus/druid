FROM ubuntu:xenial

RUN apt update
RUN apt install -y curl libfindbin-libs-perl openjdk-8-jdk

RUN mkdir -p /opt/druid
WORKDIR /opt/druid
RUN curl -o apache-druid-0.13.0-incubating-bin.tar.gz https://www-eu.apache.org/dist/incubator/druid/0.13.0-incubating/apache-druid-0.13.0-incubating-bin.tar.gz
RUN tar zxvf apache-druid-0.13.0-incubating-bin.tar.gz
RUN rm apache-druid-0.13.0-incubating-bin.tar.gz
RUN mv apache-druid-0.13.0-incubating/* .
RUN rmdir apache-druid-0.13.0-incubating

RUN curl https://archive.apache.org/dist/zookeeper/zookeeper-3.4.11/zookeeper-3.4.11.tar.gz -o zookeeper-3.4.11.tar.gz
RUN tar -xzf zookeeper-3.4.11.tar.gz
RUN mv zookeeper-3.4.11 zk
RUN rm zookeeper-3.4.11.tar.gz

EXPOSE 8081-8090
EXPOSE 2181

CMD ["bin/supervise", "-c", "quickstart/tutorial/conf/tutorial-cluster.conf"]
