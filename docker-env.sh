#!/usr/bin/env bash

dockerstart() {
  BOOT2DOCKER=$(which boot2docker)
  DOCKER_START_LOG="/tmp/dockerstart.log"
  rm -f $DOCKER_START_LOG
  $BOOT2DOCKER start 2>&1> $DOCKER_START_LOG

  if [ "x$DOCKER_HOST" == "x" ]; then
    _DOCKER_HOST=$(cat $DOCKER_START_LOG | grep "DOCKER_HOST" | awk -F = '{print $2}')
    export DOCKER_HOST="${_DOCKER_HOST}"
  fi

  export docker="docker -H $DOCKER_HOST"
}
