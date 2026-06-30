# 02 SSH Operation

## Overview

This document describes SSH remote operation for the CentOS Stream 10 server.

## Purpose

SSH is used to manage Linux servers remotely.
In infrastructure operation, administrators usually connect to servers from another machine instead of operating directly on the server console.

## Components

- OpenSSH Server
- sshd
- systemd
- firewalld
- TCP port 22

## SSH Communication Flow

```text
SSH client
↓
TCP port 22
↓
sshd
↓
Linux shell
```

## Installation

```bash
sudo dnf install -y openssh-server
```

This command installs the OpenSSH server package.

## Start and Enable sshd

```bash
sudo systemctl enable --now sshd
```

This command starts sshd immediately and enables automatic startup at boot.

## Check sshd Status

```bash
systemctl status sshd
```

This command checks whether the SSH server is running.

## Check Listening Port

```bash
ss -tulpn | grep ':22'
```

This command checks whether the server is listening on TCP port 22.

## Firewall Configuration

```bash
sudo firewall-cmd --permanent --add-service=ssh
sudo firewall-cmd --reload
```

These commands allow SSH traffic through firewalld.

## SSH Login Example

```bash
ssh yuta@server-ip-address
```

Replace `server-ip-address` with the actual IP address of the CentOS server.

## What I Checked

- OpenSSH server installation
- sshd service status
- TCP port 22 listening state
- firewalld SSH service permission
- Remote login flow

## Notes

If sshd is stopped, SSH login will fail.
If firewalld does not allow SSH, the service may be running but remote access can still fail.
