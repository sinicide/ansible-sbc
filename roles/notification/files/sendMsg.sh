#!/usr/bin/env bash
# $1 = gotify_creds_file
# $2 = msg_priority
# $3 = msg_title = app
# $4 = msg
# sendMsg.sh "./.creds" "1" "app_name" "something critical happened"

GOTIFY_SERVER=$(cat $1 | grep GOTIFY_SERVER | awk -F '=' '{ print $2 }')
GOTIFY_TOKEN=$(cat $1 | grep GOTIFY_TOKEN | awk -F '=' '{ print $2 }')
MSG_PRIORITY=$2
MSG_TITLE=$3
MSG=$4
MSG_URL="$GOTIFY_SERVER/message?token=$GOTIFY_TOKEN"
MSG_DATE="$(date '+%Y-%m-%d %T')"

eval $(/usr/bin/curl $MSG_URL -F "title=$MSG_TITLE" -F "message=$MSG" -F "priority=$MSG_PRIORITY")
