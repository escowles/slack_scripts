#!/bin/sh

MSG="$@"
if [ ! "$MSG" ]; then
  MSG="in a meeting"
fi
slack.out.sh
slack.status.sh calendar $MSG
