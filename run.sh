#!/bin/bash
QUOTE=$(curl $BS_URL |  grep -P '\w+\s+\w+' | shuf -n 1)


curl -X POST -H 'Content-type: application/json' --data '{"text":"'"$QUOTE"'"}' $SLACK_WEBHOOK_URL

