#!/bin/bash

read -p "Enter URL: " URL
 

echo "Checking the status code for: $URL"
sleep 3

STATUS_CODE=$(curl -sIL -w '%{http_code}' -o /dev/null "$URL")


if [ "$STATUS_CODE" == "200" ]; then

    echo "Website is up (Status: $STATUS_CODE)"

else

    echo "Website is down or returned an error (Status: $STATUS_CODE)"

fi
