# Docker Image to Daily Backup MySQL Docker Container

Creates daily backups of a connected mysql database.

## Environment Configuration

Define the following environment variables

- `MYSQL_ROOT_PASSWORD`: root password of the database (automatically determined if linked to a mysqlcontainer by name `mysql`)
- `MYSQL_HOST`: host name of the mysql server, defaults to `mysql`

## Volumes

Backup target: `/backups`

## Example

    docker run -d --name mysql \
               -e MYSQL_ROOT_PASSWORD=secret \
               mysql
    
    docker run -d --name backup \
               --link mysql:mysql \
               -v /var/tmp/backups:/backups \
               mwaeckerlin/mysql-backup
