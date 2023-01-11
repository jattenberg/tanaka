#!/bin/bash
QUOTE=$(curl $BS_URL | shuf -n 1)


curl -X POST -H 'Content-type: application/json' --data '{"text":"'"$QUOTE"'"}' $SLACK_WEBHOOK_URL

