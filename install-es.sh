#!/bin/bash

ELASTICSEARCH_VERSION=1.7.6

### Download and install the Public Signing Key
wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-${ELASTICSEARCH_VERSION}.deb

### Install Elasticsearch
sudo dpkg -i elasticsearch-${ELASTICSEARCH_VERSION}.deb

### Use the following commands to ensure, that elasticsearch starts when the system is booted and then start up elasticsearch
sudo update-rc.d elasticsearch defaults 95 10 
sudo service elasticsearch start

### Lets wait a little while ElasticSearch starts
sleep 20

### Make sure service is running
curl http://localhost:9200