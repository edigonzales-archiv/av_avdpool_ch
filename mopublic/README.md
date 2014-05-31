MOpublic
========

Metatabellen für MOpublic
-------------------------
Die Metatabellen (v.a. für sprachliche wie auch vereinfachende Übersetzung der Attributwerte) werden mit ili2pg in die Datenbank importiert. Dazu muss mindenstens die Version 2.0.3 beta verwendet werden:

```
java -jar ili2pg.jar --dbhost localhost --dbdatabase xanadu2 --dbusr stefan --dbpwd ziegler12 --createscript foo.sql --dbschema av_mopublic_meta --models LookUp_ili1_v1.3.ili LookUp_ili1_v1.3.itf

```

3D
--
Fixpunkte und Höhenkurven sind gemäss Modell 3d. Anscheinend darf in Postgis der Z-Wert eines Punktes in Postgis *nicht* NULL sein. Falls keine Höhe vorhanden ist, wird sie auf 0 gesetzt (durch ST_Force_3d).
