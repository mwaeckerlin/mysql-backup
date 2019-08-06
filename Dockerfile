FROM mwaeckerlin/cron

RUN $PKG_INSTALL mysql-client mariadb-connector-c

ADD mysql-backup.sh /etc/periodic/daily/mysql-backup

VOLUME /backups
