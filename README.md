# Overview

Simple Druid docker image based on the tutorial cluster. Launches a small, single instance, Druid cluster allowing you to ingest and test the platform.

## Components

- Druid 0.17.0

## Ports

- Zookeeper 2181
- Druid 8081-8090

## Building

```docker build -t druid-test-cluster:0.17.0 .```

## Running

```docker run --name druid-test -d -p 2181 -p 8081-8090:8081-8090 druid-test-cluster:0.17.0```

