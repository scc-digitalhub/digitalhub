#!/usr/bin/env bash
DIR="/opt/dremio/data/db"
if [ -d "$DIR" ]; then
    echo "directory already exist"
    exit 0
else
    mkdir -p /opt/dremio/data/db
    tar xvf /tmp/init/dremio-backup.tar --directory /tmp
    /opt/dremio/bin/dremio-admin restore -d /tmp/dremio_backup_2023-07-06_12.02/
    echo "$ADMIN_PASSWORD"
    /opt/dremio/bin/dremio-admin set-password -u admin -p "$ADMIN_PASSWORD"
fi