# Overview

Simple Druid docker image based on the tutorial cluster. Launches a small, single instance, Druid cluster allowing you to ingest and test the platform.

## Version

Currently based on Druid 0.13 incubating. 

## Components

- Druid 0.13
- Zookeeper 4.3.11

## Ports

- Zookeeper 2181
- Druid 8081-8090

## Building

```docker build -t docker-test-cluster .```

## Running

```docker run -d -p 8081-8090:8081-8090 druid-test-cluster```

