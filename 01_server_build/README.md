# 01 Server Build

## Overview

This document describes the initial Linux server setup and basic system checks.

## Environment

- OS: CentOS Stream 10
- Hostname: localhost
- Virtualization: VirtualBox

## Purpose

The purpose of this section is to confirm the basic server state before configuring services such as SSH, Apache HTTP Server, firewall, logging, and backup.

## Basic Check Commands

```bash
hostnamectl
```

```bash
ip addr show
```

```bash
df -h
```

```bash
free -h
```

```bash
sudo dnf update -y
```

## What I Checked

- OS information
- Hostname
- IP address
- Disk usage
- Memory usage
- Package update status

## Notes

These checks are basic but important for infrastructure operation.
Before changing server settings, I first confirmed the current system state.
