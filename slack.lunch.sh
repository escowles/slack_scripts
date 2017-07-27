#!/bin/sh

EMOJI=pizza
if [ "$1" ]; then
  EMOJI=$1
fi

slackstat.sh $EMOJI lunch
slackout.sh
