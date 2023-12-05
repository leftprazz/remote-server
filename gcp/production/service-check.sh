#!/bin/bash

source ../.env.production

COMMAND="docker service ls"

ssh -i "$SSH_KEY_PATH" -p "$SSH_PORT" "$SSH_USERNAME"@"$SSH_HOST" "$COMMAND"
