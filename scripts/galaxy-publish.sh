#!/bin/bash

set -e

ROLE_NAME=${1}
REPO_NAME=${2}

ansible-galaxy login --github-token=$GITHUB_BOT_TOKEN
ansible-galaxy role import w3fbot --role-name ${ROLE_NAME} ${REPO_NAME} -vvvvvvv
