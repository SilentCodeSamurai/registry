#!/bin/bash

# Load env vars
source ./load-env.sh

# Start the stack
docker stack deploy -c registry.yml registry --detach=false
