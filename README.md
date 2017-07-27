# slack scripts

these are a few simple slack scripts to do things from the command-line, like set status and presence with
one command.

## setup
1. get an API token from https://api.slack.com/web

1. set some environment variables (`SLACK_API_TOKEN` is required for all operations, the others will be used
   by the `slack.in.sh` script):

   ```sh
   export SLACK_DEFAULT_EMOJI=house_with_garden
   export SLACK_DEFAULT_STATUS="working from home"
   export SLACK_API_TOKEN="xxxx-xxxxxxxxxx-xxxxxxxxxxx-xxxxxxxxxxx-xxxxxxxxxx"
   ```

## usage

```
# set presence to auto, and status to your configured default emoji and message
slack.in.sh

# set presence to away
slack.out.sh

# set your status to :fire: "on a roll"
slack.status.sh fire on a roll

# set presence to away, and status status to "lunch" and the emoji (pizza if not specified)
slack.lunch.sh [emoji]

# post the message "this is the message" to #foo
slack.post.sh foo this is the message
```

## limitations

i think this only works with your first team.
