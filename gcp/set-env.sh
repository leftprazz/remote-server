#!/bin/bash

echo "Pilih env (production/staging):"
read environment

if [ "$environment" == "production" ]; then
    source_file=".env.production"
elif [ "$environment" == "staging" ]; then
    source_file=".env.staging"
else
    echo "Pilihan lingkungan tidak valid. Keluar."
    exit 1
fi

cp "$source_file" ".env"

echo "File .env berhasil diatur ke lingkungan $environment."
