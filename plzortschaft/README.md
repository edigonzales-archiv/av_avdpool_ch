PLZ / Ortschaft
===============

Shape-Dateien von (swisstopo)[http://www.cadastre.ch/internet/cadastre/de/home/products/plz/data.html] herunterladen.

Mit dem Skript `import_plz_ortschaft.sh` die Daten in die Datenbank importieren. *Achtung:* Das Skript muss angepasst werden für den ersten Import ("create schema...", shp2pgsql Parameter und "create view..."). Falls die Shape-Struktur ändert, muss das Skript ebenfalls angepasst werden.
