# AWS Migration Architecture

## Overview

This document describes a basic AWS migration design for the local healthcare SaaS infrastructure lab.

## Current Local Lab

Client
↓
VirtualBox Network
↓
CentOS Stream 10
├─ Apache HTTP Server
├─ OpenSSH Server
├─ firewalld
├─ cron
├─ backup script
└─ log monitoring

## AWS Migration Image

Client
↓
Route 53
↓
Application Load Balancer
↓
EC2
├─ Apache HTTP Server
├─ SSH access
├─ CloudWatch Agent
└─ backup script
↓
RDS
↓
S3 Backup

## Component Mapping

| Local Lab Component | AWS Component |
|---|---|
| VirtualBox VM | EC2 |
| CentOS Stream 10 server | EC2 Linux instance |
| firewalld | Security Group |
| Apache HTTP Server | Apache HTTP Server on EC2 |
| local backup directory | S3 |
| local log files | CloudWatch Logs |
| local database assumption | RDS |
| direct IP access | Route 53 and Load Balancer |

## Network Design

- Use VPC for network isolation.
- Place EC2 in a public subnet if direct web access is required.
- Place RDS in a private subnet.
- Allow HTTP or HTTPS traffic from users.
- Allow SSH only from an administrator IP address.
- Do not expose database access to the internet.

## Backup Design

- Store web contents backup in S3.
- Use lifecycle rules to manage old backup files.
- Test restore procedures regularly.
- Keep backup and restore procedures documented.

## Monitoring Design

- Send system and application logs to CloudWatch Logs.
- Monitor EC2 status.
- Monitor disk usage.
- Monitor HTTP service availability.
- Configure alerts for service failure or resource shortage.

## Security Design

- Use Security Groups to allow only required ports.
- Restrict SSH access.
- Use IAM roles instead of long-term access keys when possible.
- Do not store passwords or secrets in GitHub.
- Keep private keys outside the repository.

## Notes

This is a design document only.
The actual implementation in this portfolio was performed locally using VirtualBox and CentOS Stream 10.

This document does not claim production AWS operation experience.
