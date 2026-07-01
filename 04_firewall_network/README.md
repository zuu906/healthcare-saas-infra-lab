# 04 Firewall and Network

## Overview

This document describes basic firewall and network checks on CentOS Stream 10.

## Purpose

This section explains how to confirm network access and firewall settings for SSH and HTTP services.

In infrastructure operation, a service may be running correctly but still be unreachable from another machine if the firewall blocks the traffic.

## Components

- firewalld
- firewall-cmd
- TCP port 22
- TCP port 80
- SSH service
- HTTP service
- Network interface
- IP address

## Network Access Flow

Client
↓
Network
↓
firewalld
↓
sshd or httpd
↓
Linux server

## Check IP Address

ip addr show

This command shows network interfaces and IP addresses.

## Check Active firewalld State

sudo firewall-cmd --state

This command checks whether firewalld is running.

## Check Active Zone

sudo firewall-cmd --get-active-zones

This command shows the active firewall zone and the network interface assigned to it.

## Check Current Firewall Rules

sudo firewall-cmd --list-all

This command shows allowed services, ports, interfaces, and other firewall settings in the current zone.

## Allow SSH Service

sudo firewall-cmd --permanent --add-service=ssh
sudo firewall-cmd --reload

These commands allow SSH traffic permanently and reload the firewall settings.

## Allow HTTP Service

sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload

These commands allow HTTP traffic permanently and reload the firewall settings.

## Check Allowed Services

sudo firewall-cmd --list-services

This command shows services allowed in the current firewall zone.

## Alternative: Allow Ports Directly

sudo firewall-cmd --permanent --add-port=22/tcp
sudo firewall-cmd --permanent --add-port=80/tcp
sudo firewall-cmd --reload

This method allows traffic by port number instead of service name.

## What I Checked

- IP address
- firewalld running state
- active firewall zone
- allowed services
- SSH service permission
- HTTP service permission
- difference between service permission and port permission

## Notes

Stopping firewalld is not a good solution for normal operation.
It is better to allow only the required services or ports.

If SSH is not allowed, remote login may fail.
If HTTP is not allowed, the web page may not be accessible from another machine.
