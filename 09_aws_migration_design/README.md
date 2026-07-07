# 09 AWS Migration Design

## Overview

This document describes a basic AWS migration design based on the local Linux infrastructure portfolio.

## Purpose

This section explains how the local on-premise style lab environment could be mapped to AWS services.

The goal is to show basic understanding of cloud migration design, not to claim production AWS operation experience.

## Current Lab Environment

- VirtualBox
- CentOS Stream 10
- Apache HTTP Server
- OpenSSH Server
- firewalld
- cron backup
- log monitoring
- incident response documentation

## AWS Design Document

File:

09_aws_migration_design/architecture.md

## Migration Concept

Local Linux server
↓
EC2

Local firewall settings
↓
Security Group

Local backup directory
↓
S3

Local logs
↓
CloudWatch Logs

Local database assumption
↓
RDS

Direct server access
↓
Route 53 and Application Load Balancer

## Main AWS Components

- VPC
- Public subnet
- Private subnet
- EC2
- Security Group
- Application Load Balancer
- Route 53
- RDS
- S3
- CloudWatch Logs
- IAM Role

## What I Considered

- network isolation
- web access path
- SSH access restriction
- database placement
- backup storage
- log monitoring
- security settings
- restore procedure
- difference between local lab and cloud design

## Notes

This is a design-only document.
The local implementation was performed with VirtualBox and CentOS Stream 10.

I do not claim production AWS operation experience in this portfolio.

## Implementation Status

This section is a design-only document.

The current portfolio implementation was performed locally using VirtualBox and CentOS Stream 10.

AWS implementation is planned as a future phase.
The next implementation target would be a minimal AWS environment using EC2, Security Group, S3, and CloudWatch Logs.

## Reason for Design-Only Scope

The main purpose of this portfolio is to demonstrate Linux infrastructure operation and maintenance skills first.

Before using cloud services, I focused on understanding basic server operation, SSH access, web service operation, firewall control, log monitoring, backup, restore, and incident response on Linux.

After confirming these basics locally, the next step is to implement the same concept on AWS.
