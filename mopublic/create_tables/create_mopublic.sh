#!/bin/bash

DB_NAME="xanadu2"

sudo -u postgres psql -d $DB_NAME -f 01_create_schema.sql
sudo -u postgres psql -d $DB_NAME -f 02_create_metadaten.sql
sudo -u postgres psql -d $DB_NAME -f 03_create_fixpunktekategorie.sql
sudo -u postgres psql -d $DB_NAME -f 04_create_bodenbedeckung.sql
sudo -u postgres psql -d $DB_NAME -f 05_create_einzelobjekte.sql
sudo -u postgres psql -d $DB_NAME -f 06_create_hoehen.sql
sudo -u postgres psql -d $DB_NAME -f 07_create_nomenklatur.sql
sudo -u postgres psql -d $DB_NAME -f 08_create_liegenschaften.sql
sudo -u postgres psql -d $DB_NAME -f 09_create_rohrleitungen.sql
sudo -u postgres psql -d $DB_NAME -f 10_create_hoheitsgrenzen.sql
sudo -u postgres psql -d $DB_NAME -f 11_create_gebaeudeadressen.sql

