Steps to run the .sql script in PostgreSQL

1- Run ./run.sh. This will copy the files from current directory to /tmp directory. We need to do this because postgresql does not have permission to certain locations.

2- Login to postgresql sudo -iu postgres

3- Start Executing scripts using Postgresql Example- psql -f /tmp/DeleteUserAndDatabase.sql psql -f /tmp/CreateNewUserAndDB.sql psql -f /tmp/LoadCsvToSqlTable.sql psql -f /tmp/IPLSQLResultset.sql
