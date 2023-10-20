#!/bin/bash

source .env

#Test ssh connection
ssh -i "$SSH_KEY_PATH" -p "$SSH_PORT" "$SSH_USERNAME"@"$SSH_HOST" echo "---SSH CONNECTION TEST--"
if [ $? -eq 0 ]; then
	echo "SSH berhasil terhubung"
else
	echo "SSH gagal terhubung"
fi
