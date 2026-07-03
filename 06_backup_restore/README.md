# 06 Backup and Restore

## Overview

This document describes backup and restore operations for a web service directory on CentOS Stream 10.

## Purpose

This section simulates basic backup and restore procedures for healthcare SaaS infrastructure operation.

In infrastructure operation, backup is necessary to protect service data and configuration files from accidental deletion, failure, or unexpected changes.

## Components

- shell script
- tar
- gzip
- cron
- /var/www/html
- backup directory
- restore procedure

## Backup Flow

/var/www/html
↓
backup_web.sh
↓
tar.gz archive
↓
backup directory

## Restore Flow

backup tar.gz file
↓
restore_web.sh
↓
/var/www/html

## Backup Script

File:

06_backup_restore/backup_web.sh

Purpose:

Create a compressed backup file from /var/www/html.

## Restore Script

File:

06_backup_restore/restore_web.sh

Purpose:

Restore files from a specified backup archive.

## Manual Backup Test

./06_backup_restore/backup_web.sh

This command runs the backup script manually.

## Check Backup Files

ls -lh ~/backup

This command checks created backup files.

## Restore Example

./06_backup_restore/restore_web.sh ~/backup/web_backup_YYYYMMDD_HHMMSS.tar.gz

Replace the backup file name with the actual backup file.

## Cron Example

0 2 * * * /home/yuta/healthcare-saas-infra-lab/06_backup_restore/backup_web.sh >> /home/yuta/backup/backup.log 2>&1

This cron entry runs the backup script every day at 02:00.

## What I Checked

- backup script creation
- restore script creation
- script execution permission
- tar.gz backup format
- backup file naming with date
- cron scheduling example
- restore procedure

## Notes

Backup is not complete unless restore can be tested.
It is important to document both backup and restore procedures.

Running backup too frequently may increase disk usage.
