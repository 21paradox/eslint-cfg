#!/bin/bash

PROG_NAME=$0
ACTION=$1
PARAM=$2

fmt()
{
  echo $PROG_NAME
  DIR=$(dirname $PROG_NAME)
  $DIR/node_modules/.bin/prettier-eslint $PARAM \
        --eslint-path=$DIR/node_modules/eslint \
        --eslint-config-path=$DIR/.eslintrc \
        --print-width=120 \
        --write
}

case "$ACTION" in
  fmt)
    fmt
  ;;
  status)
    status
  ;;
  *)
    usage
  ;;
esac