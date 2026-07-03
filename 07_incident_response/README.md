# 07 Incident Response

## Overview

This document describes a basic incident response procedure for Linux server operation.

## Purpose

This section simulates how to investigate and recover from a web service failure.

In infrastructure operation, it is important not only to restore the service but also to record the cause, impact, recovery steps, and prevention measures.

## Incident Response Flow

Incident occurs
↓
Check impact
↓
Check service status
↓
Check listening port
↓
Check firewall settings
↓
Check logs
↓
Identify cause
↓
Recover service
↓
Document prevention

## Target Scenario

Apache HTTP Server was stopped and the web page became unavailable.

## Main Commands

systemctl status httpd

ss -tulpn | grep ':80'

sudo firewall-cmd --list-all

journalctl -u httpd

sudo tail -n 50 /var/log/httpd/error_log

sudo systemctl start httpd

sudo systemctl enable httpd

curl http://localhost

## Incident Report

Sample report:

07_incident_response/incident_report_sample.md

## What I Checked

- service status
- listening port
- firewall settings
- service logs
- recovery command
- auto-start setting
- HTTP response after recovery
- incident documentation

## Notes

A service failure should not be handled only by restarting the service.
It is important to check logs and document the cause and recovery steps.

Incident documentation helps prevent the same problem from happening again.
