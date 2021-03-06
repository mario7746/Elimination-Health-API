#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/meals"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "meal": {
      "eaten_on": "'"${DATE}"'",
      "title": "'"${TITLE}"'",
      "description": "'"${DESCRIPTION}"'",
      "feeling": "'"${FEELING}"'"
    }
  }'


echo
