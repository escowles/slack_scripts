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
STATUS=`slack.client.sh "$URL"`
if [ "$EMOJI" == "clear" ]; then
  exit
fi

STATUS_LABEL=`echo "$STATUS" | jq -r .profile.status_text`
EMOJI_NAME=`echo "$STATUS" | jq -r .profile.status_emoji`
STATUS_EMOJI=$(label.to.emoji.sh "$EMOJI_NAME")
echo "$STATUS_EMOJI $STATUS_LABEL"
