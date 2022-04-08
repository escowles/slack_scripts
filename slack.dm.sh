#!/bin/sh

USER=$1
shift
TEXT=`echo $@ | urlencode`
slack.client.sh "chat.postMessage?channel=@$USER&text=$TEXT&as_user=true"
