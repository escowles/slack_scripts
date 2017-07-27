#!/bin/sh

slack.client.sh users.setPresence?presence=auto
slack.status.sh $SLACK_DEFAULT_EMOJI $SLACK_DEFAULT_STATUS
