#!/bin/bash

# Tentukan URL repositori GitHub yang berisi kunci SSH
source .env

SSH_PRIVATE_KEY="id_rsa"
SSH_PUB_KEY="id_rsa.pub"
SSH_PEM_KEY="lp-cloud.pem"

# Buat direktori /ssh jika belum ada
mkdir -p ./ssh

echo "---> Proses clone repo untuk pengambilan ssh key"
# Clone Repo
git clone "$GITHUB_REPO_URL"

echo "---> Meng-copy file ssh pada repo"
# Pindahkan file id_rsa ke direktori /ssh
cp "$GITHUB_REPO_NAME/ssh/$SSH_PRIVATE_KEY" ./ssh/
cp "$GITHUB_REPO_NAME/ssh/$SSH_PUB_KEY" ./ssh/
cp "$GITHUB_REPO_NAME/ssh/$SSH_PEM_KEY" ./ssh/

echo "---> Menghapus folder repo"
# Hapus folder repositori yang telah di-clone
rm -rf "$GITHUB_REPO_NAME"

echo "---> Mengatur permission dari ssh key"
# Set izin yang tepat untuk kunci SSH (biasanya 600)
chmod 600 ./ssh/id_rsa*
chmod 400 ./ssh/lp-cloud.pem

echo "[DONE] Kunci SSH telah diunduh dan disalin ke direktori /ssh."
