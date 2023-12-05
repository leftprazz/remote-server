#!/bin/bash

source ../.env.staging

COMMAND="docker ps"

ssh -i "$SSH_KEY_PATH" -p "$SSH_PORT" "$SSH_USERNAME"@"$SSH_HOST" "$COMMAND"
