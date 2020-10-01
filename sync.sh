#!/bin/bash

# Sincronizando cluster redis
Secret_Redis=mudar@123

echo "Inserindo senha master"
# Inserindo senha master
docker exec redis01 redis-cli -a $Secret_Redis CONFIG SET masterauth $Secret_Redis
docker exec redis02 redis-cli -a $Secret_Redis CONFIG SET masterauth $Secret_Redis
docker exec redis03 redis-cli -a $Secret_Redis CONFIG SET masterauth $Secret_Redis
echo "inserindo senha padrão"
#inserindo senha padrão
docker exec redis01 redis-cli -a $Secret_Redis CONFIG SET requirepass $Secret_Redis
docker exec redis02 redis-cli -a $Secret_Redis CONFIG SET requirepass $Secret_Redis
docker exec redis03 redis-cli -a $Secret_Redis CONFIG SET requirepass $Secret_Redis
echo "habilitando escrita no slave"