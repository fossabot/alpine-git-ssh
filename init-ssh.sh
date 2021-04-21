#!/bin/sh

set -e

echo ssh start ~
ls -als

if [ "" = "$SSH_PRIVATE_KEY" ]
then
  echo no SSH_PRIVATE_KEY
  exit
fi

SSH_PATH=/root/.ssh
ID_RSA=${SSH_PATH}/id_rsa

mkdir -p ${SSH_PATH}

echo "$SSH_PRIVATE_KEY" > ${ID_RSA}
chmod 600 ${ID_RSA}

echo ssh end ~
ls -als

ssh -T git@github.com

mkdir ~/.ssh

cp -r ${SSH_PATH}/* ~/.ssh

ssh -T git@github.com

echo ssh -T ~
ls -als
