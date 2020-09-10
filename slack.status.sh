#!/bin/sh

EMOJI=$1
if [ "$EMOJI" ]; then
  if [ "$EMOJI" == "clear" ]; then
    JSON_RAW="{\"status_emoji\":null,\"status_text\":null}"
  else
    EMOJI=":$EMOJI:"
    shift
    JSON_RAW="{\"status_emoji\":\"$EMOJI\",\"status_text\":\"$@\"}"
  fi
  JSON_ENC=`echo "$JSON_RAW" | urlencode`
  URL="users.profile.set?profile=$JSON_ENC"
else
  URL="users.profile.get?"
fi
slack.client.sh "$URL" | jq ".profile | {"status": .status_text, "emoji": .status_emoji}"
