FROM mwaeckerlin/cron

RUN $PKG_INSTALL mysql-client

ADD mysql-backup.sh /etc/periodic/daily/mysql-backup

VOLUME /backups
