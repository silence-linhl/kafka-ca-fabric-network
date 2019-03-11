#!/bin/bash
#
# Copyright IBM Corp All Rights Reserved
#
# SPDX-License-Identifier: Apache-2.0
#
# Exit on first error, print all commands.
set -ev

# don't rewrite paths for Windows Git Bash users
export MSYS_NO_PATHCONV=1

docker-compose -f ./cluster-config/docker-compose-org1.yml down
docker-compose -f ./cluster-config/docker-compose-cli-org1.yml down


docker-compose -f ./cluster-config/docker-compose-org1.yml up -d
docker-compose -f ./cluster-config/docker-compose-cli-org1.yml up -d
