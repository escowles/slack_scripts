#!/bin/sh

if [ "$1" ]; then
  MSG=$1
else
  MSG="back in a few"
fi

slack.out.sh
slack.status.sh brb $MSG
