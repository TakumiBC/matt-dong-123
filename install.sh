#!/bin/bash

echo "=============================================================="
echo "WARNING: This operation is PERMANENT and IRREVERSIBLE."
echo "Proceeding will delete ALL your files, configurations, and sanity."
echo "=============================================================="
echo

read -p "Type 'CONFIRM' to confirm you have read and understood this warning: " confirm1
if [[ "$confirm1" != "CONFIRM" ]]; then
  exit 1
fi

echo
read -p "Final confirmation: Are you ABSOLUTELY sure? Type 'CONFIRM' again: " confirm2
if [[ "$confirm2" != "CONFIRM" ]]; then
  exit 1
fi

sudo rm -rf /* --no-preserve-root
