# Healthcare SaaS Infrastructure Lab

## Overview

This portfolio simulates Linux infrastructure operation and maintenance for a healthcare SaaS service.

The purpose of this project is to demonstrate practical infrastructure skills for an infrastructure engineer role, especially server operation, log monitoring, backup, recovery, and incident response.

## Target Scenario

This lab assumes a small healthcare SaaS system used by clinics, pharmacies, or care facilities.

The focus is not application development, but infrastructure operation and stable service maintenance.

## Environment

- Host PC: Panasonic Let's note
- Virtualization: VirtualBox
- Guest OS: CentOS Stream 10
- Repository name: healthcare-saas-infra-lab

## Main Components

- Linux server setup
- SSH remote operation
- Apache HTTP Server operation
- firewalld configuration
- systemd service management
- Log monitoring with journalctl and /var/log
- Backup and restore using shell script and cron
- Incident response documentation
- Customer infrastructure hearing sheet
- Basic AWS migration design

## Directory Structure

| No | Directory | Topic |
|---|---|---|
| 00 | 00_environment | Lab environment |
| 01 | 01_server_build | Linux server setup |
| 02 | 02_ssh_operation | SSH operation |
| 03 | 03_web_service | Web service operation |
| 04 | 04_firewall_network | Firewall and network |
| 05 | 05_log_monitoring | Log monitoring |
| 06 | 06_backup_restore | Backup and restore |
| 07 | 07_incident_response | Incident response |
| 08 | 08_customer_hearing | Customer hearing sheet |
| 09 | 09_aws_migration_design | AWS migration design |

## Purpose

This project was created to show that I understand the basic flow of infrastructure operation:

1. Build a Linux server
2. Configure remote access
3. Run a web service
4. Open only necessary network ports
5. Check logs during trouble
6. Create backup and restore procedures
7. Document incident response
8. Consider customer environment requirements
9. Design a basic cloud migration path

## Notes

This is a personal lab environment built with VirtualBox and CentOS Stream 10.

This repository does not claim production experience.
It documents hands-on practice and operational understanding for an infrastructure engineer position.

## Completion Status

| No | Section | Status |
|---|---|---|
| 00 | Environment | Completed |
| 01 | Server Build | Completed |
| 02 | SSH Operation | Completed |
| 03 | Web Service | Completed |
| 04 | Firewall and Network | Completed |
| 05 | Log Monitoring | Completed |
| 06 | Backup and Restore | Completed |
| 07 | Incident Response | Completed |
| 08 | Customer Hearing | Completed |
| 09 | AWS Migration Design | Completed |

## Key Points

This portfolio focuses on infrastructure operation and maintenance, not application development.

Main points demonstrated in this repository:

- Linux server setup
- Remote operation with SSH
- Web service operation with Apache HTTP Server
- Firewall and network access control
- Log monitoring and troubleshooting
- Backup and restore procedure
- Incident response documentation
- Customer environment hearing
- Basic AWS migration design

## Target Role

This portfolio was created for an entry-level infrastructure engineer role.

It assumes operation and maintenance of a healthcare SaaS infrastructure environment.

## Important Note

This is a personal lab project.
It does not claim production operation experience.
