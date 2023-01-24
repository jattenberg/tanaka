#!/bin/bash
ls -lths;
QUOTE=$(cat bs.txt |  grep -P '\w+\s+\w+' | shuf -n 1)

echo $(date)" => "$QUOTE
curl -X POST -H 'Content-type: application/json' --data '{"text":"'"$QUOTE"'"}' $SLACK_WEBHOOK_URL

