#!/bin/bash

USER="${USER}"
USERID="$(id -u $USER)"
USERHOME=$(eval echo ~$USER)
GROUPNAME="${USER}"
GROUPID="$(id -g $USER)"

docker run -it -e LOCAL_USER_ID=$USERID -e LOCAL_USER=$USER -e LOCAL_GROUP_ID=$GROUPID -e GROUPNAME=$USER -v $USERHOME:$USERHOME --name latex latex_build:latest
