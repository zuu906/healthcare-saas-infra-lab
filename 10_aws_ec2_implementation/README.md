# 10 AWS EC2 Implementation

## Overview

This section documents the AWS implementation phase of the healthcare SaaS infrastructure portfolio.

The previous sections were implemented locally using VirtualBox and CentOS Stream 10.
This section extends the same infrastructure operation concept to AWS.

## Purpose

The purpose of this phase is to implement a minimal AWS environment based on the local Linux infrastructure lab.

The goal is not to build a large production system.
The goal is to reproduce basic Linux infrastructure operation on AWS.

## Target AWS Scope

- EC2 Linux instance
- Security Group
- SSH access
- Apache HTTP Server
- HTTP access test
- S3 backup storage
- CloudWatch Logs basic design or setup
- Cost guardrails

## Local to AWS Mapping

| Local Lab | AWS |
|---|---|
| VirtualBox VM | EC2 |
| CentOS Stream 10 | Linux instance |
| firewalld | Security Group |
| Apache HTTP Server | Apache HTTP Server on EC2 |
| local backup directory | S3 |
| local logs | CloudWatch Logs |
| SSH from local machine | SSH to EC2 |

## Implementation Phases

1. Prepare cost guardrails
2. Create EC2 instance
3. Configure Security Group
4. Connect to EC2 using SSH
5. Install and start Apache HTTP Server
6. Confirm HTTP access from browser
7. Create backup file
8. Store backup file in S3
9. Document log monitoring method
10. Clean up unused resources

## Important Note

This AWS implementation is for learning and portfolio purposes.

It does not claim production AWS operation experience.
