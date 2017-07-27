#!/bin/sh

# get tokens at https://api.slack.com/web
curl -s "https://slack.com/api/$1&token=$SLACK_API_TOKEN" | jq .
