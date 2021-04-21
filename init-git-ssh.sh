#!/bin/sh

set -e

echo init-git-ssh.sh
echo "I am $(whoami)"

sh -c "/init-git.sh $*"
sh -c "/init-ssh.sh $*"
