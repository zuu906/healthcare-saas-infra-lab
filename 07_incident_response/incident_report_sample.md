# Incident Report Sample

## Incident Title

Apache HTTP Server was stopped and the web page became unavailable.

## Environment

- OS: CentOS Stream 10
- Service: httpd
- Web directory: /var/www/html
- Firewall: firewalld
- Virtualization: VirtualBox

## Impact

The web page could not be accessed from the client browser.

## Detection

The issue was detected by checking the web response.

curl http://localhost

## Investigation

Checked httpd service status.

systemctl status httpd

Checked listening port.

ss -tulpn | grep ':80'

Checked firewalld rules.

sudo firewall-cmd --list-all

Checked httpd logs.

journalctl -u httpd

sudo tail -n 50 /var/log/httpd/error_log

## Cause

The httpd service was stopped.

## Recovery

Started the httpd service.

sudo systemctl start httpd

Enabled automatic startup.

sudo systemctl enable httpd

Checked service status again.

systemctl status httpd

Checked HTTP response again.

curl http://localhost

## Prevention

Confirm service auto-start after installation.

systemctl is-enabled httpd

Document service recovery procedure.

## Summary

The issue was caused by the stopped httpd service.
The service was restored by starting httpd and enabling automatic startup.
