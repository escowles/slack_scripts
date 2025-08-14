#!/bin/sh

if [ "$1" ]; then
  EMOJI=$1
else
  FOOD_EMOJI="bagel bento burrito green_salad hamburger hotdog pancakes pie pizza ramen sandwich spaghetti stew taco"
  COUNT=`echo "$FOOD_EMOJI" | wc -w`
  IDX=$(( ($RANDOM * $COUNT / 32768) + 1 ))
  EMOJI=`echo "$FOOD_EMOJI" | cut -d\  -f$IDX`
fi

slack.out.sh
slack.status.sh $EMOJI lunch
