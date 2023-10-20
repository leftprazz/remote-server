#!/bin/bash

SSH_USERNAME="imprazz07"
SSH_HOST="34.101.99.115"
SSH_PORT="22"
SSH_KEY_PATH="~/.ssh/vps/gcp/id_rsa"

#Test ssh connection
ssh -i "$SSH_KEY_PATH" -p "$SSH_PORT" "$SSH_USERNAME"@"$SSH_HOST" echo "---SSH CONNECTION TEST--"
if [ $? -eq 0 ]; then
	echo "SSH berhasil terhubung"
else
	echo "SSH gagal terhubung"
fi
