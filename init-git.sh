#!/bin/sh

set -e

echo init-git.sh
echo "I am $(whoami)"

if [ -n "$USER" ]
then
  git config --global user.name "$USER"
fi

if [ -n "$EMAIL" ]
then
  git config --global user.email "$EMAIL"
fi
