#!/bin/sh

set -e

if [ "" = "$SSH_PRIVATE_KEY" ]
then
  echo no SSH_PRIVATE_KEY
  exit
fi

SSH_PATH=~/.ssh
ID_RSA=${SSH_PATH}/id_rsa

mkdir -p ${SSH_PATH}

echo "$SSH_PRIVATE_KEY" > ${ID_RSA}
chmod 600 ${ID_RSA}
