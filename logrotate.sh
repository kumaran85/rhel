#!/bin/bash
/sbin/logrotate -f /etc/logrotate.conf
echo "script done @ `date +%m-%d-%H:%M` " >> /access.log
service httpd graceful
mv /var/log/httpd/*.gz /logfiledir/logs
exit

#cat /etc/logrotate.d/httpd
/var/log/httpd/*log {
    missingok
    size 1G
    dateformat -%Y%m%d%H
    hourly
    notifempty
    sharedscripts
    delaycompress
    compress
    postrotate
        /bin/systemctl reload httpd.service > /dev/null 2>/dev/null || true
    endscript
}
