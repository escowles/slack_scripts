#!/bin/sh

MSG="$1"
if [ ! "$MSG" ]; then
  MSG="taking a break"
fi
slack.status.sh brb $MSG
slack.out.sh
