# Kettle
Der Job *update_waitlist.kjb* liest alle ITF-Dateien eines Verzeichnisses und schreibt diese in eine SQLite-Datenbank. Anschliessend wird aus der Datenbank eine JSON-Datei erstellt, die für das Anzeigen der (Import-)Warteliste auf der Website benötigt wird.

Es müssen verschiedene Verzeichnis-/Datei-Parameter (und DB-Parameter) in den Transformation und im Job angepasst werden!

# SQLite
Es werden verschiedene Tabellen und Views benötigt.

**waitlist**
Tabelle mit den Einträgen der zu importierenden ITF-Dateien.
```
CREATE TABLE waitlist (
  id INTEGER PRIMARY KEY,
  filename TEXT,
  path TEXT,
  bfsnr INT,
  los INT,
  lieferdatum DATETIME
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


** waitlist_v**
View für Warteliste mit den Gemeindenamen.
```
CREATE VIEW waitlist_v AS 
  SELECT w.*, g.name as gem_name, k.kame as kantonsname
  FROM waitlist w, gemeinden_v g, kantone_v k
  WHERE w.bfsnr = g.bfs_nummer
  AND g.KANTONSNUM = k.KANTONSNUM 
```

# Cronjob
```
5 * * * * kitchen.sh -file=/path/to/update_waitlist.kjb -level=Basic -log=update_waitlist.log
```

