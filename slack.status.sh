#!/bin/sh

EMOJI=$1
if [ "$EMOJI" ]; then
  EMOJI=":$EMOJI:"
fi
shift
JSON_RAW="{\"status_emoji\":\"$EMOJI\",\"status_text\":\"$@\"}"
JSON_ENC=`echo "$JSON_RAW" | urlencode`
slack.client.sh "users.profile.set?profile=$JSON_ENC"
