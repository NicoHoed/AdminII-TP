#!/bin/bash

set -e

default_version="22"
version=${1:-"$default_version"}

# Build et tag des images
docker build -t chali12/woody_api_misc:"$version" api_misc
docker tag chali12/woody_api_misc:"$version" chali12/woody_api_misc:latest

docker build -t chali12/woody_api_orders:"$version" api_orders
docker tag chali12/woody_api_orders:"$version" chali12/woody_api_orders:latest

docker build -t chali12/woody_api_products:"$version" api_products
docker tag chali12/woody_api_products:"$version" chali12/woody_api_products:latest



docker build -t chali12/woody_rp:"$version" reverse-proxy
docker tag chali12/woody_rp:"$version" chali12/woody_rp:latest

docker build -t chali12/woody_database:"$version" database
docker tag chali12/woody_database:"$version" chali12/woody_database:latest

docker build -t chali12/woody_front:"$version" front
docker tag chali12/woody_front:"$version" chali12/woody_front:latest

# Push des images
docker push chali12/woody_api_products:"$version"
docker push chali12/woody_api_products:latest

docker push chali12/woody_api_orders:"$version"
docker push chali12/woody_api_orders:latest

docker push chali12/woody_api_misc:"$version"
docker push chali12/woody_api_misc:latest

docker push chali12/woody_rp:"$version"
docker push chali12/woody_rp:latest

docker push chali12/woody_front:"$version"
docker push chali12/woody_front:latest

docker push chali12/woody_database:"$version"
docker push chali12/woody_database:latest
