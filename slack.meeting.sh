#!/bin/sh

MSG="$@"
if [ ! "$MSG" ]; then
  MSG="in a meeting"
fi
slack.status.sh calendar $MSG
slack.out.sh
