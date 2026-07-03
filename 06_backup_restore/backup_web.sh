#!/bin/bash

DATE=$(date +%Y%m%d_%H%M%S)
SOURCE_DIR="/var/www/html"
BACKUP_DIR="$HOME/backup"
BACKUP_FILE="${BACKUP_DIR}/web_backup_${DATE}.tar.gz"

mkdir -p "${BACKUP_DIR}"

tar -czf "${BACKUP_FILE}" "${SOURCE_DIR}"

echo "Backup completed: ${BACKUP_FILE}"
