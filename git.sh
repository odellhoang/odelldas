#!/bin/bash

# Git user identity सेट करना
git config user.name "odellhoang"
git config user.email "odellhoang@gmail.com"

# Contribution डालना और push करना
echo "Today's contribution - $(date)" >> log.txt
git add .
git commit -m "Daily contribution for $(date)"
git push origin main
