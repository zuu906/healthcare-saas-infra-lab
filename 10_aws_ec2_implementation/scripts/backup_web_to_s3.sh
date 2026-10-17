#!/bin/bash

set -euo pipefail

BACKUP_DIR="$HOME/backups"
SOURCE_DIR="/var/www/html"
S3_BUCKET="${S3_BUCKET:-YOUR_BACKUP_BUCKET}"
S3_PREFIX="web-backups"
TIMESTAMP="$(date +%Y%m%d-%H%M%S)"
BACKUP_FILE="${BACKUP_DIR}/web-backup-${TIMESTAMP}.tar.gz"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .

aws s3 cp \
  "$BACKUP_FILE" \
  "s3://${S3_BUCKET}/${S3_PREFIX}/$(basename "$BACKUP_FILE")"

echo "Backup completed: $BACKUP_FILE"
