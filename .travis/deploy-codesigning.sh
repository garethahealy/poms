#!/usr/bin/env bash

echo "Deploying code signing key..."

openssl aes-256-cbc -K $encrypted_51bfd52bf8f1_key -iv $encrypted_51bfd52bf8f1_iv -in codesigning.asc.enc -out codesigning.asc -d
gpg --fast-import .travis/codesigning.asc
