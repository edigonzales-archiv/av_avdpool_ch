#!/bin/bash

ADMIN="stefan"
ADMINPWD="ziegler12"
USER="mspublic"
USERPWD="mspublic"

DB_NAME="xanadu2"
PG_VERSION="9.1"

echo "Delete database: $DB_NAME"
sudo -u postgres dropdb $DB_NAME

echo "Create database: $DB_NAME"
sudo -u postgres createdb --owner $ADMIN $DB_NAME
#sudo -u postgres createlang plpgsql $DB_NAME

echo "Load postgis"
sudo -u postgres psql -d $DB_NAME -f /usr/share/postgresql/$PG_VERSION/contrib/postgis-2.1/postgis.sql
sudo -u postgres psql -d $DB_NAME -f /usr/share/postgresql/$PG_VERSION/contrib/postgis-2.1/spatial_ref_sys.sql
sudo -u postgres psql -d $DB_NAME -f /usr/share/postgresql/$PG_VERSION/contrib/postgis-2.1/postgis_comments.sql

echo "Grant tables to..."
sudo -u postgres psql -d $DB_NAME -c "GRANT ALL ON SCHEMA public TO $ADMIN;"
sudo -u postgres psql -d $DB_NAME -c "ALTER TABLE geometry_columns OWNER TO $ADMIN;"
sudo -u postgres psql -d $DB_NAME -c "GRANT ALL ON geometry_columns TO $ADMIN;"
sudo -u postgres psql -d $DB_NAME -c "GRANT ALL ON spatial_ref_sys TO $ADMIN;"
sudo -u postgres psql -d $DB_NAME -c "GRANT ALL ON geography_columns TO $ADMIN;"

sudo -u postgres psql -d $DB_NAME -c "GRANT SELECT ON geometry_columns TO $USER;"
sudo -u postgres psql -d $DB_NAME -c "GRANT SELECT ON spatial_ref_sys TO $USER;"
sudo -u postgres psql -d $DB_NAME -c "GRANT SELECT ON geography_columns TO $USER;"

