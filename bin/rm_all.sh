#!/bin/bash

docker ps -a
containers=$(docker ps -a -q)

if [[ ! -z $containers ]]; then
  docker stop $containers > /dev/null && echo "All containers stopped!"
  docker rm $containers > /dev/null && echo "All containers deleted!"
else
  echo "No containers!"
fi
