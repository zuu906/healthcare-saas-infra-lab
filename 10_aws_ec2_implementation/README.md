# AWS EC2 Implementation

## Overview

This lab implements a minimal Linux infrastructure environment on AWS based on the local VirtualBox lab.

The goal is to practice infrastructure operation tasks such as Linux server administration, SSH access, web server operation, monitoring, troubleshooting, backup, and restore.

This environment is built for learning and portfolio purposes and does not represent production AWS operation experience.

## Architecture

```text
Local WSL Client
      |
      | SSH / TCP 22
      v
Security Group
      |
      v
Amazon EC2
Amazon Linux 2023
      |
      +-- Apache HTTP Server
      |      |
      |      +-- /var/www/html
      |
      +-- CloudWatch Agent
      |      |
      |      +-- Memory metric
      |      +-- Disk metric
      |      +-- Apache access log
      |      +-- Apache error log
      |
      +-- Backup Script
             |
             v
        Amazon S3
