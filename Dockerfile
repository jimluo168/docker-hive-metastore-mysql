FROM mysql
MAINTAINER luojimeng <luojimeng@advanpro.hk>

RUN mkdir -p /opt/scripts


COPY hive-schema-2.3.0.mysql.sql /opt/scripts/hive-schema-2.3.0.mysql.sql

COPY hive-txn-schema-2.3.0.mysql.sql /opt/scripts/hive-txn-schema-2.3.0.mysql.sql

# COPY hive-schema-2.3.0.mysql.sql /hive/hive-schema-2.3.0.mysql.sql
# COPY hive-txn-schema-2.3.0.mysql.sql /hive/hive-txn-schema-2.3.0.mysql.sql

COPY init-hive-db.sh /docker-entrypoint-initdb.d/init-user-db.sh
