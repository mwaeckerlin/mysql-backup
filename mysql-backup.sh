#!/bin/sh

mysqldump -h ${MYSQL_HOST:-mysql} \
          -u root -p${MYSQL_ROOT_PASSWORD:-${MYSQL_ENV_MYSQL_ROOT_PASSWORD}} \
          --all-databases \
          --add-drop-database \
          --add-drop-table \
          --add-drop-trigger \
          --add-locks \
          --flush-privileges \
          > /backups/$(date +%Y%m%d%H%M).sql
