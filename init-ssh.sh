#!/bin/sh

set -e

if [ "" = "$SSH_PRIVATE_KEY" ]
then
  echo no SSH_PRIVATE_KEY
  exit
fi

ROOT_SSH_PATH=/root/.ssh
ROOT_ID_RSA=${ROOT_SSH_PATH}/id_rsa

mkdir -p ${ROOT_SSH_PATH}

echo "$SSH_PRIVATE_KEY" > ${ROOT_ID_RSA}
chmod 600 ${ROOT_ID_RSA}

USER_SSH_PATH=~/.ssh
mkdir -p ${USER_SSH_PATH}
cp -r ${ROOT_SSH_PATH}/* ${USER_SSH_PATH}
