# Allgemein
Die Lieferungen werden in einer Tabelle verwaltet. Diese wird immer nachgeführt, dh. es wird z.B. der Status und das Importdatum gesetzt resp. verändert. Aus dieser Tabelle wird auch eine JSON-Datei zum Anzeigen im Web erzeugt.

# Kettle
ÄNDERn!!!!
Der Job *update_waitlist.kjb* liest alle ITF-Dateien eines Verzeichnisses und schreibt diese in eine SQLite-Datenbank. Anschliessend wird aus der Datenbank eine JSON-Datei erstellt, die für das Anzeigen der (Import-)Warteliste auf der Website benötigt wird.

Es müssen verschiedene Verzeichnis-/Datei-Parameter (und DB-Parameter) in den Transformation und im Job angepasst werden!

# SQLite
Es werden verschiedene Tabellen und Views benötigt. Die Liste der ITF wird zuerst in ein tmp-Tabelle geschrieben. Anschliessend werden die identisch aufgebauten definitive Tabelle nachgeführt.

**delivery**
Tabelle mit den Einträgen der zu importierenden ITF-Dateien.
```
CREATE TABLE delivery_tmp (
id INTEGER PRIMARY KEY,
filename TEXT,
path TEXT,
fosnr INT,
lot INT,
status INT,
comment TEXT,
delivery_date DATETIME,
import_date DATETIME
);

CREATE TABLE delivery (
id INTEGER PRIMARY KEY,
filename TEXT,
path TEXT,
fosnr INT,
lot INT,
status INT,
comment TEXT,
delivery_date DATETIME,
import_date DATETIME
);
```

**gemeinden_YYYY**
Sämtliche Gemeinden der Schweiz. Kann aus dem swissBoundaries-Datensatz der swisstopo erstellt werden. Shape -> CSV (in QGIS) -> Import in SQLite mit SQLite Manager (Firefox Add-on). Für jedes Jahr eine neue Tabelle.

**gemeinden_v**
View der aktuell gültigen Gemeinden gruppiert nach *bfs_nummer*, da bei es aufgrund von Multi-Polygonen mehrere Einträge in der Tabelle gibt. 
```
CREATE VIEW gemeinden_v AS 
  SELECT *
  FROM gemeinden_2013
  GROUP BY bfs_nummer
```

**kantone_YYYY**
Analog *gemeinden_YYYY* für Kantone.

**kantone_v**
```
CREATE VIEW kantone_v AS   
   SELECT *
   FROM kantone_2013
   GROUP BY KANTONSNUM
```

**kantonskuerzel**
Mit SQLite Manager in Firefox importieren aus CSV-Datei (data-Verzeichnis).

**delivery_status**
```
CREATE TABLE delivery_status (
id INTEGER PRIMARY KEY,
status INT,
status_txt TEXT
);
```

**delivery_v**
View für Liste mit den Gemeindenamen, Kantonskürzel etc..
```
CREATE VIEW delivery_v AS 
  SELECT gem.id, gem.filename, gem.fosnr, gem.lot, gem.status, st.status_txt, gem.delivery_date, gem.import_date, gem.gem_name, kt.name as kt_name, k.kt_kurz as kt_kurz 
  FROM 
  ( 
    SELECT d.id, d.filename, d.fosnr, d.lot, d.status, d.delivery_date, d.import_date, g.name as gem_name, g.kantonsnum 
    FROM delivery d LEFT JOIN gemeinden_v g ON d.fosnr = g.bfs_nummer
  ) gem LEFT JOIN kantone_v kt ON gem.kantonsnum = kt.kantonsnum LEFT JOIN kantonskuerzel k ON gem.kantonsnum = k.kt_num LEFT JOIN delivery_status st ON gem.status = st.status

```

# Cronjob
*kitchen.sh* dient zur Ausführung von Kettle-Jobs/-Transformationen.
```
5 * * * * kitchen.sh -file=/path/to/update_waitlist.kjb -level=Basic -log=update_waitlist.log
```

