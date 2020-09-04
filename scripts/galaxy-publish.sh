#!/bin/bash

set -e

ROLE_NAME=${1}
REPO_NAME=${2:-${ROLE_NAME}}

ansible-galaxy login --github-token=$GITHUB_BOT_TOKEN
ansible-galaxy role import --role-name="${ROLE_NAME}" w3f "${REPO_NAME}" -vvvvvvv
