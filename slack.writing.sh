#!/bin/sh

if [ "$1" ]; then
  MSG=$1
else
  MSG="writing"
fi

slack.out.sh
slack.status.sh writing_hand $MSG
