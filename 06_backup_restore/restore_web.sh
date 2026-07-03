#!/bin/bash

BACKUP_FILE="$1"
RESTORE_DIR="/"

if [ -z "${BACKUP_FILE}" ]; then
  echo "Usage: $0 <backup_file>"
  exit 1
fi

if [ ! -f "${BACKUP_FILE}" ]; then
  echo "Backup file not found: ${BACKUP_FILE}"
  exit 1
fi

sudo tar -xzf "${BACKUP_FILE}" -C "${RESTORE_DIR}"

echo "Restore completed from: ${BACKUP_FILE}"
