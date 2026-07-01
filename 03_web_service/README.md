# 03 Web Service

## Overview

This document describes Apache HTTP Server operation on CentOS Stream 10.

## Purpose

This section simulates basic web service operation for a healthcare SaaS infrastructure environment.

The goal is to confirm that the Linux server can run a web service, listen on TCP port 80, and return an HTTP response.

## Components

- Apache HTTP Server
- httpd
- systemd
- firewalld
- TCP port 80
- /var/www/html

## Web Access Flow

Browser or curl
↓
TCP port 80
↓
httpd
↓
/var/www/html/index.html
↓
HTTP response

## Installation

sudo dnf install -y httpd

## Start and Enable httpd

sudo systemctl enable --now httpd

## Check httpd Status

systemctl status httpd

## Check Listening Port

ss -tulpn | grep ':80'

## Firewall Configuration

sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload

## Create Test Page

echo "Healthcare SaaS Infra Lab" | sudo tee /var/www/html/index.html

## Local Access Test

curl http://localhost

## Browser Access Test

http://server-ip-address

Replace server-ip-address with the actual IP address of the CentOS server.

## What I Checked

- Apache HTTP Server installation
- httpd service status
- TCP port 80 listening state
- firewalld HTTP service permission
- Test page creation
- HTTP response with curl

## Notes

If httpd is stopped, the web page will not be available.
If firewalld does not allow HTTP, the service may be running but external access can still fail.
