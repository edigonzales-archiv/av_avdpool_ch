#!/bin/bash

DB_NAME="strelnikow"

sudo -u postgres psql -d $DB_NAME -f lv95/01_create_schema.sql
sudo -u postgres psql -d $DB_NAME -f lv95/02_create_metadaten.sql
sudo -u postgres psql -d $DB_NAME -f lv95/03_create_fixpunktekategorie.sql
sudo -u postgres psql -d $DB_NAME -f lv95/04_create_bodenbedeckung.sql
sudo -u postgres psql -d $DB_NAME -f lv95/05_create_einzelobjekte.sql
sudo -u postgres psql -d $DB_NAME -f lv95/06_create_hoehen.sql
sudo -u postgres psql -d $DB_NAME -f lv95/07_create_nomenklatur.sql
sudo -u postgres psql -d $DB_NAME -f lv95/08_create_liegenschaften.sql
sudo -u postgres psql -d $DB_NAME -f lv95/09_create_rohrleitungen.sql
sudo -u postgres psql -d $DB_NAME -f lv95/10_create_hoheitsgrenzen.sql
sudo -u postgres psql -d $DB_NAME -f lv95/11_create_gebaeudeadressen.sql

