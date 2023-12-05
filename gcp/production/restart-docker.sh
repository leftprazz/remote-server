#!/bin/bash

source ../.env.production

COMMAND="sudo systemctl restart docker"

ssh -i "$SSH_KEY_PATH" -p "$SSH_PORT" "$SSH_USERNAME"@"$SSH_HOST" "$COMMAND"

echo "Docker telah di-restart"
