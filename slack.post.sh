#!/bin/sh

CHAN=$1
shift
TEXT=`echo $@ | urlencode`
slack.client.sh "chat.postMessage?channel=%23$CHAN&text=$TEXT&as_user=true"
