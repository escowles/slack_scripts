#!/bin/sh

if [ "$1" ]; then
  EMOJI=$1
else
  EMOJI=pizza
fi

slackstat.sh $EMOJI lunch
slackout.sh
