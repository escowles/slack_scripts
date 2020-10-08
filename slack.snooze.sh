#!/bin/sh

MINUTES=$1
if [ ! "$MINUTES" ]; then
  MINUTES="60"
fi
URL="dnd.setSnooze?num_minutes=$MINUTES"
slack.client.sh "$URL" | jq .
