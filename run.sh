#!/bin/bash
QUOTE=$(curl $BS_URL | shuf -n 1)


curl -X POST -H 'Content-type: application/json' --data '{"text":"'"$QUOTE"'"}' https://hooks.slack.com/services/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

