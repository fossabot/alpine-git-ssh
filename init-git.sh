#!/bin/sh

echo init-git

set -e

if [ -n "$USER" ]
then
  git config --global user.name "$USER"
fi

if [ -n "$EMAIL" ]
then
  git config --global user.email "$EMAIL"
fi
