# AWS Implementation Plan

## Goal

Implement a minimal AWS version of the local Linux infrastructure lab.

## Target Architecture

User browser
↓
Internet
↓
Security Group
↓
EC2 Linux instance
├─ SSH
├─ Apache HTTP Server
├─ backup script
└─ log check
↓
S3 bucket

## Phase 1: Cost Preparation

- Check AWS Free Tier or credit status.
- Enable or confirm cost alerts.
- Avoid unnecessary paid services.
- Do not create NAT Gateway.
- Do not create RDS in the first implementation.
- Do not create Application Load Balancer in the first implementation.
- Stop EC2 when not in use.

## Phase 2: EC2

Create one small Linux EC2 instance.

Planned usage:

- SSH login
- Apache HTTP Server
- simple web page
- backup script execution

## Phase 3: Security Group

Inbound rules:

- SSH TCP 22 from administrator IP only
- HTTP TCP 80 from public internet

Outbound rules:

- Default outbound rule

Security goal:

Allow only required traffic.

## Phase 4: Web Service

Install Apache HTTP Server on EC2.

Confirm:

- service status
- listening port
- HTTP response
- browser access

## Phase 5: Backup to S3

Create a backup archive from the web directory.

Upload the backup archive to S3.

Confirm:

- backup file creation
- S3 upload
- restore procedure document

## Phase 6: Monitoring and Logs

Confirm basic logs on EC2.

Possible next step:

- Install CloudWatch Agent
- Send system or application logs to CloudWatch Logs

## Phase 7: Cleanup

After testing:

- Stop or terminate unused EC2 instance
- Delete unused Elastic IP
- Delete unused S3 objects if no longer needed
- Check Billing dashboard
