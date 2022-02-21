#!/bin/bash

USERID=${LOCAL_USER_ID:-9999}
USERNAME=${LOCAL_USER:-user}
GROUPID=${LOCAL_GROUP_ID:-100}
GROUPNAME=${LOCAL_GROUP_NAME:-users}

if [ ! $(getent group $GROUPID) ]; then
  addgroup -g $GROUPID $GROUPNAME
fi

adduser -D --shell /bin/bash -u $USERID $USERNAME $GROUPNAME

export HOME=/home/$USERNAME

su - $USERNAME
