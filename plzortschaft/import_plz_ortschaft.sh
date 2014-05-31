#!/bin/bash

ADMIN="stefan"
ADMINPWD="ziegler12"
USER="mspublic"
USERPWD="mspublic"

DB_NAME="xanadu2"

SHP1="../data/PLZO_SHP_LV03//PLZO_OS.shp"
SHP2="../data/PLZO_SHP_LV03//PLZO_PLZ.shp"
SHP3="../data/PLZO_SHP_LV03//PLZO_OSNAME.dbf"


#sudo -u postgres psql -d $DB_NAME -c "CREATE SCHEMA av_plzortschaft AUTHORIZATION stefan; GRANT ALL ON SCHEMA av_plzortschaft TO stefan; GRANT USAGE ON SCHEMA av_plzortschaft TO mspublic;"

sudo -u postgres psql -d $DB_NAME -c "DELETE FROM av_plzortschaft.plzo_os;"
sudo -u postgres psql -d $DB_NAME -c "DELETE FROM av_plzortschaft.plzo_plz;"
sudo -u postgres psql -d $DB_NAME -c "DELETE FROM av_plzortschaft.plzo_osname;"


# Beim erstmaligen Import -c statt -a und zusätzlich -I
shp2pgsql -a -s 21781  $SHP1 av_plzortschaft.plzo_os | sudo -u postgres psql -d $DB_NAME
sudo -u postgres psql -d $DB_NAME -c "GRANT ALL ON TABLE av_plzortschaft.plzo_os TO $ADMIN;"
sudo -u postgres psql -d $DB_NAME -c "GRANT SELECT ON TABLE av_plzortschaft.plzo_os TO $USER;"

shp2pgsql -a -s 21781  $SHP2 av_plzortschaft.plzo_plz | sudo -u postgres psql -d $DB_NAME
sudo -u postgres psql -d $DB_NAME -c "GRANT ALL ON TABLE av_plzortschaft.plzo_plz TO $ADMIN;"
sudo -u postgres psql -d $DB_NAME -c "GRANT SELECT ON TABLE av_plzortschaft.plzo_plz TO $USER;"

shp2pgsql -a -n -s 21781 -W latin1  $SHP3 av_plzortschaft.plzo_osname | sudo -u postgres psql -d $DB_NAME
sudo -u postgres psql -d $DB_NAME -c "GRANT ALL ON TABLE av_plzortschaft.plzo_osname TO $ADMIN;"
sudo -u postgres psql -d $DB_NAME -c "GRANT SELECT ON TABLE av_plzortschaft.plzo_osname TO $USER;"


#sudo -u postgres psql -d $DB_NAME -c "CREATE OR REPLACE VIEW av_plzortschaft.v_plzo_os AS SELECT a.gid, a.uuid, a.osvb_uuid, a.status, a.inaend, a.geom, b.langtext FROM av_plzortschaft.plzo_os a, av_plzortschaft.plzo_osname b WHERE a.uuid::text = b.os_uuid::text;"
sudo -u postgres psql -d $DB_NAME -c "ALTER TABLE av_plzortschaft.v_plzo_os OWNER TO stefan;"
sudo -u postgres psql -d $DB_NAME -c "GRANT ALL ON TABLE av_plzortschaft.v_plzo_os TO stefan;"
sudo -u postgres psql -d $DB_NAME -c "GRANT SELECT ON TABLE av_plzortschaft.v_plzo_os TO mspublic;"
