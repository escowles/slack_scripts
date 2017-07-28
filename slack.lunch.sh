#!/bin/sh

if [ "$1" ]; then
  EMOJI=$1
else
  EMOJI=pizza
fi

slack.status.sh $EMOJI lunch
slack.out.sh
