#!/bin/bash

#DB_NAME="xanadu2"
DB_NAME="rosebud2"

sudo -u postgres psql -d $DB_NAME -f lv03/01_create_schema.sql
sudo -u postgres psql -d $DB_NAME -f lv03/02_create_metadaten.sql
sudo -u postgres psql -d $DB_NAME -f lv03/03_create_fixpunktekategorie.sql
sudo -u postgres psql -d $DB_NAME -f lv03/04_create_bodenbedeckung.sql
sudo -u postgres psql -d $DB_NAME -f lv03/05_create_einzelobjekte.sql
sudo -u postgres psql -d $DB_NAME -f lv03/06_create_hoehen.sql
sudo -u postgres psql -d $DB_NAME -f lv03/07_create_nomenklatur.sql
sudo -u postgres psql -d $DB_NAME -f lv03/08_create_liegenschaften.sql
sudo -u postgres psql -d $DB_NAME -f lv03/09_create_rohrleitungen.sql
sudo -u postgres psql -d $DB_NAME -f lv03/10_create_hoheitsgrenzen.sql
sudo -u postgres psql -d $DB_NAME -f lv03/11_create_gebaeudeadressen.sql

