#!/bin/bash
docker exec -i crm_java-database-1 sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD"' < database_setup.sql
docker exec -i crm_java-database-1 sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD"' < Dump.sql

