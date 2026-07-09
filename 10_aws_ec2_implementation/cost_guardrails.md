# AWS Cost Guardrails

## Purpose

This document defines cost control rules for the AWS implementation phase.

AWS resources may generate charges if they are left running or configured incorrectly.
Before creating AWS resources, cost guardrails must be prepared.

## Basic Rules

- Check Billing before starting.
- Check Free Tier or credit status.
- Set or confirm cost alerts.
- Use only the minimum required resources.
- Stop EC2 when not in use.
- Avoid NAT Gateway.
- Avoid RDS in the first implementation.
- Avoid Application Load Balancer in the first implementation.
- Avoid paid support plans.
- Do not create unnecessary Elastic IP addresses.
- Delete unused resources after testing.

## EC2 Rules

- Use one small Linux instance.
- Use the minimum required storage.
- Stop the instance after testing.
- Terminate the instance when the portfolio test is finished.

## Security Group Rules

- Allow SSH TCP 22 only from the administrator IP address.
- Do not allow SSH from 0.0.0.0/0.
- Allow HTTP TCP 80 only when testing web access.
- Do not open all ports.

## S3 Rules

- Use one bucket for backup testing.
- Do not store personal information.
- Do not store secrets.
- Delete unnecessary backup files after testing.

## Secrets Rules

Do not upload the following to GitHub:

- AWS access keys
- secret access keys
- passwords
- private keys
- tokens
- real customer information

## Cleanup Checklist

After testing, confirm:

- EC2 instance stopped or terminated
- unused Elastic IP deleted
- unused S3 objects deleted
- Billing dashboard checked
