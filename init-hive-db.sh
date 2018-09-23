#!/bin/bash
set -e

mysql -u root -p123456 << EOF

CREATE DATABASE metastore;

USE metastore;

SOURCE /opt/scripts/hive-schema-2.3.0.mysql.sql;

SOURCE /opt/scripts/hive-txn-schema-2.3.0.mysql.sql;

CREATE USER 'hive'@'%' IDENTIFIED BY 'hive';
 
GRANT ALL ON *.* TO 'hive'@'%';
 
flush privileges;

EOF
