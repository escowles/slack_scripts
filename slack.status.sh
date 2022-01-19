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
if [ "$EMOJI_NAME" = ":house_with_garden:" ]; then
  STATUS_EMOJI="🏡"
elif [ "$EMOJI_NAME" = ":burrito:" ]; then
  STATUS_EMOJI="🌯"
elif [ "$EMOJI_NAME" = ":hamburger:" ]; then
  STATUS_EMOJI="🍔"
elif [ "$EMOJI_NAME" = ":pancakes:" ]; then
  STATUS_EMOJI="🥞"
elif [ "$EMOJI_NAME" = ":pizza:" ]; then
  STATUS_EMOJI="🍕"
elif [ "$EMOJI_NAME" = ":sandwich:" ]; then
  STATUS_EMOJI="🥪"
elif [ "$EMOJI_NAME" = ":stew:" ]; then
  STATUS_EMOJI="🍲"
elif [ "$EMOJI_NAME" = ":taco:" ]; then
  STATUS_EMOJI="🌮"
elif [ "$EMOJI_NAME" = ":brb:" ]; then
  STATUS_EMOJI="😴"
elif [ "$EMOJI_NAME" = ":princeton:" ]; then
  STATUS_EMOJI="🛡"
elif [ "$EMOJI_NAME" = ":calendar:" ]; then
  STATUS_EMOJI="📅"
elif [ "$EMOJI_NAME" = ":face_with_thermometer:" ]; then
  STATUS_EMOJI="🤒"
elif [ "$EMOJI_NAME" = ":palm_tree:" ]; then
  STATUS_EMOJI="🌴"
else
  STATUS_EMOJI="❓"
fi

echo "$STATUS_EMOJI $STATUS_LABEL"
