#!/bin/sh

if [ "$1" ]; then
  EMOJI=$1
else
  FOOD_EMOJI="burrito hamburger pancakes pizza sandwich stew taco"
  COUNT=`echo "$FOOD_EMOJI" | wc -w`
  IDX=$(( ($RANDOM * $COUNT / 32768) + 1 ))
  EMOJI=`echo "$FOOD_EMOJI" | cut -d\  -f$IDX`
fi

slack.out.sh
slack.status.sh $EMOJI lunch
echo $EMOJI
