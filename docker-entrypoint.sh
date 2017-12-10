#!/bin/bash
set -e
MYSQL_HOST=${MYSQL_HOST:=localhost}
MYSQL_PORT=${MYSQL_PORT:=3306}

mkdir -p /etc/serposcope
echo "serposcope.db.url=jdbc:mysql://$MYSQL_HOST:$MYSQL_PORT/$MYSQL_DB?user=$MYSQL_USER&password=$MYSQL_PASSWORD&allowMultiQueries=true" > /etc/serposcope/serposcope.conf

exec java -Dserposcope.conf=/etc/serposcope/serposcope.conf -jar /opt/serposcope/serposcope.jar "$@"
