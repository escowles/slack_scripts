#!/bin/sh

EMOJI=$1
shift
JSON_RAW="{\"status_emoji\":\":$EMOJI:\",\"status_text\":\"$@\"}"
JSON_ENC=`echo "$JSON_RAW" | urlencode`
slack.client.sh "users.profile.set?profile=$JSON_ENC"
