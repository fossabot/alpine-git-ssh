#!/bin/sh

set -e

sh -c "/init-git.sh $*"
sh -c "/init-ssh.sh $*"
