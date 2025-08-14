#!/bin/sh

EMOJI_NAME="$1"
if [ "$EMOJI_NAME" = "" ]; then
  echo ""
elif [ "$EMOJI_NAME" = ":brb:" ]; then
  echo "😴"
elif [ "$EMOJI_NAME" = ":calendar:" ]; then
  echo "📅"
elif [ "$EMOJI_NAME" = ":face_with_thermometer:" ]; then
  echo "🤒"
elif [ "$EMOJI_NAME" = ":house_with_garden:" ]; then
  echo "🏡"
elif [ "$EMOJI_NAME" = ":palm_tree:" ]; then
  echo "🌴"
elif [ "$EMOJI_NAME" = ":princeton:" ]; then
  echo "🛡"
elif [ "$EMOJI_NAME" = ":bagel:" ]; then
  echo "🥯"
elif [ "$EMOJI_NAME" = ":bento:" ]; then
  echo "🍱"
elif [ "$EMOJI_NAME" = ":burrito:" ]; then
  echo "🌯"
elif [ "$EMOJI_NAME" = ":green_salad:" ]; then
  echo "🥗"
elif [ "$EMOJI_NAME" = ":hamburger:" ]; then
  echo "🍔"
elif [ "$EMOJI_NAME" = ":hotdog:" ]; then
  echo "🌭"
elif [ "$EMOJI_NAME" = ":pancakes:" ]; then
  echo "🥞"
elif [ "$EMOJI_NAME" = ":pie:" ]; then
  echo "🥧"
elif [ "$EMOJI_NAME" = ":pizza:" ]; then
  echo "🍕"
elif [ "$EMOJI_NAME" = ":ramen:" ]; then
  echo "🍜"
elif [ "$EMOJI_NAME" = ":sandwich:" ]; then
  echo "🥪"
elif [ "$EMOJI_NAME" = ":spaghetti:" ]; then
  echo "🍝"
elif [ "$EMOJI_NAME" = ":stew:" ]; then
  echo "🍲"
elif [ "$EMOJI_NAME" = ":taco:" ]; then
  echo "🌮"
else
  echo "❓"
fi
