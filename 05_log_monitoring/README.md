# 05 Log Monitoring

## Overview

This document describes basic log monitoring on CentOS Stream 10.

## Purpose

This section explains how to check system logs and service logs during infrastructure operation.

In server operation, logs are used to investigate service failures, login failures, and unexpected behavior.

## Components

- systemd-journald
- journalctl
- rsyslog
- /var/log
- /var/log/secure
- /var/log/httpd/access_log
- /var/log/httpd/error_log
- sshd
- httpd

## Log Monitoring Flow

Trouble occurs
↓
Check service status
↓
Check journalctl logs
↓
Check /var/log files
↓
Identify cause
↓
Recover service

## Check Recent System Logs

journalctl -xe

This command shows recent system logs with detailed information.

## Check sshd Logs

journalctl -u sshd

This command shows logs related to the SSH server.

## Check httpd Logs

journalctl -u httpd

This command shows logs related to Apache HTTP Server.

## Check Authentication Logs

sudo tail -n 50 /var/log/secure

This command shows recent authentication logs.

## Search SSH Login Failures

sudo grep "Failed password" /var/log/secure

This command searches SSH login failure records.

## Check Apache Access Log

sudo tail -n 50 /var/log/httpd/access_log

This command shows recent HTTP access records.

## Check Apache Error Log

sudo tail -n 50 /var/log/httpd/error_log

This command shows recent Apache error records.

## Real-time Log Monitoring

sudo tail -f /var/log/httpd/error_log

This command monitors Apache error logs in real time.

## What I Checked

- systemd journal logs
- sshd logs
- httpd logs
- authentication logs
- Apache access logs
- Apache error logs
- SSH login failure search
- real-time log monitoring

## Notes

If a service is not working, checking only the service status is not enough.
Logs are necessary to identify the reason for the failure.

Using cat for large log files is not recommended.
It is better to use tail, less, grep, or journalctl.
