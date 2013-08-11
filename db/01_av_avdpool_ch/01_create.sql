-------------- Create schema --------------

CREATE SCHEMA av_avdpool_ch AUTHORIZATION stefan;
GRANT ALL ON SCHEMA av_avdpool_ch TO stefan;
GRANT USAGE ON SCHEMA av_avdpool_ch TO mspublic;

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie1_lfp1nachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigereintrag VARCHAR,
 datum1 VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie1_lfp1nachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie1_lfp1nachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie1_lfp1nachfuehrung TO mspublic;

CREATE INDEX idx_fixpunktekategorie1_lfp1nachfuehrung_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie1_lfp1nachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie1_lfp1nachfuehrung_tid
  ON av_avdpool_ch.fixpunktekategorie1_lfp1nachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie1_lfp1nachfuehrung_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie1_lfp1nachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie1_lfp1nachfuehrung_los
  ON av_avdpool_ch.fixpunktekategorie1_lfp1nachfuehrung
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie1_lfp1nachfuehrung_perimeter
  ON av_avdpool_ch.fixpunktekategorie1_lfp1nachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie1_lfp1
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 nbident VARCHAR,
 nummer VARCHAR,
 geometrie geometry(POINT, 21781),
 hoehegeom DOUBLE PRECISION,
 lagegen DOUBLE PRECISION,
 lagezuv INTEGER,
 lagezuv_txt VARCHAR,
 hoehegen DOUBLE PRECISION,
 hoehezuv INTEGER,
 hoehezuv_txt VARCHAR,
 begehbarkeit INTEGER,
 begehbarkeit_txt VARCHAR,
 punktzeichen INTEGER,
 punktzeichen_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie1_lfp1 OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie1_lfp1 TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie1_lfp1 TO mspublic;

CREATE INDEX idx_fixpunktekategorie1_lfp1_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie1_lfp1
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie1_lfp1_tid
  ON av_avdpool_ch.fixpunktekategorie1_lfp1
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie1_lfp1_entstehung
  ON av_avdpool_ch.fixpunktekategorie1_lfp1
  USING btree
  (entstehung);

CREATE INDEX idx_fixpunktekategorie1_lfp1_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie1_lfp1
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie1_lfp1_los
  ON av_avdpool_ch.fixpunktekategorie1_lfp1
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie1_lfp1_geometrie
  ON av_avdpool_ch.fixpunktekategorie1_lfp1
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie1_lfp1pos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 lfp1pos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie1_lfp1pos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie1_lfp1pos TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie1_lfp1pos TO mspublic;

CREATE INDEX idx_fixpunktekategorie1_lfp1pos_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie1_lfp1pos
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie1_lfp1pos_tid
  ON av_avdpool_ch.fixpunktekategorie1_lfp1pos
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie1_lfp1pos_lfp1pos_von
  ON av_avdpool_ch.fixpunktekategorie1_lfp1pos
  USING btree
  (lfp1pos_von);

CREATE INDEX idx_fixpunktekategorie1_lfp1pos_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie1_lfp1pos
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie1_lfp1pos_los
  ON av_avdpool_ch.fixpunktekategorie1_lfp1pos
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie1_lfp1pos_pos
  ON av_avdpool_ch.fixpunktekategorie1_lfp1pos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie1_lfp1symbol
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 lfp1symbol_von VARCHAR,
 ori DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie1_lfp1symbol OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie1_lfp1symbol TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie1_lfp1symbol TO mspublic;

CREATE INDEX idx_fixpunktekategorie1_lfp1symbol_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie1_lfp1symbol
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie1_lfp1symbol_tid
  ON av_avdpool_ch.fixpunktekategorie1_lfp1symbol
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie1_lfp1symbol_lfp1symbol_von
  ON av_avdpool_ch.fixpunktekategorie1_lfp1symbol
  USING btree
  (lfp1symbol_von);

CREATE INDEX idx_fixpunktekategorie1_lfp1symbol_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie1_lfp1symbol
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie1_lfp1symbol_los
  ON av_avdpool_ch.fixpunktekategorie1_lfp1symbol
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie1_hfp1nachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigereintrag VARCHAR,
 datum1 VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie1_hfp1nachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie1_hfp1nachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie1_hfp1nachfuehrung TO mspublic;

CREATE INDEX idx_fixpunktekategorie1_hfp1nachfuehrung_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie1_hfp1nachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie1_hfp1nachfuehrung_tid
  ON av_avdpool_ch.fixpunktekategorie1_hfp1nachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie1_hfp1nachfuehrung_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie1_hfp1nachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie1_hfp1nachfuehrung_los
  ON av_avdpool_ch.fixpunktekategorie1_hfp1nachfuehrung
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie1_hfp1nachfuehrung_perimeter
  ON av_avdpool_ch.fixpunktekategorie1_hfp1nachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie1_hfp1
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 nbident VARCHAR,
 nummer VARCHAR,
 geometrie geometry(POINT, 21781),
 hoehegeom DOUBLE PRECISION,
 lagegen DOUBLE PRECISION,
 lagezuv INTEGER,
 lagezuv_txt VARCHAR,
 hoehegen DOUBLE PRECISION,
 hoehezuv INTEGER,
 hoehezuv_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie1_hfp1 OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie1_hfp1 TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie1_hfp1 TO mspublic;

CREATE INDEX idx_fixpunktekategorie1_hfp1_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie1_hfp1
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie1_hfp1_tid
  ON av_avdpool_ch.fixpunktekategorie1_hfp1
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie1_hfp1_entstehung
  ON av_avdpool_ch.fixpunktekategorie1_hfp1
  USING btree
  (entstehung);

CREATE INDEX idx_fixpunktekategorie1_hfp1_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie1_hfp1
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie1_hfp1_los
  ON av_avdpool_ch.fixpunktekategorie1_hfp1
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie1_hfp1_geometrie
  ON av_avdpool_ch.fixpunktekategorie1_hfp1
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie1_hfp1pos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 hfp1pos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie1_hfp1pos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie1_hfp1pos TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie1_hfp1pos TO mspublic;

CREATE INDEX idx_fixpunktekategorie1_hfp1pos_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie1_hfp1pos
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie1_hfp1pos_tid
  ON av_avdpool_ch.fixpunktekategorie1_hfp1pos
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie1_hfp1pos_hfp1pos_von
  ON av_avdpool_ch.fixpunktekategorie1_hfp1pos
  USING btree
  (hfp1pos_von);

CREATE INDEX idx_fixpunktekategorie1_hfp1pos_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie1_hfp1pos
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie1_hfp1pos_los
  ON av_avdpool_ch.fixpunktekategorie1_hfp1pos
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie1_hfp1pos_pos
  ON av_avdpool_ch.fixpunktekategorie1_hfp1pos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie2_lfp2nachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigereintrag VARCHAR,
 datum1 VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie2_lfp2nachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie2_lfp2nachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie2_lfp2nachfuehrung TO mspublic;

CREATE INDEX idx_fixpunktekategorie2_lfp2nachfuehrung_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie2_lfp2nachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie2_lfp2nachfuehrung_tid
  ON av_avdpool_ch.fixpunktekategorie2_lfp2nachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie2_lfp2nachfuehrung_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie2_lfp2nachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie2_lfp2nachfuehrung_los
  ON av_avdpool_ch.fixpunktekategorie2_lfp2nachfuehrung
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie2_lfp2nachfuehrung_perimeter
  ON av_avdpool_ch.fixpunktekategorie2_lfp2nachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie2_lfp2
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 nbident VARCHAR,
 nummer VARCHAR,
 geometrie geometry(POINT, 21781),
 hoehegeom DOUBLE PRECISION,
 lagegen DOUBLE PRECISION,
 lagezuv INTEGER,
 lagezuv_txt VARCHAR,
 hoehegen DOUBLE PRECISION,
 hoehezuv INTEGER,
 hoehezuv_txt VARCHAR,
 begehbarkeit INTEGER,
 begehbarkeit_txt VARCHAR,
 punktzeichen INTEGER,
 punktzeichen_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie2_lfp2 OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie2_lfp2 TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie2_lfp2 TO mspublic;

CREATE INDEX idx_fixpunktekategorie2_lfp2_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie2_lfp2
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie2_lfp2_tid
  ON av_avdpool_ch.fixpunktekategorie2_lfp2
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie2_lfp2_entstehung
  ON av_avdpool_ch.fixpunktekategorie2_lfp2
  USING btree
  (entstehung);

CREATE INDEX idx_fixpunktekategorie2_lfp2_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie2_lfp2
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie2_lfp2_los
  ON av_avdpool_ch.fixpunktekategorie2_lfp2
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie2_lfp2_geometrie
  ON av_avdpool_ch.fixpunktekategorie2_lfp2
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie2_lfp2pos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 lfp2pos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie2_lfp2pos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie2_lfp2pos TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie2_lfp2pos TO mspublic;

CREATE INDEX idx_fixpunktekategorie2_lfp2pos_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie2_lfp2pos
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie2_lfp2pos_tid
  ON av_avdpool_ch.fixpunktekategorie2_lfp2pos
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie2_lfp2pos_lfp2pos_von
  ON av_avdpool_ch.fixpunktekategorie2_lfp2pos
  USING btree
  (lfp2pos_von);

CREATE INDEX idx_fixpunktekategorie2_lfp2pos_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie2_lfp2pos
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie2_lfp2pos_los
  ON av_avdpool_ch.fixpunktekategorie2_lfp2pos
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie2_lfp2pos_pos
  ON av_avdpool_ch.fixpunktekategorie2_lfp2pos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie2_lfp2symbol
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 lfp2symbol_von VARCHAR,
 ori DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie2_lfp2symbol OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie2_lfp2symbol TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie2_lfp2symbol TO mspublic;

CREATE INDEX idx_fixpunktekategorie2_lfp2symbol_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie2_lfp2symbol
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie2_lfp2symbol_tid
  ON av_avdpool_ch.fixpunktekategorie2_lfp2symbol
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie2_lfp2symbol_lfp2symbol_von
  ON av_avdpool_ch.fixpunktekategorie2_lfp2symbol
  USING btree
  (lfp2symbol_von);

CREATE INDEX idx_fixpunktekategorie2_lfp2symbol_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie2_lfp2symbol
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie2_lfp2symbol_los
  ON av_avdpool_ch.fixpunktekategorie2_lfp2symbol
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie2_hfp2nachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigereintrag VARCHAR,
 datum1 VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie2_hfp2nachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie2_hfp2nachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie2_hfp2nachfuehrung TO mspublic;

CREATE INDEX idx_fixpunktekategorie2_hfp2nachfuehrung_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie2_hfp2nachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie2_hfp2nachfuehrung_tid
  ON av_avdpool_ch.fixpunktekategorie2_hfp2nachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie2_hfp2nachfuehrung_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie2_hfp2nachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie2_hfp2nachfuehrung_los
  ON av_avdpool_ch.fixpunktekategorie2_hfp2nachfuehrung
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie2_hfp2nachfuehrung_perimeter
  ON av_avdpool_ch.fixpunktekategorie2_hfp2nachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie2_hfp2
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 nbident VARCHAR,
 nummer VARCHAR,
 geometrie geometry(POINT, 21781),
 hoehegeom DOUBLE PRECISION,
 lagegen DOUBLE PRECISION,
 lagezuv INTEGER,
 lagezuv_txt VARCHAR,
 hoehegen DOUBLE PRECISION,
 hoehezuv INTEGER,
 hoehezuv_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie2_hfp2 OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie2_hfp2 TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie2_hfp2 TO mspublic;

CREATE INDEX idx_fixpunktekategorie2_hfp2_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie2_hfp2
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie2_hfp2_tid
  ON av_avdpool_ch.fixpunktekategorie2_hfp2
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie2_hfp2_entstehung
  ON av_avdpool_ch.fixpunktekategorie2_hfp2
  USING btree
  (entstehung);

CREATE INDEX idx_fixpunktekategorie2_hfp2_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie2_hfp2
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie2_hfp2_los
  ON av_avdpool_ch.fixpunktekategorie2_hfp2
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie2_hfp2_geometrie
  ON av_avdpool_ch.fixpunktekategorie2_hfp2
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie2_hfp2pos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 hfp2pos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie2_hfp2pos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie2_hfp2pos TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie2_hfp2pos TO mspublic;

CREATE INDEX idx_fixpunktekategorie2_hfp2pos_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie2_hfp2pos
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie2_hfp2pos_tid
  ON av_avdpool_ch.fixpunktekategorie2_hfp2pos
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie2_hfp2pos_hfp2pos_von
  ON av_avdpool_ch.fixpunktekategorie2_hfp2pos
  USING btree
  (hfp2pos_von);

CREATE INDEX idx_fixpunktekategorie2_hfp2pos_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie2_hfp2pos
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie2_hfp2pos_los
  ON av_avdpool_ch.fixpunktekategorie2_hfp2pos
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie2_hfp2pos_pos
  ON av_avdpool_ch.fixpunktekategorie2_hfp2pos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie3_lfp3nachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigereintrag VARCHAR,
 datum1 VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie3_lfp3nachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie3_lfp3nachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie3_lfp3nachfuehrung TO mspublic;

CREATE INDEX idx_fixpunktekategorie3_lfp3nachfuehrung_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie3_lfp3nachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie3_lfp3nachfuehrung_tid
  ON av_avdpool_ch.fixpunktekategorie3_lfp3nachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie3_lfp3nachfuehrung_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie3_lfp3nachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie3_lfp3nachfuehrung_los
  ON av_avdpool_ch.fixpunktekategorie3_lfp3nachfuehrung
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie3_lfp3nachfuehrung_perimeter
  ON av_avdpool_ch.fixpunktekategorie3_lfp3nachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie3_lfp3
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 nbident VARCHAR,
 nummer VARCHAR,
 geometrie geometry(POINT, 21781),
 hoehegeom DOUBLE PRECISION,
 lagegen DOUBLE PRECISION,
 lagezuv INTEGER,
 lagezuv_txt VARCHAR,
 hoehegen DOUBLE PRECISION,
 hoehezuv INTEGER,
 hoehezuv_txt VARCHAR,
 punktzeichen INTEGER,
 punktzeichen_txt VARCHAR,
 protokoll INTEGER,
 protokoll_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie3_lfp3 OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie3_lfp3 TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie3_lfp3 TO mspublic;

CREATE INDEX idx_fixpunktekategorie3_lfp3_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie3_lfp3
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie3_lfp3_tid
  ON av_avdpool_ch.fixpunktekategorie3_lfp3
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie3_lfp3_entstehung
  ON av_avdpool_ch.fixpunktekategorie3_lfp3
  USING btree
  (entstehung);

CREATE INDEX idx_fixpunktekategorie3_lfp3_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie3_lfp3
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie3_lfp3_los
  ON av_avdpool_ch.fixpunktekategorie3_lfp3
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie3_lfp3_geometrie
  ON av_avdpool_ch.fixpunktekategorie3_lfp3
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie3_lfp3pos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 lfp3pos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie3_lfp3pos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie3_lfp3pos TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie3_lfp3pos TO mspublic;

CREATE INDEX idx_fixpunktekategorie3_lfp3pos_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie3_lfp3pos
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie3_lfp3pos_tid
  ON av_avdpool_ch.fixpunktekategorie3_lfp3pos
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie3_lfp3pos_lfp3pos_von
  ON av_avdpool_ch.fixpunktekategorie3_lfp3pos
  USING btree
  (lfp3pos_von);

CREATE INDEX idx_fixpunktekategorie3_lfp3pos_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie3_lfp3pos
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie3_lfp3pos_los
  ON av_avdpool_ch.fixpunktekategorie3_lfp3pos
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie3_lfp3pos_pos
  ON av_avdpool_ch.fixpunktekategorie3_lfp3pos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie3_lfp3symbol
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 lfp3symbol_von VARCHAR,
 ori DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie3_lfp3symbol OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie3_lfp3symbol TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie3_lfp3symbol TO mspublic;

CREATE INDEX idx_fixpunktekategorie3_lfp3symbol_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie3_lfp3symbol
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie3_lfp3symbol_tid
  ON av_avdpool_ch.fixpunktekategorie3_lfp3symbol
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie3_lfp3symbol_lfp3symbol_von
  ON av_avdpool_ch.fixpunktekategorie3_lfp3symbol
  USING btree
  (lfp3symbol_von);

CREATE INDEX idx_fixpunktekategorie3_lfp3symbol_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie3_lfp3symbol
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie3_lfp3symbol_los
  ON av_avdpool_ch.fixpunktekategorie3_lfp3symbol
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie3_hfp3nachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigereintrag VARCHAR,
 datum1 VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie3_hfp3nachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie3_hfp3nachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie3_hfp3nachfuehrung TO mspublic;

CREATE INDEX idx_fixpunktekategorie3_hfp3nachfuehrung_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie3_hfp3nachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie3_hfp3nachfuehrung_tid
  ON av_avdpool_ch.fixpunktekategorie3_hfp3nachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie3_hfp3nachfuehrung_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie3_hfp3nachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie3_hfp3nachfuehrung_los
  ON av_avdpool_ch.fixpunktekategorie3_hfp3nachfuehrung
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie3_hfp3nachfuehrung_perimeter
  ON av_avdpool_ch.fixpunktekategorie3_hfp3nachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie3_hfp3
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 nbident VARCHAR,
 nummer VARCHAR,
 geometrie geometry(POINT, 21781),
 hoehegeom DOUBLE PRECISION,
 lagegen DOUBLE PRECISION,
 lagezuv INTEGER,
 lagezuv_txt VARCHAR,
 hoehegen DOUBLE PRECISION,
 hoehezuv INTEGER,
 hoehezuv_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie3_hfp3 OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie3_hfp3 TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie3_hfp3 TO mspublic;

CREATE INDEX idx_fixpunktekategorie3_hfp3_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie3_hfp3
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie3_hfp3_tid
  ON av_avdpool_ch.fixpunktekategorie3_hfp3
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie3_hfp3_entstehung
  ON av_avdpool_ch.fixpunktekategorie3_hfp3
  USING btree
  (entstehung);

CREATE INDEX idx_fixpunktekategorie3_hfp3_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie3_hfp3
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie3_hfp3_los
  ON av_avdpool_ch.fixpunktekategorie3_hfp3
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie3_hfp3_geometrie
  ON av_avdpool_ch.fixpunktekategorie3_hfp3
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.fixpunktekategorie3_hfp3pos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 hfp3pos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.fixpunktekategorie3_hfp3pos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.fixpunktekategorie3_hfp3pos TO stefan;
GRANT SELECT ON av_avdpool_ch.fixpunktekategorie3_hfp3pos TO mspublic;

CREATE INDEX idx_fixpunktekategorie3_hfp3pos_ogc_fid
  ON av_avdpool_ch.fixpunktekategorie3_hfp3pos
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie3_hfp3pos_tid
  ON av_avdpool_ch.fixpunktekategorie3_hfp3pos
  USING btree
  (tid);

CREATE INDEX idx_fixpunktekategorie3_hfp3pos_hfp3pos_von
  ON av_avdpool_ch.fixpunktekategorie3_hfp3pos
  USING btree
  (hfp3pos_von);

CREATE INDEX idx_fixpunktekategorie3_hfp3pos_gem_bfs
  ON av_avdpool_ch.fixpunktekategorie3_hfp3pos
  USING btree
  (gem_bfs);

CREATE INDEX idx_fixpunktekategorie3_hfp3pos_los
  ON av_avdpool_ch.fixpunktekategorie3_hfp3pos
  USING btree
  (los);

CREATE INDEX idx_fixpunktekategorie3_hfp3pos_pos
  ON av_avdpool_ch.fixpunktekategorie3_hfp3pos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bodenbedeckung_bbnachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigkeit INTEGER,
 gueltigkeit_txt VARCHAR,
 gueltigereintrag VARCHAR,
 datum1 VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bodenbedeckung_bbnachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bodenbedeckung_bbnachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.bodenbedeckung_bbnachfuehrung TO mspublic;

CREATE INDEX idx_bodenbedeckung_bbnachfuehrung_ogc_fid
  ON av_avdpool_ch.bodenbedeckung_bbnachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung_bbnachfuehrung_tid
  ON av_avdpool_ch.bodenbedeckung_bbnachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_bodenbedeckung_bbnachfuehrung_gem_bfs
  ON av_avdpool_ch.bodenbedeckung_bbnachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_bodenbedeckung_bbnachfuehrung_los
  ON av_avdpool_ch.bodenbedeckung_bbnachfuehrung
  USING btree
  (los);

CREATE INDEX idx_bodenbedeckung_bbnachfuehrung_perimeter
  ON av_avdpool_ch.bodenbedeckung_bbnachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bodenbedeckung_projboflaeche
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 geometrie geometry(POLYGON, 21781),
 qualitaet INTEGER,
 qualitaet_txt VARCHAR,
 art INTEGER,
 art_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bodenbedeckung_projboflaeche OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bodenbedeckung_projboflaeche TO stefan;
GRANT SELECT ON av_avdpool_ch.bodenbedeckung_projboflaeche TO mspublic;

CREATE INDEX idx_bodenbedeckung_projboflaeche_ogc_fid
  ON av_avdpool_ch.bodenbedeckung_projboflaeche
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung_projboflaeche_tid
  ON av_avdpool_ch.bodenbedeckung_projboflaeche
  USING btree
  (tid);

CREATE INDEX idx_bodenbedeckung_projboflaeche_entstehung
  ON av_avdpool_ch.bodenbedeckung_projboflaeche
  USING btree
  (entstehung);

CREATE INDEX idx_bodenbedeckung_projboflaeche_gem_bfs
  ON av_avdpool_ch.bodenbedeckung_projboflaeche
  USING btree
  (gem_bfs);

CREATE INDEX idx_bodenbedeckung_projboflaeche_los
  ON av_avdpool_ch.bodenbedeckung_projboflaeche
  USING btree
  (los);

CREATE INDEX idx_bodenbedeckung_projboflaeche_geometrie
  ON av_avdpool_ch.bodenbedeckung_projboflaeche
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bodenbedeckung_projgebaeudenummer
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 projgebaeudenummer_von VARCHAR,
 nummer VARCHAR,
 gwr_egid DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bodenbedeckung_projgebaeudenummer OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bodenbedeckung_projgebaeudenummer TO stefan;
GRANT SELECT ON av_avdpool_ch.bodenbedeckung_projgebaeudenummer TO mspublic;

CREATE INDEX idx_bodenbedeckung_projgebaeudenummer_ogc_fid
  ON av_avdpool_ch.bodenbedeckung_projgebaeudenummer
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung_projgebaeudenummer_tid
  ON av_avdpool_ch.bodenbedeckung_projgebaeudenummer
  USING btree
  (tid);

CREATE INDEX idx_bodenbedeckung_projgebaeudenummer_projgebaeudenummer_von
  ON av_avdpool_ch.bodenbedeckung_projgebaeudenummer
  USING btree
  (projgebaeudenummer_von);

CREATE INDEX idx_bodenbedeckung_projgebaeudenummer_gem_bfs
  ON av_avdpool_ch.bodenbedeckung_projgebaeudenummer
  USING btree
  (gem_bfs);

CREATE INDEX idx_bodenbedeckung_projgebaeudenummer_los
  ON av_avdpool_ch.bodenbedeckung_projgebaeudenummer
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bodenbedeckung_projgebaeudenummerpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 projgebaeudenummerpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bodenbedeckung_projgebaeudenummerpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bodenbedeckung_projgebaeudenummerpos TO stefan;
GRANT SELECT ON av_avdpool_ch.bodenbedeckung_projgebaeudenummerpos TO mspublic;

CREATE INDEX idx_bodenbedeckung_projgebaeudenummerpos_ogc_fid
  ON av_avdpool_ch.bodenbedeckung_projgebaeudenummerpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung_projgebaeudenummerpos_tid
  ON av_avdpool_ch.bodenbedeckung_projgebaeudenummerpos
  USING btree
  (tid);

CREATE INDEX idx_bodenbedeckung_projgebaeudenummerpos_projgebaeudenummerpos_von
  ON av_avdpool_ch.bodenbedeckung_projgebaeudenummerpos
  USING btree
  (projgebaeudenummerpos_von);

CREATE INDEX idx_bodenbedeckung_projgebaeudenummerpos_gem_bfs
  ON av_avdpool_ch.bodenbedeckung_projgebaeudenummerpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_bodenbedeckung_projgebaeudenummerpos_los
  ON av_avdpool_ch.bodenbedeckung_projgebaeudenummerpos
  USING btree
  (los);

CREATE INDEX idx_bodenbedeckung_projgebaeudenummerpos_pos
  ON av_avdpool_ch.bodenbedeckung_projgebaeudenummerpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bodenbedeckung_projobjektname
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 projobjektname_von VARCHAR,
 name VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bodenbedeckung_projobjektname OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bodenbedeckung_projobjektname TO stefan;
GRANT SELECT ON av_avdpool_ch.bodenbedeckung_projobjektname TO mspublic;

CREATE INDEX idx_bodenbedeckung_projobjektname_ogc_fid
  ON av_avdpool_ch.bodenbedeckung_projobjektname
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung_projobjektname_tid
  ON av_avdpool_ch.bodenbedeckung_projobjektname
  USING btree
  (tid);

CREATE INDEX idx_bodenbedeckung_projobjektname_projobjektname_von
  ON av_avdpool_ch.bodenbedeckung_projobjektname
  USING btree
  (projobjektname_von);

CREATE INDEX idx_bodenbedeckung_projobjektname_gem_bfs
  ON av_avdpool_ch.bodenbedeckung_projobjektname
  USING btree
  (gem_bfs);

CREATE INDEX idx_bodenbedeckung_projobjektname_los
  ON av_avdpool_ch.bodenbedeckung_projobjektname
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bodenbedeckung_projobjektnamepos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 projobjektnamepos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bodenbedeckung_projobjektnamepos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bodenbedeckung_projobjektnamepos TO stefan;
GRANT SELECT ON av_avdpool_ch.bodenbedeckung_projobjektnamepos TO mspublic;

CREATE INDEX idx_bodenbedeckung_projobjektnamepos_ogc_fid
  ON av_avdpool_ch.bodenbedeckung_projobjektnamepos
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung_projobjektnamepos_tid
  ON av_avdpool_ch.bodenbedeckung_projobjektnamepos
  USING btree
  (tid);

CREATE INDEX idx_bodenbedeckung_projobjektnamepos_projobjektnamepos_von
  ON av_avdpool_ch.bodenbedeckung_projobjektnamepos
  USING btree
  (projobjektnamepos_von);

CREATE INDEX idx_bodenbedeckung_projobjektnamepos_gem_bfs
  ON av_avdpool_ch.bodenbedeckung_projobjektnamepos
  USING btree
  (gem_bfs);

CREATE INDEX idx_bodenbedeckung_projobjektnamepos_los
  ON av_avdpool_ch.bodenbedeckung_projobjektnamepos
  USING btree
  (los);

CREATE INDEX idx_bodenbedeckung_projobjektnamepos_pos
  ON av_avdpool_ch.bodenbedeckung_projobjektnamepos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bodenbedeckung_projboflaechesymbol
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 projboflaechesymbol_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bodenbedeckung_projboflaechesymbol OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bodenbedeckung_projboflaechesymbol TO stefan;
GRANT SELECT ON av_avdpool_ch.bodenbedeckung_projboflaechesymbol TO mspublic;

CREATE INDEX idx_bodenbedeckung_projboflaechesymbol_ogc_fid
  ON av_avdpool_ch.bodenbedeckung_projboflaechesymbol
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung_projboflaechesymbol_tid
  ON av_avdpool_ch.bodenbedeckung_projboflaechesymbol
  USING btree
  (tid);

CREATE INDEX idx_bodenbedeckung_projboflaechesymbol_projboflaechesymbol_von
  ON av_avdpool_ch.bodenbedeckung_projboflaechesymbol
  USING btree
  (projboflaechesymbol_von);

CREATE INDEX idx_bodenbedeckung_projboflaechesymbol_gem_bfs
  ON av_avdpool_ch.bodenbedeckung_projboflaechesymbol
  USING btree
  (gem_bfs);

CREATE INDEX idx_bodenbedeckung_projboflaechesymbol_los
  ON av_avdpool_ch.bodenbedeckung_projboflaechesymbol
  USING btree
  (los);

CREATE INDEX idx_bodenbedeckung_projboflaechesymbol_pos
  ON av_avdpool_ch.bodenbedeckung_projboflaechesymbol
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bodenbedeckung_boflaeche
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 geometrie geometry(POLYGON, 21781),
 qualitaet INTEGER,
 qualitaet_txt VARCHAR,
 art INTEGER,
 art_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bodenbedeckung_boflaeche OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bodenbedeckung_boflaeche TO stefan;
GRANT SELECT ON av_avdpool_ch.bodenbedeckung_boflaeche TO mspublic;

CREATE INDEX idx_bodenbedeckung_boflaeche_ogc_fid
  ON av_avdpool_ch.bodenbedeckung_boflaeche
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung_boflaeche_tid
  ON av_avdpool_ch.bodenbedeckung_boflaeche
  USING btree
  (tid);

CREATE INDEX idx_bodenbedeckung_boflaeche_entstehung
  ON av_avdpool_ch.bodenbedeckung_boflaeche
  USING btree
  (entstehung);

CREATE INDEX idx_bodenbedeckung_boflaeche_gem_bfs
  ON av_avdpool_ch.bodenbedeckung_boflaeche
  USING btree
  (gem_bfs);

CREATE INDEX idx_bodenbedeckung_boflaeche_los
  ON av_avdpool_ch.bodenbedeckung_boflaeche
  USING btree
  (los);

CREATE INDEX idx_bodenbedeckung_boflaeche_geometrie
  ON av_avdpool_ch.bodenbedeckung_boflaeche
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bodenbedeckung_gebaeudenummer
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 gebaeudenummer_von VARCHAR,
 nummer VARCHAR,
 gwr_egid DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bodenbedeckung_gebaeudenummer OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bodenbedeckung_gebaeudenummer TO stefan;
GRANT SELECT ON av_avdpool_ch.bodenbedeckung_gebaeudenummer TO mspublic;

CREATE INDEX idx_bodenbedeckung_gebaeudenummer_ogc_fid
  ON av_avdpool_ch.bodenbedeckung_gebaeudenummer
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung_gebaeudenummer_tid
  ON av_avdpool_ch.bodenbedeckung_gebaeudenummer
  USING btree
  (tid);

CREATE INDEX idx_bodenbedeckung_gebaeudenummer_gebaeudenummer_von
  ON av_avdpool_ch.bodenbedeckung_gebaeudenummer
  USING btree
  (gebaeudenummer_von);

CREATE INDEX idx_bodenbedeckung_gebaeudenummer_gem_bfs
  ON av_avdpool_ch.bodenbedeckung_gebaeudenummer
  USING btree
  (gem_bfs);

CREATE INDEX idx_bodenbedeckung_gebaeudenummer_los
  ON av_avdpool_ch.bodenbedeckung_gebaeudenummer
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bodenbedeckung_gebaeudenummerpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 gebaeudenummerpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bodenbedeckung_gebaeudenummerpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bodenbedeckung_gebaeudenummerpos TO stefan;
GRANT SELECT ON av_avdpool_ch.bodenbedeckung_gebaeudenummerpos TO mspublic;

CREATE INDEX idx_bodenbedeckung_gebaeudenummerpos_ogc_fid
  ON av_avdpool_ch.bodenbedeckung_gebaeudenummerpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung_gebaeudenummerpos_tid
  ON av_avdpool_ch.bodenbedeckung_gebaeudenummerpos
  USING btree
  (tid);

CREATE INDEX idx_bodenbedeckung_gebaeudenummerpos_gebaeudenummerpos_von
  ON av_avdpool_ch.bodenbedeckung_gebaeudenummerpos
  USING btree
  (gebaeudenummerpos_von);

CREATE INDEX idx_bodenbedeckung_gebaeudenummerpos_gem_bfs
  ON av_avdpool_ch.bodenbedeckung_gebaeudenummerpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_bodenbedeckung_gebaeudenummerpos_los
  ON av_avdpool_ch.bodenbedeckung_gebaeudenummerpos
  USING btree
  (los);

CREATE INDEX idx_bodenbedeckung_gebaeudenummerpos_pos
  ON av_avdpool_ch.bodenbedeckung_gebaeudenummerpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bodenbedeckung_objektname
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 objektname_von VARCHAR,
 name VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bodenbedeckung_objektname OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bodenbedeckung_objektname TO stefan;
GRANT SELECT ON av_avdpool_ch.bodenbedeckung_objektname TO mspublic;

CREATE INDEX idx_bodenbedeckung_objektname_ogc_fid
  ON av_avdpool_ch.bodenbedeckung_objektname
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung_objektname_tid
  ON av_avdpool_ch.bodenbedeckung_objektname
  USING btree
  (tid);

CREATE INDEX idx_bodenbedeckung_objektname_objektname_von
  ON av_avdpool_ch.bodenbedeckung_objektname
  USING btree
  (objektname_von);

CREATE INDEX idx_bodenbedeckung_objektname_gem_bfs
  ON av_avdpool_ch.bodenbedeckung_objektname
  USING btree
  (gem_bfs);

CREATE INDEX idx_bodenbedeckung_objektname_los
  ON av_avdpool_ch.bodenbedeckung_objektname
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bodenbedeckung_objektnamepos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 objektnamepos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bodenbedeckung_objektnamepos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bodenbedeckung_objektnamepos TO stefan;
GRANT SELECT ON av_avdpool_ch.bodenbedeckung_objektnamepos TO mspublic;

CREATE INDEX idx_bodenbedeckung_objektnamepos_ogc_fid
  ON av_avdpool_ch.bodenbedeckung_objektnamepos
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung_objektnamepos_tid
  ON av_avdpool_ch.bodenbedeckung_objektnamepos
  USING btree
  (tid);

CREATE INDEX idx_bodenbedeckung_objektnamepos_objektnamepos_von
  ON av_avdpool_ch.bodenbedeckung_objektnamepos
  USING btree
  (objektnamepos_von);

CREATE INDEX idx_bodenbedeckung_objektnamepos_gem_bfs
  ON av_avdpool_ch.bodenbedeckung_objektnamepos
  USING btree
  (gem_bfs);

CREATE INDEX idx_bodenbedeckung_objektnamepos_los
  ON av_avdpool_ch.bodenbedeckung_objektnamepos
  USING btree
  (los);

CREATE INDEX idx_bodenbedeckung_objektnamepos_pos
  ON av_avdpool_ch.bodenbedeckung_objektnamepos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bodenbedeckung_boflaechesymbol
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 boflaechesymbol_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bodenbedeckung_boflaechesymbol OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bodenbedeckung_boflaechesymbol TO stefan;
GRANT SELECT ON av_avdpool_ch.bodenbedeckung_boflaechesymbol TO mspublic;

CREATE INDEX idx_bodenbedeckung_boflaechesymbol_ogc_fid
  ON av_avdpool_ch.bodenbedeckung_boflaechesymbol
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung_boflaechesymbol_tid
  ON av_avdpool_ch.bodenbedeckung_boflaechesymbol
  USING btree
  (tid);

CREATE INDEX idx_bodenbedeckung_boflaechesymbol_boflaechesymbol_von
  ON av_avdpool_ch.bodenbedeckung_boflaechesymbol
  USING btree
  (boflaechesymbol_von);

CREATE INDEX idx_bodenbedeckung_boflaechesymbol_gem_bfs
  ON av_avdpool_ch.bodenbedeckung_boflaechesymbol
  USING btree
  (gem_bfs);

CREATE INDEX idx_bodenbedeckung_boflaechesymbol_los
  ON av_avdpool_ch.bodenbedeckung_boflaechesymbol
  USING btree
  (los);

CREATE INDEX idx_bodenbedeckung_boflaechesymbol_pos
  ON av_avdpool_ch.bodenbedeckung_boflaechesymbol
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bodenbedeckung_einzelpunkt
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 identifikator VARCHAR,
 geometrie geometry(POINT, 21781),
 lagegen DOUBLE PRECISION,
 lagezuv INTEGER,
 lagezuv_txt VARCHAR,
 exaktdefiniert INTEGER,
 exaktdefiniert_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bodenbedeckung_einzelpunkt OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bodenbedeckung_einzelpunkt TO stefan;
GRANT SELECT ON av_avdpool_ch.bodenbedeckung_einzelpunkt TO mspublic;

CREATE INDEX idx_bodenbedeckung_einzelpunkt_ogc_fid
  ON av_avdpool_ch.bodenbedeckung_einzelpunkt
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung_einzelpunkt_tid
  ON av_avdpool_ch.bodenbedeckung_einzelpunkt
  USING btree
  (tid);

CREATE INDEX idx_bodenbedeckung_einzelpunkt_entstehung
  ON av_avdpool_ch.bodenbedeckung_einzelpunkt
  USING btree
  (entstehung);

CREATE INDEX idx_bodenbedeckung_einzelpunkt_gem_bfs
  ON av_avdpool_ch.bodenbedeckung_einzelpunkt
  USING btree
  (gem_bfs);

CREATE INDEX idx_bodenbedeckung_einzelpunkt_los
  ON av_avdpool_ch.bodenbedeckung_einzelpunkt
  USING btree
  (los);

CREATE INDEX idx_bodenbedeckung_einzelpunkt_geometrie
  ON av_avdpool_ch.bodenbedeckung_einzelpunkt
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bodenbedeckung_einzelpunktpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 einzelpunktpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bodenbedeckung_einzelpunktpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bodenbedeckung_einzelpunktpos TO stefan;
GRANT SELECT ON av_avdpool_ch.bodenbedeckung_einzelpunktpos TO mspublic;

CREATE INDEX idx_bodenbedeckung_einzelpunktpos_ogc_fid
  ON av_avdpool_ch.bodenbedeckung_einzelpunktpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung_einzelpunktpos_tid
  ON av_avdpool_ch.bodenbedeckung_einzelpunktpos
  USING btree
  (tid);

CREATE INDEX idx_bodenbedeckung_einzelpunktpos_einzelpunktpos_von
  ON av_avdpool_ch.bodenbedeckung_einzelpunktpos
  USING btree
  (einzelpunktpos_von);

CREATE INDEX idx_bodenbedeckung_einzelpunktpos_gem_bfs
  ON av_avdpool_ch.bodenbedeckung_einzelpunktpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_bodenbedeckung_einzelpunktpos_los
  ON av_avdpool_ch.bodenbedeckung_einzelpunktpos
  USING btree
  (los);

CREATE INDEX idx_bodenbedeckung_einzelpunktpos_pos
  ON av_avdpool_ch.bodenbedeckung_einzelpunktpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.einzelobjekte_eonachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigkeit INTEGER,
 gueltigkeit_txt VARCHAR,
 gueltigereintrag VARCHAR,
 datum1 VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.einzelobjekte_eonachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.einzelobjekte_eonachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.einzelobjekte_eonachfuehrung TO mspublic;

CREATE INDEX idx_einzelobjekte_eonachfuehrung_ogc_fid
  ON av_avdpool_ch.einzelobjekte_eonachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte_eonachfuehrung_tid
  ON av_avdpool_ch.einzelobjekte_eonachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_einzelobjekte_eonachfuehrung_gem_bfs
  ON av_avdpool_ch.einzelobjekte_eonachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_einzelobjekte_eonachfuehrung_los
  ON av_avdpool_ch.einzelobjekte_eonachfuehrung
  USING btree
  (los);

CREATE INDEX idx_einzelobjekte_eonachfuehrung_perimeter
  ON av_avdpool_ch.einzelobjekte_eonachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.einzelobjekte_einzelobjekt
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 qualitaet INTEGER,
 qualitaet_txt VARCHAR,
 art INTEGER,
 art_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.einzelobjekte_einzelobjekt OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.einzelobjekte_einzelobjekt TO stefan;
GRANT SELECT ON av_avdpool_ch.einzelobjekte_einzelobjekt TO mspublic;

CREATE INDEX idx_einzelobjekte_einzelobjekt_ogc_fid
  ON av_avdpool_ch.einzelobjekte_einzelobjekt
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte_einzelobjekt_tid
  ON av_avdpool_ch.einzelobjekte_einzelobjekt
  USING btree
  (tid);

CREATE INDEX idx_einzelobjekte_einzelobjekt_entstehung
  ON av_avdpool_ch.einzelobjekte_einzelobjekt
  USING btree
  (entstehung);

CREATE INDEX idx_einzelobjekte_einzelobjekt_gem_bfs
  ON av_avdpool_ch.einzelobjekte_einzelobjekt
  USING btree
  (gem_bfs);

CREATE INDEX idx_einzelobjekte_einzelobjekt_los
  ON av_avdpool_ch.einzelobjekte_einzelobjekt
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.einzelobjekte_flaechenelement
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 flaechenelement_von VARCHAR,
 geometrie geometry(POLYGON, 21781),
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.einzelobjekte_flaechenelement OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.einzelobjekte_flaechenelement TO stefan;
GRANT SELECT ON av_avdpool_ch.einzelobjekte_flaechenelement TO mspublic;

CREATE INDEX idx_einzelobjekte_flaechenelement_ogc_fid
  ON av_avdpool_ch.einzelobjekte_flaechenelement
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte_flaechenelement_tid
  ON av_avdpool_ch.einzelobjekte_flaechenelement
  USING btree
  (tid);

CREATE INDEX idx_einzelobjekte_flaechenelement_flaechenelement_von
  ON av_avdpool_ch.einzelobjekte_flaechenelement
  USING btree
  (flaechenelement_von);

CREATE INDEX idx_einzelobjekte_flaechenelement_gem_bfs
  ON av_avdpool_ch.einzelobjekte_flaechenelement
  USING btree
  (gem_bfs);

CREATE INDEX idx_einzelobjekte_flaechenelement_los
  ON av_avdpool_ch.einzelobjekte_flaechenelement
  USING btree
  (los);

CREATE INDEX idx_einzelobjekte_flaechenelement_geometrie
  ON av_avdpool_ch.einzelobjekte_flaechenelement
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.einzelobjekte_flaechenelementsymbol
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 flaechenelementsymbol_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.einzelobjekte_flaechenelementsymbol OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.einzelobjekte_flaechenelementsymbol TO stefan;
GRANT SELECT ON av_avdpool_ch.einzelobjekte_flaechenelementsymbol TO mspublic;

CREATE INDEX idx_einzelobjekte_flaechenelementsymbol_ogc_fid
  ON av_avdpool_ch.einzelobjekte_flaechenelementsymbol
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte_flaechenelementsymbol_tid
  ON av_avdpool_ch.einzelobjekte_flaechenelementsymbol
  USING btree
  (tid);

CREATE INDEX idx_einzelobjekte_flaechenelementsymbol_flaechenelementsymbol_von
  ON av_avdpool_ch.einzelobjekte_flaechenelementsymbol
  USING btree
  (flaechenelementsymbol_von);

CREATE INDEX idx_einzelobjekte_flaechenelementsymbol_gem_bfs
  ON av_avdpool_ch.einzelobjekte_flaechenelementsymbol
  USING btree
  (gem_bfs);

CREATE INDEX idx_einzelobjekte_flaechenelementsymbol_los
  ON av_avdpool_ch.einzelobjekte_flaechenelementsymbol
  USING btree
  (los);

CREATE INDEX idx_einzelobjekte_flaechenelementsymbol_pos
  ON av_avdpool_ch.einzelobjekte_flaechenelementsymbol
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.einzelobjekte_linienelement
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 linienelement_von VARCHAR,
 geometrie geometry(LINESTRING, 21781),
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.einzelobjekte_linienelement OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.einzelobjekte_linienelement TO stefan;
GRANT SELECT ON av_avdpool_ch.einzelobjekte_linienelement TO mspublic;

CREATE INDEX idx_einzelobjekte_linienelement_ogc_fid
  ON av_avdpool_ch.einzelobjekte_linienelement
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte_linienelement_tid
  ON av_avdpool_ch.einzelobjekte_linienelement
  USING btree
  (tid);

CREATE INDEX idx_einzelobjekte_linienelement_linienelement_von
  ON av_avdpool_ch.einzelobjekte_linienelement
  USING btree
  (linienelement_von);

CREATE INDEX idx_einzelobjekte_linienelement_gem_bfs
  ON av_avdpool_ch.einzelobjekte_linienelement
  USING btree
  (gem_bfs);

CREATE INDEX idx_einzelobjekte_linienelement_los
  ON av_avdpool_ch.einzelobjekte_linienelement
  USING btree
  (los);

CREATE INDEX idx_einzelobjekte_linienelement_geometrie
  ON av_avdpool_ch.einzelobjekte_linienelement
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.einzelobjekte_linienelementsymbol
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 linienelementsymbol_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.einzelobjekte_linienelementsymbol OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.einzelobjekte_linienelementsymbol TO stefan;
GRANT SELECT ON av_avdpool_ch.einzelobjekte_linienelementsymbol TO mspublic;

CREATE INDEX idx_einzelobjekte_linienelementsymbol_ogc_fid
  ON av_avdpool_ch.einzelobjekte_linienelementsymbol
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte_linienelementsymbol_tid
  ON av_avdpool_ch.einzelobjekte_linienelementsymbol
  USING btree
  (tid);

CREATE INDEX idx_einzelobjekte_linienelementsymbol_linienelementsymbol_von
  ON av_avdpool_ch.einzelobjekte_linienelementsymbol
  USING btree
  (linienelementsymbol_von);

CREATE INDEX idx_einzelobjekte_linienelementsymbol_gem_bfs
  ON av_avdpool_ch.einzelobjekte_linienelementsymbol
  USING btree
  (gem_bfs);

CREATE INDEX idx_einzelobjekte_linienelementsymbol_los
  ON av_avdpool_ch.einzelobjekte_linienelementsymbol
  USING btree
  (los);

CREATE INDEX idx_einzelobjekte_linienelementsymbol_pos
  ON av_avdpool_ch.einzelobjekte_linienelementsymbol
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.einzelobjekte_punktelement
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 punktelement_von VARCHAR,
 geometrie geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.einzelobjekte_punktelement OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.einzelobjekte_punktelement TO stefan;
GRANT SELECT ON av_avdpool_ch.einzelobjekte_punktelement TO mspublic;

CREATE INDEX idx_einzelobjekte_punktelement_ogc_fid
  ON av_avdpool_ch.einzelobjekte_punktelement
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte_punktelement_tid
  ON av_avdpool_ch.einzelobjekte_punktelement
  USING btree
  (tid);

CREATE INDEX idx_einzelobjekte_punktelement_punktelement_von
  ON av_avdpool_ch.einzelobjekte_punktelement
  USING btree
  (punktelement_von);

CREATE INDEX idx_einzelobjekte_punktelement_gem_bfs
  ON av_avdpool_ch.einzelobjekte_punktelement
  USING btree
  (gem_bfs);

CREATE INDEX idx_einzelobjekte_punktelement_los
  ON av_avdpool_ch.einzelobjekte_punktelement
  USING btree
  (los);

CREATE INDEX idx_einzelobjekte_punktelement_geometrie
  ON av_avdpool_ch.einzelobjekte_punktelement
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.einzelobjekte_objektname
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 objektname_von VARCHAR,
 name VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.einzelobjekte_objektname OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.einzelobjekte_objektname TO stefan;
GRANT SELECT ON av_avdpool_ch.einzelobjekte_objektname TO mspublic;

CREATE INDEX idx_einzelobjekte_objektname_ogc_fid
  ON av_avdpool_ch.einzelobjekte_objektname
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte_objektname_tid
  ON av_avdpool_ch.einzelobjekte_objektname
  USING btree
  (tid);

CREATE INDEX idx_einzelobjekte_objektname_objektname_von
  ON av_avdpool_ch.einzelobjekte_objektname
  USING btree
  (objektname_von);

CREATE INDEX idx_einzelobjekte_objektname_gem_bfs
  ON av_avdpool_ch.einzelobjekte_objektname
  USING btree
  (gem_bfs);

CREATE INDEX idx_einzelobjekte_objektname_los
  ON av_avdpool_ch.einzelobjekte_objektname
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.einzelobjekte_objektnamepos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 objektnamepos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.einzelobjekte_objektnamepos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.einzelobjekte_objektnamepos TO stefan;
GRANT SELECT ON av_avdpool_ch.einzelobjekte_objektnamepos TO mspublic;

CREATE INDEX idx_einzelobjekte_objektnamepos_ogc_fid
  ON av_avdpool_ch.einzelobjekte_objektnamepos
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte_objektnamepos_tid
  ON av_avdpool_ch.einzelobjekte_objektnamepos
  USING btree
  (tid);

CREATE INDEX idx_einzelobjekte_objektnamepos_objektnamepos_von
  ON av_avdpool_ch.einzelobjekte_objektnamepos
  USING btree
  (objektnamepos_von);

CREATE INDEX idx_einzelobjekte_objektnamepos_gem_bfs
  ON av_avdpool_ch.einzelobjekte_objektnamepos
  USING btree
  (gem_bfs);

CREATE INDEX idx_einzelobjekte_objektnamepos_los
  ON av_avdpool_ch.einzelobjekte_objektnamepos
  USING btree
  (los);

CREATE INDEX idx_einzelobjekte_objektnamepos_pos
  ON av_avdpool_ch.einzelobjekte_objektnamepos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.einzelobjekte_objektnummer
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 objektnummer_von VARCHAR,
 nummer VARCHAR,
 gwr_egid DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.einzelobjekte_objektnummer OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.einzelobjekte_objektnummer TO stefan;
GRANT SELECT ON av_avdpool_ch.einzelobjekte_objektnummer TO mspublic;

CREATE INDEX idx_einzelobjekte_objektnummer_ogc_fid
  ON av_avdpool_ch.einzelobjekte_objektnummer
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte_objektnummer_tid
  ON av_avdpool_ch.einzelobjekte_objektnummer
  USING btree
  (tid);

CREATE INDEX idx_einzelobjekte_objektnummer_objektnummer_von
  ON av_avdpool_ch.einzelobjekte_objektnummer
  USING btree
  (objektnummer_von);

CREATE INDEX idx_einzelobjekte_objektnummer_gem_bfs
  ON av_avdpool_ch.einzelobjekte_objektnummer
  USING btree
  (gem_bfs);

CREATE INDEX idx_einzelobjekte_objektnummer_los
  ON av_avdpool_ch.einzelobjekte_objektnummer
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.einzelobjekte_objektnummerpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 objektnummerpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.einzelobjekte_objektnummerpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.einzelobjekte_objektnummerpos TO stefan;
GRANT SELECT ON av_avdpool_ch.einzelobjekte_objektnummerpos TO mspublic;

CREATE INDEX idx_einzelobjekte_objektnummerpos_ogc_fid
  ON av_avdpool_ch.einzelobjekte_objektnummerpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte_objektnummerpos_tid
  ON av_avdpool_ch.einzelobjekte_objektnummerpos
  USING btree
  (tid);

CREATE INDEX idx_einzelobjekte_objektnummerpos_objektnummerpos_von
  ON av_avdpool_ch.einzelobjekte_objektnummerpos
  USING btree
  (objektnummerpos_von);

CREATE INDEX idx_einzelobjekte_objektnummerpos_gem_bfs
  ON av_avdpool_ch.einzelobjekte_objektnummerpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_einzelobjekte_objektnummerpos_los
  ON av_avdpool_ch.einzelobjekte_objektnummerpos
  USING btree
  (los);

CREATE INDEX idx_einzelobjekte_objektnummerpos_pos
  ON av_avdpool_ch.einzelobjekte_objektnummerpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.einzelobjekte_einzelpunkt
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 identifikator VARCHAR,
 geometrie geometry(POINT, 21781),
 lagegen DOUBLE PRECISION,
 lagezuv INTEGER,
 lagezuv_txt VARCHAR,
 exaktdefiniert INTEGER,
 exaktdefiniert_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.einzelobjekte_einzelpunkt OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.einzelobjekte_einzelpunkt TO stefan;
GRANT SELECT ON av_avdpool_ch.einzelobjekte_einzelpunkt TO mspublic;

CREATE INDEX idx_einzelobjekte_einzelpunkt_ogc_fid
  ON av_avdpool_ch.einzelobjekte_einzelpunkt
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte_einzelpunkt_tid
  ON av_avdpool_ch.einzelobjekte_einzelpunkt
  USING btree
  (tid);

CREATE INDEX idx_einzelobjekte_einzelpunkt_entstehung
  ON av_avdpool_ch.einzelobjekte_einzelpunkt
  USING btree
  (entstehung);

CREATE INDEX idx_einzelobjekte_einzelpunkt_gem_bfs
  ON av_avdpool_ch.einzelobjekte_einzelpunkt
  USING btree
  (gem_bfs);

CREATE INDEX idx_einzelobjekte_einzelpunkt_los
  ON av_avdpool_ch.einzelobjekte_einzelpunkt
  USING btree
  (los);

CREATE INDEX idx_einzelobjekte_einzelpunkt_geometrie
  ON av_avdpool_ch.einzelobjekte_einzelpunkt
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.einzelobjekte_einzelpunktpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 einzelpunktpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.einzelobjekte_einzelpunktpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.einzelobjekte_einzelpunktpos TO stefan;
GRANT SELECT ON av_avdpool_ch.einzelobjekte_einzelpunktpos TO mspublic;

CREATE INDEX idx_einzelobjekte_einzelpunktpos_ogc_fid
  ON av_avdpool_ch.einzelobjekte_einzelpunktpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte_einzelpunktpos_tid
  ON av_avdpool_ch.einzelobjekte_einzelpunktpos
  USING btree
  (tid);

CREATE INDEX idx_einzelobjekte_einzelpunktpos_einzelpunktpos_von
  ON av_avdpool_ch.einzelobjekte_einzelpunktpos
  USING btree
  (einzelpunktpos_von);

CREATE INDEX idx_einzelobjekte_einzelpunktpos_gem_bfs
  ON av_avdpool_ch.einzelobjekte_einzelpunktpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_einzelobjekte_einzelpunktpos_los
  ON av_avdpool_ch.einzelobjekte_einzelpunktpos
  USING btree
  (los);

CREATE INDEX idx_einzelobjekte_einzelpunktpos_pos
  ON av_avdpool_ch.einzelobjekte_einzelpunktpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.hoehen_honachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigkeit INTEGER,
 gueltigkeit_txt VARCHAR,
 gueltigereintrag VARCHAR,
 datum1 VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.hoehen_honachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.hoehen_honachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.hoehen_honachfuehrung TO mspublic;

CREATE INDEX idx_hoehen_honachfuehrung_ogc_fid
  ON av_avdpool_ch.hoehen_honachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_hoehen_honachfuehrung_tid
  ON av_avdpool_ch.hoehen_honachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_hoehen_honachfuehrung_gem_bfs
  ON av_avdpool_ch.hoehen_honachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_hoehen_honachfuehrung_los
  ON av_avdpool_ch.hoehen_honachfuehrung
  USING btree
  (los);

CREATE INDEX idx_hoehen_honachfuehrung_perimeter
  ON av_avdpool_ch.hoehen_honachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.hoehen_hoehenpunkt
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 geometrie geometry(POINT, 21781),
 qualitaet INTEGER,
 qualitaet_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.hoehen_hoehenpunkt OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.hoehen_hoehenpunkt TO stefan;
GRANT SELECT ON av_avdpool_ch.hoehen_hoehenpunkt TO mspublic;

CREATE INDEX idx_hoehen_hoehenpunkt_ogc_fid
  ON av_avdpool_ch.hoehen_hoehenpunkt
  USING btree
  (ogc_fid);

CREATE INDEX idx_hoehen_hoehenpunkt_tid
  ON av_avdpool_ch.hoehen_hoehenpunkt
  USING btree
  (tid);

CREATE INDEX idx_hoehen_hoehenpunkt_entstehung
  ON av_avdpool_ch.hoehen_hoehenpunkt
  USING btree
  (entstehung);

CREATE INDEX idx_hoehen_hoehenpunkt_gem_bfs
  ON av_avdpool_ch.hoehen_hoehenpunkt
  USING btree
  (gem_bfs);

CREATE INDEX idx_hoehen_hoehenpunkt_los
  ON av_avdpool_ch.hoehen_hoehenpunkt
  USING btree
  (los);

CREATE INDEX idx_hoehen_hoehenpunkt_geometrie
  ON av_avdpool_ch.hoehen_hoehenpunkt
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.hoehen_hoehenpunktpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 hoehenpunktpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.hoehen_hoehenpunktpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.hoehen_hoehenpunktpos TO stefan;
GRANT SELECT ON av_avdpool_ch.hoehen_hoehenpunktpos TO mspublic;

CREATE INDEX idx_hoehen_hoehenpunktpos_ogc_fid
  ON av_avdpool_ch.hoehen_hoehenpunktpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_hoehen_hoehenpunktpos_tid
  ON av_avdpool_ch.hoehen_hoehenpunktpos
  USING btree
  (tid);

CREATE INDEX idx_hoehen_hoehenpunktpos_hoehenpunktpos_von
  ON av_avdpool_ch.hoehen_hoehenpunktpos
  USING btree
  (hoehenpunktpos_von);

CREATE INDEX idx_hoehen_hoehenpunktpos_gem_bfs
  ON av_avdpool_ch.hoehen_hoehenpunktpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_hoehen_hoehenpunktpos_los
  ON av_avdpool_ch.hoehen_hoehenpunktpos
  USING btree
  (los);

CREATE INDEX idx_hoehen_hoehenpunktpos_pos
  ON av_avdpool_ch.hoehen_hoehenpunktpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.hoehen_gelaendekante
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 geometrie geometry(LINESTRING, 21781),
 qualitaet INTEGER,
 qualitaet_txt VARCHAR,
 art INTEGER,
 art_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.hoehen_gelaendekante OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.hoehen_gelaendekante TO stefan;
GRANT SELECT ON av_avdpool_ch.hoehen_gelaendekante TO mspublic;

CREATE INDEX idx_hoehen_gelaendekante_ogc_fid
  ON av_avdpool_ch.hoehen_gelaendekante
  USING btree
  (ogc_fid);

CREATE INDEX idx_hoehen_gelaendekante_tid
  ON av_avdpool_ch.hoehen_gelaendekante
  USING btree
  (tid);

CREATE INDEX idx_hoehen_gelaendekante_entstehung
  ON av_avdpool_ch.hoehen_gelaendekante
  USING btree
  (entstehung);

CREATE INDEX idx_hoehen_gelaendekante_gem_bfs
  ON av_avdpool_ch.hoehen_gelaendekante
  USING btree
  (gem_bfs);

CREATE INDEX idx_hoehen_gelaendekante_los
  ON av_avdpool_ch.hoehen_gelaendekante
  USING btree
  (los);

CREATE INDEX idx_hoehen_gelaendekante_geometrie
  ON av_avdpool_ch.hoehen_gelaendekante
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.hoehen_aussparung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 geometrie geometry(POLYGON, 21781),
 qualitaet INTEGER,
 qualitaet_txt VARCHAR,
 art INTEGER,
 art_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.hoehen_aussparung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.hoehen_aussparung TO stefan;
GRANT SELECT ON av_avdpool_ch.hoehen_aussparung TO mspublic;

CREATE INDEX idx_hoehen_aussparung_ogc_fid
  ON av_avdpool_ch.hoehen_aussparung
  USING btree
  (ogc_fid);

CREATE INDEX idx_hoehen_aussparung_tid
  ON av_avdpool_ch.hoehen_aussparung
  USING btree
  (tid);

CREATE INDEX idx_hoehen_aussparung_entstehung
  ON av_avdpool_ch.hoehen_aussparung
  USING btree
  (entstehung);

CREATE INDEX idx_hoehen_aussparung_gem_bfs
  ON av_avdpool_ch.hoehen_aussparung
  USING btree
  (gem_bfs);

CREATE INDEX idx_hoehen_aussparung_los
  ON av_avdpool_ch.hoehen_aussparung
  USING btree
  (los);

CREATE INDEX idx_hoehen_aussparung_geometrie
  ON av_avdpool_ch.hoehen_aussparung
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.nomenklatur_nknachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigereintrag VARCHAR,
 datum1 VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.nomenklatur_nknachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.nomenklatur_nknachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.nomenklatur_nknachfuehrung TO mspublic;

CREATE INDEX idx_nomenklatur_nknachfuehrung_ogc_fid
  ON av_avdpool_ch.nomenklatur_nknachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_nomenklatur_nknachfuehrung_tid
  ON av_avdpool_ch.nomenklatur_nknachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_nomenklatur_nknachfuehrung_gem_bfs
  ON av_avdpool_ch.nomenklatur_nknachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_nomenklatur_nknachfuehrung_los
  ON av_avdpool_ch.nomenklatur_nknachfuehrung
  USING btree
  (los);

CREATE INDEX idx_nomenklatur_nknachfuehrung_perimeter
  ON av_avdpool_ch.nomenklatur_nknachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.nomenklatur_flurname
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 name VARCHAR,
 geometrie geometry(POLYGON, 21781),
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.nomenklatur_flurname OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.nomenklatur_flurname TO stefan;
GRANT SELECT ON av_avdpool_ch.nomenklatur_flurname TO mspublic;

CREATE INDEX idx_nomenklatur_flurname_ogc_fid
  ON av_avdpool_ch.nomenklatur_flurname
  USING btree
  (ogc_fid);

CREATE INDEX idx_nomenklatur_flurname_tid
  ON av_avdpool_ch.nomenklatur_flurname
  USING btree
  (tid);

CREATE INDEX idx_nomenklatur_flurname_entstehung
  ON av_avdpool_ch.nomenklatur_flurname
  USING btree
  (entstehung);

CREATE INDEX idx_nomenklatur_flurname_gem_bfs
  ON av_avdpool_ch.nomenklatur_flurname
  USING btree
  (gem_bfs);

CREATE INDEX idx_nomenklatur_flurname_los
  ON av_avdpool_ch.nomenklatur_flurname
  USING btree
  (los);

CREATE INDEX idx_nomenklatur_flurname_geometrie
  ON av_avdpool_ch.nomenklatur_flurname
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.nomenklatur_flurnamepos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 flurnamepos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 stil INTEGER,
 stil_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.nomenklatur_flurnamepos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.nomenklatur_flurnamepos TO stefan;
GRANT SELECT ON av_avdpool_ch.nomenklatur_flurnamepos TO mspublic;

CREATE INDEX idx_nomenklatur_flurnamepos_ogc_fid
  ON av_avdpool_ch.nomenklatur_flurnamepos
  USING btree
  (ogc_fid);

CREATE INDEX idx_nomenklatur_flurnamepos_tid
  ON av_avdpool_ch.nomenklatur_flurnamepos
  USING btree
  (tid);

CREATE INDEX idx_nomenklatur_flurnamepos_flurnamepos_von
  ON av_avdpool_ch.nomenklatur_flurnamepos
  USING btree
  (flurnamepos_von);

CREATE INDEX idx_nomenklatur_flurnamepos_gem_bfs
  ON av_avdpool_ch.nomenklatur_flurnamepos
  USING btree
  (gem_bfs);

CREATE INDEX idx_nomenklatur_flurnamepos_los
  ON av_avdpool_ch.nomenklatur_flurnamepos
  USING btree
  (los);

CREATE INDEX idx_nomenklatur_flurnamepos_pos
  ON av_avdpool_ch.nomenklatur_flurnamepos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.nomenklatur_ortsname
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 name VARCHAR,
 geometrie geometry(POLYGON, 21781),
 typ VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.nomenklatur_ortsname OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.nomenklatur_ortsname TO stefan;
GRANT SELECT ON av_avdpool_ch.nomenklatur_ortsname TO mspublic;

CREATE INDEX idx_nomenklatur_ortsname_ogc_fid
  ON av_avdpool_ch.nomenklatur_ortsname
  USING btree
  (ogc_fid);

CREATE INDEX idx_nomenklatur_ortsname_tid
  ON av_avdpool_ch.nomenklatur_ortsname
  USING btree
  (tid);

CREATE INDEX idx_nomenklatur_ortsname_entstehung
  ON av_avdpool_ch.nomenklatur_ortsname
  USING btree
  (entstehung);

CREATE INDEX idx_nomenklatur_ortsname_gem_bfs
  ON av_avdpool_ch.nomenklatur_ortsname
  USING btree
  (gem_bfs);

CREATE INDEX idx_nomenklatur_ortsname_los
  ON av_avdpool_ch.nomenklatur_ortsname
  USING btree
  (los);

CREATE INDEX idx_nomenklatur_ortsname_geometrie
  ON av_avdpool_ch.nomenklatur_ortsname
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.nomenklatur_ortsnamepos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 ortsnamepos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 stil INTEGER,
 stil_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.nomenklatur_ortsnamepos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.nomenklatur_ortsnamepos TO stefan;
GRANT SELECT ON av_avdpool_ch.nomenklatur_ortsnamepos TO mspublic;

CREATE INDEX idx_nomenklatur_ortsnamepos_ogc_fid
  ON av_avdpool_ch.nomenklatur_ortsnamepos
  USING btree
  (ogc_fid);

CREATE INDEX idx_nomenklatur_ortsnamepos_tid
  ON av_avdpool_ch.nomenklatur_ortsnamepos
  USING btree
  (tid);

CREATE INDEX idx_nomenklatur_ortsnamepos_ortsnamepos_von
  ON av_avdpool_ch.nomenklatur_ortsnamepos
  USING btree
  (ortsnamepos_von);

CREATE INDEX idx_nomenklatur_ortsnamepos_gem_bfs
  ON av_avdpool_ch.nomenklatur_ortsnamepos
  USING btree
  (gem_bfs);

CREATE INDEX idx_nomenklatur_ortsnamepos_los
  ON av_avdpool_ch.nomenklatur_ortsnamepos
  USING btree
  (los);

CREATE INDEX idx_nomenklatur_ortsnamepos_pos
  ON av_avdpool_ch.nomenklatur_ortsnamepos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.nomenklatur_gelaendename
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 name VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.nomenklatur_gelaendename OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.nomenklatur_gelaendename TO stefan;
GRANT SELECT ON av_avdpool_ch.nomenklatur_gelaendename TO mspublic;

CREATE INDEX idx_nomenklatur_gelaendename_ogc_fid
  ON av_avdpool_ch.nomenklatur_gelaendename
  USING btree
  (ogc_fid);

CREATE INDEX idx_nomenklatur_gelaendename_tid
  ON av_avdpool_ch.nomenklatur_gelaendename
  USING btree
  (tid);

CREATE INDEX idx_nomenklatur_gelaendename_entstehung
  ON av_avdpool_ch.nomenklatur_gelaendename
  USING btree
  (entstehung);

CREATE INDEX idx_nomenklatur_gelaendename_gem_bfs
  ON av_avdpool_ch.nomenklatur_gelaendename
  USING btree
  (gem_bfs);

CREATE INDEX idx_nomenklatur_gelaendename_los
  ON av_avdpool_ch.nomenklatur_gelaendename
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.nomenklatur_gelaendenamepos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 gelaendenamepos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 stil INTEGER,
 stil_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.nomenklatur_gelaendenamepos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.nomenklatur_gelaendenamepos TO stefan;
GRANT SELECT ON av_avdpool_ch.nomenklatur_gelaendenamepos TO mspublic;

CREATE INDEX idx_nomenklatur_gelaendenamepos_ogc_fid
  ON av_avdpool_ch.nomenklatur_gelaendenamepos
  USING btree
  (ogc_fid);

CREATE INDEX idx_nomenklatur_gelaendenamepos_tid
  ON av_avdpool_ch.nomenklatur_gelaendenamepos
  USING btree
  (tid);

CREATE INDEX idx_nomenklatur_gelaendenamepos_gelaendenamepos_von
  ON av_avdpool_ch.nomenklatur_gelaendenamepos
  USING btree
  (gelaendenamepos_von);

CREATE INDEX idx_nomenklatur_gelaendenamepos_gem_bfs
  ON av_avdpool_ch.nomenklatur_gelaendenamepos
  USING btree
  (gem_bfs);

CREATE INDEX idx_nomenklatur_gelaendenamepos_los
  ON av_avdpool_ch.nomenklatur_gelaendenamepos
  USING btree
  (los);

CREATE INDEX idx_nomenklatur_gelaendenamepos_pos
  ON av_avdpool_ch.nomenklatur_gelaendenamepos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_lsnachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigkeit INTEGER,
 gueltigkeit_txt VARCHAR,
 gueltigereintrag VARCHAR,
 gbeintrag VARCHAR,
 datum1 VARCHAR,
 datum2 VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_lsnachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_lsnachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_lsnachfuehrung TO mspublic;

CREATE INDEX idx_liegenschaften_lsnachfuehrung_ogc_fid
  ON av_avdpool_ch.liegenschaften_lsnachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_lsnachfuehrung_tid
  ON av_avdpool_ch.liegenschaften_lsnachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_lsnachfuehrung_gem_bfs
  ON av_avdpool_ch.liegenschaften_lsnachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_lsnachfuehrung_los
  ON av_avdpool_ch.liegenschaften_lsnachfuehrung
  USING btree
  (los);

CREATE INDEX idx_liegenschaften_lsnachfuehrung_perimeter
  ON av_avdpool_ch.liegenschaften_lsnachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_grenzpunkt
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 identifikator VARCHAR,
 geometrie geometry(POINT, 21781),
 lagegen DOUBLE PRECISION,
 lagezuv INTEGER,
 lagezuv_txt VARCHAR,
 punktzeichen INTEGER,
 punktzeichen_txt VARCHAR,
 exaktdefiniert INTEGER,
 exaktdefiniert_txt VARCHAR,
 hoheitsgrenzsteinalt INTEGER,
 hoheitsgrenzsteinalt_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_grenzpunkt OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_grenzpunkt TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_grenzpunkt TO mspublic;

CREATE INDEX idx_liegenschaften_grenzpunkt_ogc_fid
  ON av_avdpool_ch.liegenschaften_grenzpunkt
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_grenzpunkt_tid
  ON av_avdpool_ch.liegenschaften_grenzpunkt
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_grenzpunkt_entstehung
  ON av_avdpool_ch.liegenschaften_grenzpunkt
  USING btree
  (entstehung);

CREATE INDEX idx_liegenschaften_grenzpunkt_gem_bfs
  ON av_avdpool_ch.liegenschaften_grenzpunkt
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_grenzpunkt_los
  ON av_avdpool_ch.liegenschaften_grenzpunkt
  USING btree
  (los);

CREATE INDEX idx_liegenschaften_grenzpunkt_geometrie
  ON av_avdpool_ch.liegenschaften_grenzpunkt
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_grenzpunktpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 grenzpunktpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_grenzpunktpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_grenzpunktpos TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_grenzpunktpos TO mspublic;

CREATE INDEX idx_liegenschaften_grenzpunktpos_ogc_fid
  ON av_avdpool_ch.liegenschaften_grenzpunktpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_grenzpunktpos_tid
  ON av_avdpool_ch.liegenschaften_grenzpunktpos
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_grenzpunktpos_grenzpunktpos_von
  ON av_avdpool_ch.liegenschaften_grenzpunktpos
  USING btree
  (grenzpunktpos_von);

CREATE INDEX idx_liegenschaften_grenzpunktpos_gem_bfs
  ON av_avdpool_ch.liegenschaften_grenzpunktpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_grenzpunktpos_los
  ON av_avdpool_ch.liegenschaften_grenzpunktpos
  USING btree
  (los);

CREATE INDEX idx_liegenschaften_grenzpunktpos_pos
  ON av_avdpool_ch.liegenschaften_grenzpunktpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_grenzpunktsymbol
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 grenzpunktsymbol_von VARCHAR,
 ori DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_grenzpunktsymbol OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_grenzpunktsymbol TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_grenzpunktsymbol TO mspublic;

CREATE INDEX idx_liegenschaften_grenzpunktsymbol_ogc_fid
  ON av_avdpool_ch.liegenschaften_grenzpunktsymbol
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_grenzpunktsymbol_tid
  ON av_avdpool_ch.liegenschaften_grenzpunktsymbol
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_grenzpunktsymbol_grenzpunktsymbol_von
  ON av_avdpool_ch.liegenschaften_grenzpunktsymbol
  USING btree
  (grenzpunktsymbol_von);

CREATE INDEX idx_liegenschaften_grenzpunktsymbol_gem_bfs
  ON av_avdpool_ch.liegenschaften_grenzpunktsymbol
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_grenzpunktsymbol_los
  ON av_avdpool_ch.liegenschaften_grenzpunktsymbol
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_projgrundstueck
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 nbident VARCHAR,
 nummer VARCHAR,
 egris_egrid VARCHAR,
 gueltigkeit INTEGER,
 gueltigkeit_txt VARCHAR,
 vollstaendigkeit INTEGER,
 vollstaendigkeit_txt VARCHAR,
 art INTEGER,
 art_txt VARCHAR,
 gesamteflaechenmass DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_projgrundstueck OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_projgrundstueck TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_projgrundstueck TO mspublic;

CREATE INDEX idx_liegenschaften_projgrundstueck_ogc_fid
  ON av_avdpool_ch.liegenschaften_projgrundstueck
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_projgrundstueck_tid
  ON av_avdpool_ch.liegenschaften_projgrundstueck
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_projgrundstueck_entstehung
  ON av_avdpool_ch.liegenschaften_projgrundstueck
  USING btree
  (entstehung);

CREATE INDEX idx_liegenschaften_projgrundstueck_gem_bfs
  ON av_avdpool_ch.liegenschaften_projgrundstueck
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_projgrundstueck_los
  ON av_avdpool_ch.liegenschaften_projgrundstueck
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_projgrundstueckpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 projgrundstueckpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 hilfslinie geometry(LINESTRING, 21781),
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_projgrundstueckpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_projgrundstueckpos TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_projgrundstueckpos TO mspublic;

CREATE INDEX idx_liegenschaften_projgrundstueckpos_ogc_fid
  ON av_avdpool_ch.liegenschaften_projgrundstueckpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_projgrundstueckpos_tid
  ON av_avdpool_ch.liegenschaften_projgrundstueckpos
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_projgrundstueckpos_projgrundstueckpos_von
  ON av_avdpool_ch.liegenschaften_projgrundstueckpos
  USING btree
  (projgrundstueckpos_von);

CREATE INDEX idx_liegenschaften_projgrundstueckpos_gem_bfs
  ON av_avdpool_ch.liegenschaften_projgrundstueckpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_projgrundstueckpos_los
  ON av_avdpool_ch.liegenschaften_projgrundstueckpos
  USING btree
  (los);

CREATE INDEX idx_liegenschaften_projgrundstueckpos_pos
  ON av_avdpool_ch.liegenschaften_projgrundstueckpos
  USING gist
  (pos);

CREATE INDEX idx_liegenschaften_projgrundstueckpos_hilfslinie
  ON av_avdpool_ch.liegenschaften_projgrundstueckpos
  USING gist
  (hilfslinie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_lineattrib1
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 linienart INTEGER,
 linienart_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_lineattrib1 OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_lineattrib1 TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_lineattrib1 TO mspublic;

CREATE INDEX idx_liegenschaften_lineattrib1_ogc_fid
  ON av_avdpool_ch.liegenschaften_lineattrib1
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_lineattrib1_tid
  ON av_avdpool_ch.liegenschaften_lineattrib1
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_lineattrib1_gem_bfs
  ON av_avdpool_ch.liegenschaften_lineattrib1
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_lineattrib1_los
  ON av_avdpool_ch.liegenschaften_lineattrib1
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_projliegenschaft
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 projliegenschaft_von VARCHAR,
 nummerteilgrundstueck VARCHAR,
 geometrie geometry(POLYGON, 21781),
 flaechenmass DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_projliegenschaft OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_projliegenschaft TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_projliegenschaft TO mspublic;

CREATE INDEX idx_liegenschaften_projliegenschaft_ogc_fid
  ON av_avdpool_ch.liegenschaften_projliegenschaft
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_projliegenschaft_tid
  ON av_avdpool_ch.liegenschaften_projliegenschaft
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_projliegenschaft_projliegenschaft_von
  ON av_avdpool_ch.liegenschaften_projliegenschaft
  USING btree
  (projliegenschaft_von);

CREATE INDEX idx_liegenschaften_projliegenschaft_gem_bfs
  ON av_avdpool_ch.liegenschaften_projliegenschaft
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_projliegenschaft_los
  ON av_avdpool_ch.liegenschaften_projliegenschaft
  USING btree
  (los);

CREATE INDEX idx_liegenschaften_projliegenschaft_geometrie
  ON av_avdpool_ch.liegenschaften_projliegenschaft
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_lineattrib2
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 linienart INTEGER,
 linienart_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_lineattrib2 OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_lineattrib2 TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_lineattrib2 TO mspublic;

CREATE INDEX idx_liegenschaften_lineattrib2_ogc_fid
  ON av_avdpool_ch.liegenschaften_lineattrib2
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_lineattrib2_tid
  ON av_avdpool_ch.liegenschaften_lineattrib2
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_lineattrib2_gem_bfs
  ON av_avdpool_ch.liegenschaften_lineattrib2
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_lineattrib2_los
  ON av_avdpool_ch.liegenschaften_lineattrib2
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_projselbstrecht
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 projselbstrecht_von VARCHAR,
 nummerteilgrundstueck VARCHAR,
 geometrie geometry(POLYGON, 21781),
 flaechenmass DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_projselbstrecht OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_projselbstrecht TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_projselbstrecht TO mspublic;

CREATE INDEX idx_liegenschaften_projselbstrecht_ogc_fid
  ON av_avdpool_ch.liegenschaften_projselbstrecht
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_projselbstrecht_tid
  ON av_avdpool_ch.liegenschaften_projselbstrecht
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_projselbstrecht_projselbstrecht_von
  ON av_avdpool_ch.liegenschaften_projselbstrecht
  USING btree
  (projselbstrecht_von);

CREATE INDEX idx_liegenschaften_projselbstrecht_gem_bfs
  ON av_avdpool_ch.liegenschaften_projselbstrecht
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_projselbstrecht_los
  ON av_avdpool_ch.liegenschaften_projselbstrecht
  USING btree
  (los);

CREATE INDEX idx_liegenschaften_projselbstrecht_geometrie
  ON av_avdpool_ch.liegenschaften_projselbstrecht
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_lineattrib3
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 linienart INTEGER,
 linienart_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_lineattrib3 OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_lineattrib3 TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_lineattrib3 TO mspublic;

CREATE INDEX idx_liegenschaften_lineattrib3_ogc_fid
  ON av_avdpool_ch.liegenschaften_lineattrib3
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_lineattrib3_tid
  ON av_avdpool_ch.liegenschaften_lineattrib3
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_lineattrib3_gem_bfs
  ON av_avdpool_ch.liegenschaften_lineattrib3
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_lineattrib3_los
  ON av_avdpool_ch.liegenschaften_lineattrib3
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_projbergwerk
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 projbergwerk_von VARCHAR,
 nummerteilgrundstueck VARCHAR,
 geometrie geometry(POLYGON, 21781),
 flaechenmass DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_projbergwerk OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_projbergwerk TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_projbergwerk TO mspublic;

CREATE INDEX idx_liegenschaften_projbergwerk_ogc_fid
  ON av_avdpool_ch.liegenschaften_projbergwerk
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_projbergwerk_tid
  ON av_avdpool_ch.liegenschaften_projbergwerk
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_projbergwerk_projbergwerk_von
  ON av_avdpool_ch.liegenschaften_projbergwerk
  USING btree
  (projbergwerk_von);

CREATE INDEX idx_liegenschaften_projbergwerk_gem_bfs
  ON av_avdpool_ch.liegenschaften_projbergwerk
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_projbergwerk_los
  ON av_avdpool_ch.liegenschaften_projbergwerk
  USING btree
  (los);

CREATE INDEX idx_liegenschaften_projbergwerk_geometrie
  ON av_avdpool_ch.liegenschaften_projbergwerk
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_grundstueck
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 nbident VARCHAR,
 nummer VARCHAR,
 egris_egrid VARCHAR,
 gueltigkeit INTEGER,
 gueltigkeit_txt VARCHAR,
 vollstaendigkeit INTEGER,
 vollstaendigkeit_txt VARCHAR,
 art INTEGER,
 art_txt VARCHAR,
 gesamteflaechenmass DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_grundstueck OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_grundstueck TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_grundstueck TO mspublic;

CREATE INDEX idx_liegenschaften_grundstueck_ogc_fid
  ON av_avdpool_ch.liegenschaften_grundstueck
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_grundstueck_tid
  ON av_avdpool_ch.liegenschaften_grundstueck
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_grundstueck_entstehung
  ON av_avdpool_ch.liegenschaften_grundstueck
  USING btree
  (entstehung);

CREATE INDEX idx_liegenschaften_grundstueck_gem_bfs
  ON av_avdpool_ch.liegenschaften_grundstueck
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_grundstueck_los
  ON av_avdpool_ch.liegenschaften_grundstueck
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_grundstueckpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 grundstueckpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 hilfslinie geometry(LINESTRING, 21781),
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_grundstueckpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_grundstueckpos TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_grundstueckpos TO mspublic;

CREATE INDEX idx_liegenschaften_grundstueckpos_ogc_fid
  ON av_avdpool_ch.liegenschaften_grundstueckpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_grundstueckpos_tid
  ON av_avdpool_ch.liegenschaften_grundstueckpos
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_grundstueckpos_grundstueckpos_von
  ON av_avdpool_ch.liegenschaften_grundstueckpos
  USING btree
  (grundstueckpos_von);

CREATE INDEX idx_liegenschaften_grundstueckpos_gem_bfs
  ON av_avdpool_ch.liegenschaften_grundstueckpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_grundstueckpos_los
  ON av_avdpool_ch.liegenschaften_grundstueckpos
  USING btree
  (los);

CREATE INDEX idx_liegenschaften_grundstueckpos_pos
  ON av_avdpool_ch.liegenschaften_grundstueckpos
  USING gist
  (pos);

CREATE INDEX idx_liegenschaften_grundstueckpos_hilfslinie
  ON av_avdpool_ch.liegenschaften_grundstueckpos
  USING gist
  (hilfslinie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_lineattrib4
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 linienart INTEGER,
 linienart_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_lineattrib4 OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_lineattrib4 TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_lineattrib4 TO mspublic;

CREATE INDEX idx_liegenschaften_lineattrib4_ogc_fid
  ON av_avdpool_ch.liegenschaften_lineattrib4
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_lineattrib4_tid
  ON av_avdpool_ch.liegenschaften_lineattrib4
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_lineattrib4_gem_bfs
  ON av_avdpool_ch.liegenschaften_lineattrib4
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_lineattrib4_los
  ON av_avdpool_ch.liegenschaften_lineattrib4
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_liegenschaft
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 liegenschaft_von VARCHAR,
 nummerteilgrundstueck VARCHAR,
 geometrie geometry(POLYGON, 21781),
 flaechenmass DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_liegenschaft OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_liegenschaft TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_liegenschaft TO mspublic;

CREATE INDEX idx_liegenschaften_liegenschaft_ogc_fid
  ON av_avdpool_ch.liegenschaften_liegenschaft
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_liegenschaft_tid
  ON av_avdpool_ch.liegenschaften_liegenschaft
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_liegenschaft_liegenschaft_von
  ON av_avdpool_ch.liegenschaften_liegenschaft
  USING btree
  (liegenschaft_von);

CREATE INDEX idx_liegenschaften_liegenschaft_gem_bfs
  ON av_avdpool_ch.liegenschaften_liegenschaft
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_liegenschaft_los
  ON av_avdpool_ch.liegenschaften_liegenschaft
  USING btree
  (los);

CREATE INDEX idx_liegenschaften_liegenschaft_geometrie
  ON av_avdpool_ch.liegenschaften_liegenschaft
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_lineattrib5
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 linienart INTEGER,
 linienart_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_lineattrib5 OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_lineattrib5 TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_lineattrib5 TO mspublic;

CREATE INDEX idx_liegenschaften_lineattrib5_ogc_fid
  ON av_avdpool_ch.liegenschaften_lineattrib5
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_lineattrib5_tid
  ON av_avdpool_ch.liegenschaften_lineattrib5
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_lineattrib5_gem_bfs
  ON av_avdpool_ch.liegenschaften_lineattrib5
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_lineattrib5_los
  ON av_avdpool_ch.liegenschaften_lineattrib5
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_selbstrecht
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 selbstrecht_von VARCHAR,
 nummerteilgrundstueck VARCHAR,
 geometrie geometry(POLYGON, 21781),
 flaechenmass DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_selbstrecht OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_selbstrecht TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_selbstrecht TO mspublic;

CREATE INDEX idx_liegenschaften_selbstrecht_ogc_fid
  ON av_avdpool_ch.liegenschaften_selbstrecht
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_selbstrecht_tid
  ON av_avdpool_ch.liegenschaften_selbstrecht
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_selbstrecht_selbstrecht_von
  ON av_avdpool_ch.liegenschaften_selbstrecht
  USING btree
  (selbstrecht_von);

CREATE INDEX idx_liegenschaften_selbstrecht_gem_bfs
  ON av_avdpool_ch.liegenschaften_selbstrecht
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_selbstrecht_los
  ON av_avdpool_ch.liegenschaften_selbstrecht
  USING btree
  (los);

CREATE INDEX idx_liegenschaften_selbstrecht_geometrie
  ON av_avdpool_ch.liegenschaften_selbstrecht
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_lineattrib6
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 linienart INTEGER,
 linienart_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_lineattrib6 OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_lineattrib6 TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_lineattrib6 TO mspublic;

CREATE INDEX idx_liegenschaften_lineattrib6_ogc_fid
  ON av_avdpool_ch.liegenschaften_lineattrib6
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_lineattrib6_tid
  ON av_avdpool_ch.liegenschaften_lineattrib6
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_lineattrib6_gem_bfs
  ON av_avdpool_ch.liegenschaften_lineattrib6
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_lineattrib6_los
  ON av_avdpool_ch.liegenschaften_lineattrib6
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.liegenschaften_bergwerk
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 bergwerk_von VARCHAR,
 nummerteilgrundstueck VARCHAR,
 geometrie geometry(POLYGON, 21781),
 flaechenmass DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.liegenschaften_bergwerk OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.liegenschaften_bergwerk TO stefan;
GRANT SELECT ON av_avdpool_ch.liegenschaften_bergwerk TO mspublic;

CREATE INDEX idx_liegenschaften_bergwerk_ogc_fid
  ON av_avdpool_ch.liegenschaften_bergwerk
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften_bergwerk_tid
  ON av_avdpool_ch.liegenschaften_bergwerk
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften_bergwerk_bergwerk_von
  ON av_avdpool_ch.liegenschaften_bergwerk
  USING btree
  (bergwerk_von);

CREATE INDEX idx_liegenschaften_bergwerk_gem_bfs
  ON av_avdpool_ch.liegenschaften_bergwerk
  USING btree
  (gem_bfs);

CREATE INDEX idx_liegenschaften_bergwerk_los
  ON av_avdpool_ch.liegenschaften_bergwerk
  USING btree
  (los);

CREATE INDEX idx_liegenschaften_bergwerk_geometrie
  ON av_avdpool_ch.liegenschaften_bergwerk
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.rohrleitungen_rlnachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigkeit INTEGER,
 gueltigkeit_txt VARCHAR,
 gueltigereintrag VARCHAR,
 datum1 VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.rohrleitungen_rlnachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.rohrleitungen_rlnachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.rohrleitungen_rlnachfuehrung TO mspublic;

CREATE INDEX idx_rohrleitungen_rlnachfuehrung_ogc_fid
  ON av_avdpool_ch.rohrleitungen_rlnachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_rohrleitungen_rlnachfuehrung_tid
  ON av_avdpool_ch.rohrleitungen_rlnachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_rohrleitungen_rlnachfuehrung_gem_bfs
  ON av_avdpool_ch.rohrleitungen_rlnachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_rohrleitungen_rlnachfuehrung_los
  ON av_avdpool_ch.rohrleitungen_rlnachfuehrung
  USING btree
  (los);

CREATE INDEX idx_rohrleitungen_rlnachfuehrung_perimeter
  ON av_avdpool_ch.rohrleitungen_rlnachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.rohrleitungen_leitungsobjekt
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 betreiber VARCHAR,
 qualitaet INTEGER,
 qualitaet_txt VARCHAR,
 art INTEGER,
 art_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.rohrleitungen_leitungsobjekt OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.rohrleitungen_leitungsobjekt TO stefan;
GRANT SELECT ON av_avdpool_ch.rohrleitungen_leitungsobjekt TO mspublic;

CREATE INDEX idx_rohrleitungen_leitungsobjekt_ogc_fid
  ON av_avdpool_ch.rohrleitungen_leitungsobjekt
  USING btree
  (ogc_fid);

CREATE INDEX idx_rohrleitungen_leitungsobjekt_tid
  ON av_avdpool_ch.rohrleitungen_leitungsobjekt
  USING btree
  (tid);

CREATE INDEX idx_rohrleitungen_leitungsobjekt_entstehung
  ON av_avdpool_ch.rohrleitungen_leitungsobjekt
  USING btree
  (entstehung);

CREATE INDEX idx_rohrleitungen_leitungsobjekt_gem_bfs
  ON av_avdpool_ch.rohrleitungen_leitungsobjekt
  USING btree
  (gem_bfs);

CREATE INDEX idx_rohrleitungen_leitungsobjekt_los
  ON av_avdpool_ch.rohrleitungen_leitungsobjekt
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.rohrleitungen_leitungsobjektpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 leitungsobjektpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.rohrleitungen_leitungsobjektpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.rohrleitungen_leitungsobjektpos TO stefan;
GRANT SELECT ON av_avdpool_ch.rohrleitungen_leitungsobjektpos TO mspublic;

CREATE INDEX idx_rohrleitungen_leitungsobjektpos_ogc_fid
  ON av_avdpool_ch.rohrleitungen_leitungsobjektpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_rohrleitungen_leitungsobjektpos_tid
  ON av_avdpool_ch.rohrleitungen_leitungsobjektpos
  USING btree
  (tid);

CREATE INDEX idx_rohrleitungen_leitungsobjektpos_leitungsobjektpos_von
  ON av_avdpool_ch.rohrleitungen_leitungsobjektpos
  USING btree
  (leitungsobjektpos_von);

CREATE INDEX idx_rohrleitungen_leitungsobjektpos_gem_bfs
  ON av_avdpool_ch.rohrleitungen_leitungsobjektpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_rohrleitungen_leitungsobjektpos_los
  ON av_avdpool_ch.rohrleitungen_leitungsobjektpos
  USING btree
  (los);

CREATE INDEX idx_rohrleitungen_leitungsobjektpos_pos
  ON av_avdpool_ch.rohrleitungen_leitungsobjektpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.rohrleitungen_lineattrib7
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 linienart INTEGER,
 linienart_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.rohrleitungen_lineattrib7 OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.rohrleitungen_lineattrib7 TO stefan;
GRANT SELECT ON av_avdpool_ch.rohrleitungen_lineattrib7 TO mspublic;

CREATE INDEX idx_rohrleitungen_lineattrib7_ogc_fid
  ON av_avdpool_ch.rohrleitungen_lineattrib7
  USING btree
  (ogc_fid);

CREATE INDEX idx_rohrleitungen_lineattrib7_tid
  ON av_avdpool_ch.rohrleitungen_lineattrib7
  USING btree
  (tid);

CREATE INDEX idx_rohrleitungen_lineattrib7_gem_bfs
  ON av_avdpool_ch.rohrleitungen_lineattrib7
  USING btree
  (gem_bfs);

CREATE INDEX idx_rohrleitungen_lineattrib7_los
  ON av_avdpool_ch.rohrleitungen_lineattrib7
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.rohrleitungen_flaechenelement
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 flaechenelement_von VARCHAR,
 geometrie geometry(POLYGON, 21781),
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.rohrleitungen_flaechenelement OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.rohrleitungen_flaechenelement TO stefan;
GRANT SELECT ON av_avdpool_ch.rohrleitungen_flaechenelement TO mspublic;

CREATE INDEX idx_rohrleitungen_flaechenelement_ogc_fid
  ON av_avdpool_ch.rohrleitungen_flaechenelement
  USING btree
  (ogc_fid);

CREATE INDEX idx_rohrleitungen_flaechenelement_tid
  ON av_avdpool_ch.rohrleitungen_flaechenelement
  USING btree
  (tid);

CREATE INDEX idx_rohrleitungen_flaechenelement_flaechenelement_von
  ON av_avdpool_ch.rohrleitungen_flaechenelement
  USING btree
  (flaechenelement_von);

CREATE INDEX idx_rohrleitungen_flaechenelement_gem_bfs
  ON av_avdpool_ch.rohrleitungen_flaechenelement
  USING btree
  (gem_bfs);

CREATE INDEX idx_rohrleitungen_flaechenelement_los
  ON av_avdpool_ch.rohrleitungen_flaechenelement
  USING btree
  (los);

CREATE INDEX idx_rohrleitungen_flaechenelement_geometrie
  ON av_avdpool_ch.rohrleitungen_flaechenelement
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.rohrleitungen_linienelement
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 linienelement_von VARCHAR,
 geometrie geometry(LINESTRING, 21781),
 linienart INTEGER,
 linienart_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.rohrleitungen_linienelement OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.rohrleitungen_linienelement TO stefan;
GRANT SELECT ON av_avdpool_ch.rohrleitungen_linienelement TO mspublic;

CREATE INDEX idx_rohrleitungen_linienelement_ogc_fid
  ON av_avdpool_ch.rohrleitungen_linienelement
  USING btree
  (ogc_fid);

CREATE INDEX idx_rohrleitungen_linienelement_tid
  ON av_avdpool_ch.rohrleitungen_linienelement
  USING btree
  (tid);

CREATE INDEX idx_rohrleitungen_linienelement_linienelement_von
  ON av_avdpool_ch.rohrleitungen_linienelement
  USING btree
  (linienelement_von);

CREATE INDEX idx_rohrleitungen_linienelement_gem_bfs
  ON av_avdpool_ch.rohrleitungen_linienelement
  USING btree
  (gem_bfs);

CREATE INDEX idx_rohrleitungen_linienelement_los
  ON av_avdpool_ch.rohrleitungen_linienelement
  USING btree
  (los);

CREATE INDEX idx_rohrleitungen_linienelement_geometrie
  ON av_avdpool_ch.rohrleitungen_linienelement
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.rohrleitungen_punktelement
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 punktelement_von VARCHAR,
 geometrie geometry(POINT, 21781),
 hoehegeom DOUBLE PRECISION,
 ori DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.rohrleitungen_punktelement OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.rohrleitungen_punktelement TO stefan;
GRANT SELECT ON av_avdpool_ch.rohrleitungen_punktelement TO mspublic;

CREATE INDEX idx_rohrleitungen_punktelement_ogc_fid
  ON av_avdpool_ch.rohrleitungen_punktelement
  USING btree
  (ogc_fid);

CREATE INDEX idx_rohrleitungen_punktelement_tid
  ON av_avdpool_ch.rohrleitungen_punktelement
  USING btree
  (tid);

CREATE INDEX idx_rohrleitungen_punktelement_punktelement_von
  ON av_avdpool_ch.rohrleitungen_punktelement
  USING btree
  (punktelement_von);

CREATE INDEX idx_rohrleitungen_punktelement_gem_bfs
  ON av_avdpool_ch.rohrleitungen_punktelement
  USING btree
  (gem_bfs);

CREATE INDEX idx_rohrleitungen_punktelement_los
  ON av_avdpool_ch.rohrleitungen_punktelement
  USING btree
  (los);

CREATE INDEX idx_rohrleitungen_punktelement_geometrie
  ON av_avdpool_ch.rohrleitungen_punktelement
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.rohrleitungen_signalpunkt
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 nummer VARCHAR,
 betreiber VARCHAR,
 geometrie geometry(POINT, 21781),
 qualitaet INTEGER,
 qualitaet_txt VARCHAR,
 art INTEGER,
 art_txt VARCHAR,
 punktart INTEGER,
 punktart_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.rohrleitungen_signalpunkt OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.rohrleitungen_signalpunkt TO stefan;
GRANT SELECT ON av_avdpool_ch.rohrleitungen_signalpunkt TO mspublic;

CREATE INDEX idx_rohrleitungen_signalpunkt_ogc_fid
  ON av_avdpool_ch.rohrleitungen_signalpunkt
  USING btree
  (ogc_fid);

CREATE INDEX idx_rohrleitungen_signalpunkt_tid
  ON av_avdpool_ch.rohrleitungen_signalpunkt
  USING btree
  (tid);

CREATE INDEX idx_rohrleitungen_signalpunkt_entstehung
  ON av_avdpool_ch.rohrleitungen_signalpunkt
  USING btree
  (entstehung);

CREATE INDEX idx_rohrleitungen_signalpunkt_gem_bfs
  ON av_avdpool_ch.rohrleitungen_signalpunkt
  USING btree
  (gem_bfs);

CREATE INDEX idx_rohrleitungen_signalpunkt_los
  ON av_avdpool_ch.rohrleitungen_signalpunkt
  USING btree
  (los);

CREATE INDEX idx_rohrleitungen_signalpunkt_geometrie
  ON av_avdpool_ch.rohrleitungen_signalpunkt
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.rohrleitungen_signalpunktpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 signalpunktpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.rohrleitungen_signalpunktpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.rohrleitungen_signalpunktpos TO stefan;
GRANT SELECT ON av_avdpool_ch.rohrleitungen_signalpunktpos TO mspublic;

CREATE INDEX idx_rohrleitungen_signalpunktpos_ogc_fid
  ON av_avdpool_ch.rohrleitungen_signalpunktpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_rohrleitungen_signalpunktpos_tid
  ON av_avdpool_ch.rohrleitungen_signalpunktpos
  USING btree
  (tid);

CREATE INDEX idx_rohrleitungen_signalpunktpos_signalpunktpos_von
  ON av_avdpool_ch.rohrleitungen_signalpunktpos
  USING btree
  (signalpunktpos_von);

CREATE INDEX idx_rohrleitungen_signalpunktpos_gem_bfs
  ON av_avdpool_ch.rohrleitungen_signalpunktpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_rohrleitungen_signalpunktpos_los
  ON av_avdpool_ch.rohrleitungen_signalpunktpos
  USING btree
  (los);

CREATE INDEX idx_rohrleitungen_signalpunktpos_pos
  ON av_avdpool_ch.rohrleitungen_signalpunktpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.rohrleitungen_einzelpunkt
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 identifikator VARCHAR,
 geometrie geometry(POINT, 21781),
 lagegen DOUBLE PRECISION,
 lagezuv INTEGER,
 lagezuv_txt VARCHAR,
 exaktdefiniert INTEGER,
 exaktdefiniert_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.rohrleitungen_einzelpunkt OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.rohrleitungen_einzelpunkt TO stefan;
GRANT SELECT ON av_avdpool_ch.rohrleitungen_einzelpunkt TO mspublic;

CREATE INDEX idx_rohrleitungen_einzelpunkt_ogc_fid
  ON av_avdpool_ch.rohrleitungen_einzelpunkt
  USING btree
  (ogc_fid);

CREATE INDEX idx_rohrleitungen_einzelpunkt_tid
  ON av_avdpool_ch.rohrleitungen_einzelpunkt
  USING btree
  (tid);

CREATE INDEX idx_rohrleitungen_einzelpunkt_entstehung
  ON av_avdpool_ch.rohrleitungen_einzelpunkt
  USING btree
  (entstehung);

CREATE INDEX idx_rohrleitungen_einzelpunkt_gem_bfs
  ON av_avdpool_ch.rohrleitungen_einzelpunkt
  USING btree
  (gem_bfs);

CREATE INDEX idx_rohrleitungen_einzelpunkt_los
  ON av_avdpool_ch.rohrleitungen_einzelpunkt
  USING btree
  (los);

CREATE INDEX idx_rohrleitungen_einzelpunkt_geometrie
  ON av_avdpool_ch.rohrleitungen_einzelpunkt
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.rohrleitungen_einzelpunktpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 einzelpunktpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.rohrleitungen_einzelpunktpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.rohrleitungen_einzelpunktpos TO stefan;
GRANT SELECT ON av_avdpool_ch.rohrleitungen_einzelpunktpos TO mspublic;

CREATE INDEX idx_rohrleitungen_einzelpunktpos_ogc_fid
  ON av_avdpool_ch.rohrleitungen_einzelpunktpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_rohrleitungen_einzelpunktpos_tid
  ON av_avdpool_ch.rohrleitungen_einzelpunktpos
  USING btree
  (tid);

CREATE INDEX idx_rohrleitungen_einzelpunktpos_einzelpunktpos_von
  ON av_avdpool_ch.rohrleitungen_einzelpunktpos
  USING btree
  (einzelpunktpos_von);

CREATE INDEX idx_rohrleitungen_einzelpunktpos_gem_bfs
  ON av_avdpool_ch.rohrleitungen_einzelpunktpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_rohrleitungen_einzelpunktpos_los
  ON av_avdpool_ch.rohrleitungen_einzelpunktpos
  USING btree
  (los);

CREATE INDEX idx_rohrleitungen_einzelpunktpos_pos
  ON av_avdpool_ch.rohrleitungen_einzelpunktpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.nummerierungsbereiche_nummerierungsbereich
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 kt INTEGER,
 kt_txt VARCHAR,
 nbnummer VARCHAR,
 techdossier VARCHAR,
 gueltigereintrag VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.nummerierungsbereiche_nummerierungsbereich OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.nummerierungsbereiche_nummerierungsbereich TO stefan;
GRANT SELECT ON av_avdpool_ch.nummerierungsbereiche_nummerierungsbereich TO mspublic;

CREATE INDEX idx_nummerierungsbereiche_nummerierungsbereich_ogc_fid
  ON av_avdpool_ch.nummerierungsbereiche_nummerierungsbereich
  USING btree
  (ogc_fid);

CREATE INDEX idx_nummerierungsbereiche_nummerierungsbereich_tid
  ON av_avdpool_ch.nummerierungsbereiche_nummerierungsbereich
  USING btree
  (tid);

CREATE INDEX idx_nummerierungsbereiche_nummerierungsbereich_gem_bfs
  ON av_avdpool_ch.nummerierungsbereiche_nummerierungsbereich
  USING btree
  (gem_bfs);

CREATE INDEX idx_nummerierungsbereiche_nummerierungsbereich_los
  ON av_avdpool_ch.nummerierungsbereiche_nummerierungsbereich
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.nummerierungsbereiche_nbgeometrie
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbgeometrie_von VARCHAR,
 geometrie geometry(POLYGON, 21781),
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.nummerierungsbereiche_nbgeometrie OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.nummerierungsbereiche_nbgeometrie TO stefan;
GRANT SELECT ON av_avdpool_ch.nummerierungsbereiche_nbgeometrie TO mspublic;

CREATE INDEX idx_nummerierungsbereiche_nbgeometrie_ogc_fid
  ON av_avdpool_ch.nummerierungsbereiche_nbgeometrie
  USING btree
  (ogc_fid);

CREATE INDEX idx_nummerierungsbereiche_nbgeometrie_tid
  ON av_avdpool_ch.nummerierungsbereiche_nbgeometrie
  USING btree
  (tid);

CREATE INDEX idx_nummerierungsbereiche_nbgeometrie_nbgeometrie_von
  ON av_avdpool_ch.nummerierungsbereiche_nbgeometrie
  USING btree
  (nbgeometrie_von);

CREATE INDEX idx_nummerierungsbereiche_nbgeometrie_gem_bfs
  ON av_avdpool_ch.nummerierungsbereiche_nbgeometrie
  USING btree
  (gem_bfs);

CREATE INDEX idx_nummerierungsbereiche_nbgeometrie_los
  ON av_avdpool_ch.nummerierungsbereiche_nbgeometrie
  USING btree
  (los);

CREATE INDEX idx_nummerierungsbereiche_nbgeometrie_geometrie
  ON av_avdpool_ch.nummerierungsbereiche_nbgeometrie
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.nummerierungsbereiche_nummerierungsbereichpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nummerierungsbereichpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.nummerierungsbereiche_nummerierungsbereichpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.nummerierungsbereiche_nummerierungsbereichpos TO stefan;
GRANT SELECT ON av_avdpool_ch.nummerierungsbereiche_nummerierungsbereichpos TO mspublic;

CREATE INDEX idx_nummerierungsbereiche_nummerierungsbereichpos_ogc_fid
  ON av_avdpool_ch.nummerierungsbereiche_nummerierungsbereichpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_nummerierungsbereiche_nummerierungsbereichpos_tid
  ON av_avdpool_ch.nummerierungsbereiche_nummerierungsbereichpos
  USING btree
  (tid);

CREATE INDEX idx_nummerierungsbereiche_nummerierungsbereichpos_nummerierungsbereichpos_von
  ON av_avdpool_ch.nummerierungsbereiche_nummerierungsbereichpos
  USING btree
  (nummerierungsbereichpos_von);

CREATE INDEX idx_nummerierungsbereiche_nummerierungsbereichpos_gem_bfs
  ON av_avdpool_ch.nummerierungsbereiche_nummerierungsbereichpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_nummerierungsbereiche_nummerierungsbereichpos_los
  ON av_avdpool_ch.nummerierungsbereiche_nummerierungsbereichpos
  USING btree
  (los);

CREATE INDEX idx_nummerierungsbereiche_nummerierungsbereichpos_pos
  ON av_avdpool_ch.nummerierungsbereiche_nummerierungsbereichpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gemeindegrenzen_gemnachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigkeit INTEGER,
 gueltigkeit_txt VARCHAR,
 gueltigereintrag VARCHAR,
 datum1 VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gemeindegrenzen_gemnachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gemeindegrenzen_gemnachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.gemeindegrenzen_gemnachfuehrung TO mspublic;

CREATE INDEX idx_gemeindegrenzen_gemnachfuehrung_ogc_fid
  ON av_avdpool_ch.gemeindegrenzen_gemnachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_gemeindegrenzen_gemnachfuehrung_tid
  ON av_avdpool_ch.gemeindegrenzen_gemnachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_gemeindegrenzen_gemnachfuehrung_gem_bfs
  ON av_avdpool_ch.gemeindegrenzen_gemnachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_gemeindegrenzen_gemnachfuehrung_los
  ON av_avdpool_ch.gemeindegrenzen_gemnachfuehrung
  USING btree
  (los);

CREATE INDEX idx_gemeindegrenzen_gemnachfuehrung_perimeter
  ON av_avdpool_ch.gemeindegrenzen_gemnachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunkt
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 identifikator VARCHAR,
 geometrie geometry(POINT, 21781),
 lagegen DOUBLE PRECISION,
 lagezuv INTEGER,
 lagezuv_txt VARCHAR,
 punktzeichen INTEGER,
 punktzeichen_txt VARCHAR,
 hoheitsgrenzstein INTEGER,
 hoheitsgrenzstein_txt VARCHAR,
 exaktdefiniert INTEGER,
 exaktdefiniert_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunkt OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunkt TO stefan;
GRANT SELECT ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunkt TO mspublic;

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunkt_ogc_fid
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunkt
  USING btree
  (ogc_fid);

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunkt_tid
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunkt
  USING btree
  (tid);

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunkt_entstehung
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunkt
  USING btree
  (entstehung);

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunkt_gem_bfs
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunkt
  USING btree
  (gem_bfs);

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunkt_los
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunkt
  USING btree
  (los);

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunkt_geometrie
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunkt
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 hoheitsgrenzpunktpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktpos TO stefan;
GRANT SELECT ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktpos TO mspublic;

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunktpos_ogc_fid
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunktpos_tid
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktpos
  USING btree
  (tid);

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunktpos_hoheitsgrenzpunktpos_von
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktpos
  USING btree
  (hoheitsgrenzpunktpos_von);

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunktpos_gem_bfs
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunktpos_los
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktpos
  USING btree
  (los);

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunktpos_pos
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktsymbol
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 hoheitsgrenzpunktsymbol_von VARCHAR,
 ori DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktsymbol OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktsymbol TO stefan;
GRANT SELECT ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktsymbol TO mspublic;

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunktsymbol_ogc_fid
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktsymbol
  USING btree
  (ogc_fid);

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunktsymbol_tid
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktsymbol
  USING btree
  (tid);

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunktsymbol_hoheitsgrenzpunktsymbol_von
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktsymbol
  USING btree
  (hoheitsgrenzpunktsymbol_von);

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunktsymbol_gem_bfs
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktsymbol
  USING btree
  (gem_bfs);

CREATE INDEX idx_gemeindegrenzen_hoheitsgrenzpunktsymbol_los
  ON av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunktsymbol
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gemeindegrenzen_gemeinde
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 name VARCHAR,
 bfsnr DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gemeindegrenzen_gemeinde OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gemeindegrenzen_gemeinde TO stefan;
GRANT SELECT ON av_avdpool_ch.gemeindegrenzen_gemeinde TO mspublic;

CREATE INDEX idx_gemeindegrenzen_gemeinde_ogc_fid
  ON av_avdpool_ch.gemeindegrenzen_gemeinde
  USING btree
  (ogc_fid);

CREATE INDEX idx_gemeindegrenzen_gemeinde_tid
  ON av_avdpool_ch.gemeindegrenzen_gemeinde
  USING btree
  (tid);

CREATE INDEX idx_gemeindegrenzen_gemeinde_gem_bfs
  ON av_avdpool_ch.gemeindegrenzen_gemeinde
  USING btree
  (gem_bfs);

CREATE INDEX idx_gemeindegrenzen_gemeinde_los
  ON av_avdpool_ch.gemeindegrenzen_gemeinde
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gemeindegrenzen_projgemeindegrenze
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 projgemeindegrenze_von VARCHAR,
 geometrie geometry(LINESTRING, 21781),
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gemeindegrenzen_projgemeindegrenze OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gemeindegrenzen_projgemeindegrenze TO stefan;
GRANT SELECT ON av_avdpool_ch.gemeindegrenzen_projgemeindegrenze TO mspublic;

CREATE INDEX idx_gemeindegrenzen_projgemeindegrenze_ogc_fid
  ON av_avdpool_ch.gemeindegrenzen_projgemeindegrenze
  USING btree
  (ogc_fid);

CREATE INDEX idx_gemeindegrenzen_projgemeindegrenze_tid
  ON av_avdpool_ch.gemeindegrenzen_projgemeindegrenze
  USING btree
  (tid);

CREATE INDEX idx_gemeindegrenzen_projgemeindegrenze_entstehung
  ON av_avdpool_ch.gemeindegrenzen_projgemeindegrenze
  USING btree
  (entstehung);

CREATE INDEX idx_gemeindegrenzen_projgemeindegrenze_projgemeindegrenze_von
  ON av_avdpool_ch.gemeindegrenzen_projgemeindegrenze
  USING btree
  (projgemeindegrenze_von);

CREATE INDEX idx_gemeindegrenzen_projgemeindegrenze_gem_bfs
  ON av_avdpool_ch.gemeindegrenzen_projgemeindegrenze
  USING btree
  (gem_bfs);

CREATE INDEX idx_gemeindegrenzen_projgemeindegrenze_los
  ON av_avdpool_ch.gemeindegrenzen_projgemeindegrenze
  USING btree
  (los);

CREATE INDEX idx_gemeindegrenzen_projgemeindegrenze_geometrie
  ON av_avdpool_ch.gemeindegrenzen_projgemeindegrenze
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gemeindegrenzen_lineattrib8
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 linienart INTEGER,
 linienart_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gemeindegrenzen_lineattrib8 OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gemeindegrenzen_lineattrib8 TO stefan;
GRANT SELECT ON av_avdpool_ch.gemeindegrenzen_lineattrib8 TO mspublic;

CREATE INDEX idx_gemeindegrenzen_lineattrib8_ogc_fid
  ON av_avdpool_ch.gemeindegrenzen_lineattrib8
  USING btree
  (ogc_fid);

CREATE INDEX idx_gemeindegrenzen_lineattrib8_tid
  ON av_avdpool_ch.gemeindegrenzen_lineattrib8
  USING btree
  (tid);

CREATE INDEX idx_gemeindegrenzen_lineattrib8_gem_bfs
  ON av_avdpool_ch.gemeindegrenzen_lineattrib8
  USING btree
  (gem_bfs);

CREATE INDEX idx_gemeindegrenzen_lineattrib8_los
  ON av_avdpool_ch.gemeindegrenzen_lineattrib8
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gemeindegrenzen_gemeindegrenze
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 gemeindegrenze_von VARCHAR,
 geometrie geometry(POLYGON, 21781),
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gemeindegrenzen_gemeindegrenze OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gemeindegrenzen_gemeindegrenze TO stefan;
GRANT SELECT ON av_avdpool_ch.gemeindegrenzen_gemeindegrenze TO mspublic;

CREATE INDEX idx_gemeindegrenzen_gemeindegrenze_ogc_fid
  ON av_avdpool_ch.gemeindegrenzen_gemeindegrenze
  USING btree
  (ogc_fid);

CREATE INDEX idx_gemeindegrenzen_gemeindegrenze_tid
  ON av_avdpool_ch.gemeindegrenzen_gemeindegrenze
  USING btree
  (tid);

CREATE INDEX idx_gemeindegrenzen_gemeindegrenze_entstehung
  ON av_avdpool_ch.gemeindegrenzen_gemeindegrenze
  USING btree
  (entstehung);

CREATE INDEX idx_gemeindegrenzen_gemeindegrenze_gemeindegrenze_von
  ON av_avdpool_ch.gemeindegrenzen_gemeindegrenze
  USING btree
  (gemeindegrenze_von);

CREATE INDEX idx_gemeindegrenzen_gemeindegrenze_gem_bfs
  ON av_avdpool_ch.gemeindegrenzen_gemeindegrenze
  USING btree
  (gem_bfs);

CREATE INDEX idx_gemeindegrenzen_gemeindegrenze_los
  ON av_avdpool_ch.gemeindegrenzen_gemeindegrenze
  USING btree
  (los);

CREATE INDEX idx_gemeindegrenzen_gemeindegrenze_geometrie
  ON av_avdpool_ch.gemeindegrenzen_gemeindegrenze
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.bezirksgrenzen_bezirksgrenzabschnitt
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 geometrie geometry(LINESTRING, 21781),
 gueltigkeit INTEGER,
 gueltigkeit_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.bezirksgrenzen_bezirksgrenzabschnitt OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.bezirksgrenzen_bezirksgrenzabschnitt TO stefan;
GRANT SELECT ON av_avdpool_ch.bezirksgrenzen_bezirksgrenzabschnitt TO mspublic;

CREATE INDEX idx_bezirksgrenzen_bezirksgrenzabschnitt_ogc_fid
  ON av_avdpool_ch.bezirksgrenzen_bezirksgrenzabschnitt
  USING btree
  (ogc_fid);

CREATE INDEX idx_bezirksgrenzen_bezirksgrenzabschnitt_tid
  ON av_avdpool_ch.bezirksgrenzen_bezirksgrenzabschnitt
  USING btree
  (tid);

CREATE INDEX idx_bezirksgrenzen_bezirksgrenzabschnitt_gem_bfs
  ON av_avdpool_ch.bezirksgrenzen_bezirksgrenzabschnitt
  USING btree
  (gem_bfs);

CREATE INDEX idx_bezirksgrenzen_bezirksgrenzabschnitt_los
  ON av_avdpool_ch.bezirksgrenzen_bezirksgrenzabschnitt
  USING btree
  (los);

CREATE INDEX idx_bezirksgrenzen_bezirksgrenzabschnitt_geometrie
  ON av_avdpool_ch.bezirksgrenzen_bezirksgrenzabschnitt
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.kantonsgrenzen_kantonsgrenzabschnitt
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 geometrie geometry(LINESTRING, 21781),
 gueltigkeit INTEGER,
 gueltigkeit_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.kantonsgrenzen_kantonsgrenzabschnitt OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.kantonsgrenzen_kantonsgrenzabschnitt TO stefan;
GRANT SELECT ON av_avdpool_ch.kantonsgrenzen_kantonsgrenzabschnitt TO mspublic;

CREATE INDEX idx_kantonsgrenzen_kantonsgrenzabschnitt_ogc_fid
  ON av_avdpool_ch.kantonsgrenzen_kantonsgrenzabschnitt
  USING btree
  (ogc_fid);

CREATE INDEX idx_kantonsgrenzen_kantonsgrenzabschnitt_tid
  ON av_avdpool_ch.kantonsgrenzen_kantonsgrenzabschnitt
  USING btree
  (tid);

CREATE INDEX idx_kantonsgrenzen_kantonsgrenzabschnitt_gem_bfs
  ON av_avdpool_ch.kantonsgrenzen_kantonsgrenzabschnitt
  USING btree
  (gem_bfs);

CREATE INDEX idx_kantonsgrenzen_kantonsgrenzabschnitt_los
  ON av_avdpool_ch.kantonsgrenzen_kantonsgrenzabschnitt
  USING btree
  (los);

CREATE INDEX idx_kantonsgrenzen_kantonsgrenzabschnitt_geometrie
  ON av_avdpool_ch.kantonsgrenzen_kantonsgrenzabschnitt
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.landesgrenzen_landesgrenzabschnitt
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 geometrie geometry(LINESTRING, 21781),
 gueltigkeit INTEGER,
 gueltigkeit_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.landesgrenzen_landesgrenzabschnitt OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.landesgrenzen_landesgrenzabschnitt TO stefan;
GRANT SELECT ON av_avdpool_ch.landesgrenzen_landesgrenzabschnitt TO mspublic;

CREATE INDEX idx_landesgrenzen_landesgrenzabschnitt_ogc_fid
  ON av_avdpool_ch.landesgrenzen_landesgrenzabschnitt
  USING btree
  (ogc_fid);

CREATE INDEX idx_landesgrenzen_landesgrenzabschnitt_tid
  ON av_avdpool_ch.landesgrenzen_landesgrenzabschnitt
  USING btree
  (tid);

CREATE INDEX idx_landesgrenzen_landesgrenzabschnitt_gem_bfs
  ON av_avdpool_ch.landesgrenzen_landesgrenzabschnitt
  USING btree
  (gem_bfs);

CREATE INDEX idx_landesgrenzen_landesgrenzabschnitt_los
  ON av_avdpool_ch.landesgrenzen_landesgrenzabschnitt
  USING btree
  (los);

CREATE INDEX idx_landesgrenzen_landesgrenzabschnitt_geometrie
  ON av_avdpool_ch.landesgrenzen_landesgrenzabschnitt
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.planeinteilungen_plan
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 nummer VARCHAR,
 techdossier VARCHAR,
 gueltigereintrag VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.planeinteilungen_plan OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.planeinteilungen_plan TO stefan;
GRANT SELECT ON av_avdpool_ch.planeinteilungen_plan TO mspublic;

CREATE INDEX idx_planeinteilungen_plan_ogc_fid
  ON av_avdpool_ch.planeinteilungen_plan
  USING btree
  (ogc_fid);

CREATE INDEX idx_planeinteilungen_plan_tid
  ON av_avdpool_ch.planeinteilungen_plan
  USING btree
  (tid);

CREATE INDEX idx_planeinteilungen_plan_gem_bfs
  ON av_avdpool_ch.planeinteilungen_plan
  USING btree
  (gem_bfs);

CREATE INDEX idx_planeinteilungen_plan_los
  ON av_avdpool_ch.planeinteilungen_plan
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.planeinteilungen_plangeometrie
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 plangeometrie_von VARCHAR,
 geometrie geometry(POLYGON, 21781),
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.planeinteilungen_plangeometrie OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.planeinteilungen_plangeometrie TO stefan;
GRANT SELECT ON av_avdpool_ch.planeinteilungen_plangeometrie TO mspublic;

CREATE INDEX idx_planeinteilungen_plangeometrie_ogc_fid
  ON av_avdpool_ch.planeinteilungen_plangeometrie
  USING btree
  (ogc_fid);

CREATE INDEX idx_planeinteilungen_plangeometrie_tid
  ON av_avdpool_ch.planeinteilungen_plangeometrie
  USING btree
  (tid);

CREATE INDEX idx_planeinteilungen_plangeometrie_plangeometrie_von
  ON av_avdpool_ch.planeinteilungen_plangeometrie
  USING btree
  (plangeometrie_von);

CREATE INDEX idx_planeinteilungen_plangeometrie_gem_bfs
  ON av_avdpool_ch.planeinteilungen_plangeometrie
  USING btree
  (gem_bfs);

CREATE INDEX idx_planeinteilungen_plangeometrie_los
  ON av_avdpool_ch.planeinteilungen_plangeometrie
  USING btree
  (los);

CREATE INDEX idx_planeinteilungen_plangeometrie_geometrie
  ON av_avdpool_ch.planeinteilungen_plangeometrie
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.planeinteilungen_planpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 planpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.planeinteilungen_planpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.planeinteilungen_planpos TO stefan;
GRANT SELECT ON av_avdpool_ch.planeinteilungen_planpos TO mspublic;

CREATE INDEX idx_planeinteilungen_planpos_ogc_fid
  ON av_avdpool_ch.planeinteilungen_planpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_planeinteilungen_planpos_tid
  ON av_avdpool_ch.planeinteilungen_planpos
  USING btree
  (tid);

CREATE INDEX idx_planeinteilungen_planpos_planpos_von
  ON av_avdpool_ch.planeinteilungen_planpos
  USING btree
  (planpos_von);

CREATE INDEX idx_planeinteilungen_planpos_gem_bfs
  ON av_avdpool_ch.planeinteilungen_planpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_planeinteilungen_planpos_los
  ON av_avdpool_ch.planeinteilungen_planpos
  USING btree
  (los);

CREATE INDEX idx_planeinteilungen_planpos_pos
  ON av_avdpool_ch.planeinteilungen_planpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.tseinteilung_toleranzstufe
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 geometrie geometry(POLYGON, 21781),
 gueltigereintrag VARCHAR,
 art INTEGER,
 art_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.tseinteilung_toleranzstufe OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.tseinteilung_toleranzstufe TO stefan;
GRANT SELECT ON av_avdpool_ch.tseinteilung_toleranzstufe TO mspublic;

CREATE INDEX idx_tseinteilung_toleranzstufe_ogc_fid
  ON av_avdpool_ch.tseinteilung_toleranzstufe
  USING btree
  (ogc_fid);

CREATE INDEX idx_tseinteilung_toleranzstufe_tid
  ON av_avdpool_ch.tseinteilung_toleranzstufe
  USING btree
  (tid);

CREATE INDEX idx_tseinteilung_toleranzstufe_gem_bfs
  ON av_avdpool_ch.tseinteilung_toleranzstufe
  USING btree
  (gem_bfs);

CREATE INDEX idx_tseinteilung_toleranzstufe_los
  ON av_avdpool_ch.tseinteilung_toleranzstufe
  USING btree
  (los);

CREATE INDEX idx_tseinteilung_toleranzstufe_geometrie
  ON av_avdpool_ch.tseinteilung_toleranzstufe
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.tseinteilung_toleranzstufepos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 toleranzstufepos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.tseinteilung_toleranzstufepos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.tseinteilung_toleranzstufepos TO stefan;
GRANT SELECT ON av_avdpool_ch.tseinteilung_toleranzstufepos TO mspublic;

CREATE INDEX idx_tseinteilung_toleranzstufepos_ogc_fid
  ON av_avdpool_ch.tseinteilung_toleranzstufepos
  USING btree
  (ogc_fid);

CREATE INDEX idx_tseinteilung_toleranzstufepos_tid
  ON av_avdpool_ch.tseinteilung_toleranzstufepos
  USING btree
  (tid);

CREATE INDEX idx_tseinteilung_toleranzstufepos_toleranzstufepos_von
  ON av_avdpool_ch.tseinteilung_toleranzstufepos
  USING btree
  (toleranzstufepos_von);

CREATE INDEX idx_tseinteilung_toleranzstufepos_gem_bfs
  ON av_avdpool_ch.tseinteilung_toleranzstufepos
  USING btree
  (gem_bfs);

CREATE INDEX idx_tseinteilung_toleranzstufepos_los
  ON av_avdpool_ch.tseinteilung_toleranzstufepos
  USING btree
  (los);

CREATE INDEX idx_tseinteilung_toleranzstufepos_pos
  ON av_avdpool_ch.tseinteilung_toleranzstufepos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.rutschgebiete_rutschung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 name VARCHAR,
 geometrie geometry(POLYGON, 21781),
 gueltigereintrag VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.rutschgebiete_rutschung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.rutschgebiete_rutschung TO stefan;
GRANT SELECT ON av_avdpool_ch.rutschgebiete_rutschung TO mspublic;

CREATE INDEX idx_rutschgebiete_rutschung_ogc_fid
  ON av_avdpool_ch.rutschgebiete_rutschung
  USING btree
  (ogc_fid);

CREATE INDEX idx_rutschgebiete_rutschung_tid
  ON av_avdpool_ch.rutschgebiete_rutschung
  USING btree
  (tid);

CREATE INDEX idx_rutschgebiete_rutschung_gem_bfs
  ON av_avdpool_ch.rutschgebiete_rutschung
  USING btree
  (gem_bfs);

CREATE INDEX idx_rutschgebiete_rutschung_los
  ON av_avdpool_ch.rutschgebiete_rutschung
  USING btree
  (los);

CREATE INDEX idx_rutschgebiete_rutschung_geometrie
  ON av_avdpool_ch.rutschgebiete_rutschung
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.rutschgebiete_rutschungpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 rutschungpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.rutschgebiete_rutschungpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.rutschgebiete_rutschungpos TO stefan;
GRANT SELECT ON av_avdpool_ch.rutschgebiete_rutschungpos TO mspublic;

CREATE INDEX idx_rutschgebiete_rutschungpos_ogc_fid
  ON av_avdpool_ch.rutschgebiete_rutschungpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_rutschgebiete_rutschungpos_tid
  ON av_avdpool_ch.rutschgebiete_rutschungpos
  USING btree
  (tid);

CREATE INDEX idx_rutschgebiete_rutschungpos_rutschungpos_von
  ON av_avdpool_ch.rutschgebiete_rutschungpos
  USING btree
  (rutschungpos_von);

CREATE INDEX idx_rutschgebiete_rutschungpos_gem_bfs
  ON av_avdpool_ch.rutschgebiete_rutschungpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_rutschgebiete_rutschungpos_los
  ON av_avdpool_ch.rutschgebiete_rutschungpos
  USING btree
  (los);

CREATE INDEX idx_rutschgebiete_rutschungpos_pos
  ON av_avdpool_ch.rutschgebiete_rutschungpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.plzortschaft_osnachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigkeit INTEGER,
 gueltigkeit_txt VARCHAR,
 gueltigereintrag VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.plzortschaft_osnachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.plzortschaft_osnachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.plzortschaft_osnachfuehrung TO mspublic;

CREATE INDEX idx_plzortschaft_osnachfuehrung_ogc_fid
  ON av_avdpool_ch.plzortschaft_osnachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_plzortschaft_osnachfuehrung_tid
  ON av_avdpool_ch.plzortschaft_osnachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_plzortschaft_osnachfuehrung_gem_bfs
  ON av_avdpool_ch.plzortschaft_osnachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_plzortschaft_osnachfuehrung_los
  ON av_avdpool_ch.plzortschaft_osnachfuehrung
  USING btree
  (los);

CREATE INDEX idx_plzortschaft_osnachfuehrung_perimeter
  ON av_avdpool_ch.plzortschaft_osnachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.plzortschaft_ortschaftsverbund
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 leer VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.plzortschaft_ortschaftsverbund OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.plzortschaft_ortschaftsverbund TO stefan;
GRANT SELECT ON av_avdpool_ch.plzortschaft_ortschaftsverbund TO mspublic;

CREATE INDEX idx_plzortschaft_ortschaftsverbund_ogc_fid
  ON av_avdpool_ch.plzortschaft_ortschaftsverbund
  USING btree
  (ogc_fid);

CREATE INDEX idx_plzortschaft_ortschaftsverbund_tid
  ON av_avdpool_ch.plzortschaft_ortschaftsverbund
  USING btree
  (tid);

CREATE INDEX idx_plzortschaft_ortschaftsverbund_gem_bfs
  ON av_avdpool_ch.plzortschaft_ortschaftsverbund
  USING btree
  (gem_bfs);

CREATE INDEX idx_plzortschaft_ortschaftsverbund_los
  ON av_avdpool_ch.plzortschaft_ortschaftsverbund
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.plzortschaft_ortschaftsverbundtext
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 ortschaftsverbundtext_von VARCHAR,
 text VARCHAR,
 sprache INTEGER,
 sprache_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.plzortschaft_ortschaftsverbundtext OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.plzortschaft_ortschaftsverbundtext TO stefan;
GRANT SELECT ON av_avdpool_ch.plzortschaft_ortschaftsverbundtext TO mspublic;

CREATE INDEX idx_plzortschaft_ortschaftsverbundtext_ogc_fid
  ON av_avdpool_ch.plzortschaft_ortschaftsverbundtext
  USING btree
  (ogc_fid);

CREATE INDEX idx_plzortschaft_ortschaftsverbundtext_tid
  ON av_avdpool_ch.plzortschaft_ortschaftsverbundtext
  USING btree
  (tid);

CREATE INDEX idx_plzortschaft_ortschaftsverbundtext_ortschaftsverbundtext_von
  ON av_avdpool_ch.plzortschaft_ortschaftsverbundtext
  USING btree
  (ortschaftsverbundtext_von);

CREATE INDEX idx_plzortschaft_ortschaftsverbundtext_gem_bfs
  ON av_avdpool_ch.plzortschaft_ortschaftsverbundtext
  USING btree
  (gem_bfs);

CREATE INDEX idx_plzortschaft_ortschaftsverbundtext_los
  ON av_avdpool_ch.plzortschaft_ortschaftsverbundtext
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.plzortschaft_ortschaft
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 ortschaft_von VARCHAR,
 status INTEGER,
 status_txt VARCHAR,
 inaenderung INTEGER,
 inaenderung_txt VARCHAR,
 flaeche geometry(POLYGON, 21781),
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.plzortschaft_ortschaft OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.plzortschaft_ortschaft TO stefan;
GRANT SELECT ON av_avdpool_ch.plzortschaft_ortschaft TO mspublic;

CREATE INDEX idx_plzortschaft_ortschaft_ogc_fid
  ON av_avdpool_ch.plzortschaft_ortschaft
  USING btree
  (ogc_fid);

CREATE INDEX idx_plzortschaft_ortschaft_tid
  ON av_avdpool_ch.plzortschaft_ortschaft
  USING btree
  (tid);

CREATE INDEX idx_plzortschaft_ortschaft_entstehung
  ON av_avdpool_ch.plzortschaft_ortschaft
  USING btree
  (entstehung);

CREATE INDEX idx_plzortschaft_ortschaft_ortschaft_von
  ON av_avdpool_ch.plzortschaft_ortschaft
  USING btree
  (ortschaft_von);

CREATE INDEX idx_plzortschaft_ortschaft_gem_bfs
  ON av_avdpool_ch.plzortschaft_ortschaft
  USING btree
  (gem_bfs);

CREATE INDEX idx_plzortschaft_ortschaft_los
  ON av_avdpool_ch.plzortschaft_ortschaft
  USING btree
  (los);

CREATE INDEX idx_plzortschaft_ortschaft_flaeche
  ON av_avdpool_ch.plzortschaft_ortschaft
  USING gist
  (flaeche);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.plzortschaft_ortschaftsname
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 ortschaftsname_von VARCHAR,
 text VARCHAR,
 kurztext VARCHAR,
 indextext VARCHAR,
 sprache INTEGER,
 sprache_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.plzortschaft_ortschaftsname OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.plzortschaft_ortschaftsname TO stefan;
GRANT SELECT ON av_avdpool_ch.plzortschaft_ortschaftsname TO mspublic;

CREATE INDEX idx_plzortschaft_ortschaftsname_ogc_fid
  ON av_avdpool_ch.plzortschaft_ortschaftsname
  USING btree
  (ogc_fid);

CREATE INDEX idx_plzortschaft_ortschaftsname_tid
  ON av_avdpool_ch.plzortschaft_ortschaftsname
  USING btree
  (tid);

CREATE INDEX idx_plzortschaft_ortschaftsname_ortschaftsname_von
  ON av_avdpool_ch.plzortschaft_ortschaftsname
  USING btree
  (ortschaftsname_von);

CREATE INDEX idx_plzortschaft_ortschaftsname_gem_bfs
  ON av_avdpool_ch.plzortschaft_ortschaftsname
  USING btree
  (gem_bfs);

CREATE INDEX idx_plzortschaft_ortschaftsname_los
  ON av_avdpool_ch.plzortschaft_ortschaftsname
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.plzortschaft_ortschaftsname_pos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 ortschaftsname_pos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.plzortschaft_ortschaftsname_pos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.plzortschaft_ortschaftsname_pos TO stefan;
GRANT SELECT ON av_avdpool_ch.plzortschaft_ortschaftsname_pos TO mspublic;

CREATE INDEX idx_plzortschaft_ortschaftsname_pos_ogc_fid
  ON av_avdpool_ch.plzortschaft_ortschaftsname_pos
  USING btree
  (ogc_fid);

CREATE INDEX idx_plzortschaft_ortschaftsname_pos_tid
  ON av_avdpool_ch.plzortschaft_ortschaftsname_pos
  USING btree
  (tid);

CREATE INDEX idx_plzortschaft_ortschaftsname_pos_ortschaftsname_pos_von
  ON av_avdpool_ch.plzortschaft_ortschaftsname_pos
  USING btree
  (ortschaftsname_pos_von);

CREATE INDEX idx_plzortschaft_ortschaftsname_pos_gem_bfs
  ON av_avdpool_ch.plzortschaft_ortschaftsname_pos
  USING btree
  (gem_bfs);

CREATE INDEX idx_plzortschaft_ortschaftsname_pos_los
  ON av_avdpool_ch.plzortschaft_ortschaftsname_pos
  USING btree
  (los);

CREATE INDEX idx_plzortschaft_ortschaftsname_pos_pos
  ON av_avdpool_ch.plzortschaft_ortschaftsname_pos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.plzortschaft_plz6nachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigkeit INTEGER,
 gueltigkeit_txt VARCHAR,
 gueltigereintrag VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.plzortschaft_plz6nachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.plzortschaft_plz6nachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.plzortschaft_plz6nachfuehrung TO mspublic;

CREATE INDEX idx_plzortschaft_plz6nachfuehrung_ogc_fid
  ON av_avdpool_ch.plzortschaft_plz6nachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_plzortschaft_plz6nachfuehrung_tid
  ON av_avdpool_ch.plzortschaft_plz6nachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_plzortschaft_plz6nachfuehrung_gem_bfs
  ON av_avdpool_ch.plzortschaft_plz6nachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_plzortschaft_plz6nachfuehrung_los
  ON av_avdpool_ch.plzortschaft_plz6nachfuehrung
  USING btree
  (los);

CREATE INDEX idx_plzortschaft_plz6nachfuehrung_perimeter
  ON av_avdpool_ch.plzortschaft_plz6nachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.plzortschaft_plz6
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 plz6_von VARCHAR,
 flaeche geometry(POLYGON, 21781),
 status INTEGER,
 status_txt VARCHAR,
 inaenderung INTEGER,
 inaenderung_txt VARCHAR,
 plz DOUBLE PRECISION,
 zusatzziffern DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.plzortschaft_plz6 OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.plzortschaft_plz6 TO stefan;
GRANT SELECT ON av_avdpool_ch.plzortschaft_plz6 TO mspublic;

CREATE INDEX idx_plzortschaft_plz6_ogc_fid
  ON av_avdpool_ch.plzortschaft_plz6
  USING btree
  (ogc_fid);

CREATE INDEX idx_plzortschaft_plz6_tid
  ON av_avdpool_ch.plzortschaft_plz6
  USING btree
  (tid);

CREATE INDEX idx_plzortschaft_plz6_entstehung
  ON av_avdpool_ch.plzortschaft_plz6
  USING btree
  (entstehung);

CREATE INDEX idx_plzortschaft_plz6_plz6_von
  ON av_avdpool_ch.plzortschaft_plz6
  USING btree
  (plz6_von);

CREATE INDEX idx_plzortschaft_plz6_gem_bfs
  ON av_avdpool_ch.plzortschaft_plz6
  USING btree
  (gem_bfs);

CREATE INDEX idx_plzortschaft_plz6_los
  ON av_avdpool_ch.plzortschaft_plz6
  USING btree
  (los);

CREATE INDEX idx_plzortschaft_plz6_flaeche
  ON av_avdpool_ch.plzortschaft_plz6
  USING gist
  (flaeche);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gebaeudeadressen_gebnachfuehrung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 beschreibung VARCHAR,
 perimeter geometry(POLYGON, 21781),
 gueltigkeit INTEGER,
 gueltigkeit_txt VARCHAR,
 gueltigereintrag VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gebaeudeadressen_gebnachfuehrung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gebaeudeadressen_gebnachfuehrung TO stefan;
GRANT SELECT ON av_avdpool_ch.gebaeudeadressen_gebnachfuehrung TO mspublic;

CREATE INDEX idx_gebaeudeadressen_gebnachfuehrung_ogc_fid
  ON av_avdpool_ch.gebaeudeadressen_gebnachfuehrung
  USING btree
  (ogc_fid);

CREATE INDEX idx_gebaeudeadressen_gebnachfuehrung_tid
  ON av_avdpool_ch.gebaeudeadressen_gebnachfuehrung
  USING btree
  (tid);

CREATE INDEX idx_gebaeudeadressen_gebnachfuehrung_gem_bfs
  ON av_avdpool_ch.gebaeudeadressen_gebnachfuehrung
  USING btree
  (gem_bfs);

CREATE INDEX idx_gebaeudeadressen_gebnachfuehrung_los
  ON av_avdpool_ch.gebaeudeadressen_gebnachfuehrung
  USING btree
  (los);

CREATE INDEX idx_gebaeudeadressen_gebnachfuehrung_perimeter
  ON av_avdpool_ch.gebaeudeadressen_gebnachfuehrung
  USING gist
  (perimeter);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gebaeudeadressen_lokalisation
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 nummerierungsprinzip INTEGER,
 nummerierungsprinzip_txt VARCHAR,
 lokalisationnummer VARCHAR,
 attributeprovisorisch INTEGER,
 attributeprovisorisch_txt VARCHAR,
 istoffiziellebezeichnung INTEGER,
 istoffiziellebezeichnung_txt VARCHAR,
 status INTEGER,
 status_txt VARCHAR,
 inaenderung INTEGER,
 inaenderung_txt VARCHAR,
 art INTEGER,
 art_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gebaeudeadressen_lokalisation OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gebaeudeadressen_lokalisation TO stefan;
GRANT SELECT ON av_avdpool_ch.gebaeudeadressen_lokalisation TO mspublic;

CREATE INDEX idx_gebaeudeadressen_lokalisation_ogc_fid
  ON av_avdpool_ch.gebaeudeadressen_lokalisation
  USING btree
  (ogc_fid);

CREATE INDEX idx_gebaeudeadressen_lokalisation_tid
  ON av_avdpool_ch.gebaeudeadressen_lokalisation
  USING btree
  (tid);

CREATE INDEX idx_gebaeudeadressen_lokalisation_entstehung
  ON av_avdpool_ch.gebaeudeadressen_lokalisation
  USING btree
  (entstehung);

CREATE INDEX idx_gebaeudeadressen_lokalisation_gem_bfs
  ON av_avdpool_ch.gebaeudeadressen_lokalisation
  USING btree
  (gem_bfs);

CREATE INDEX idx_gebaeudeadressen_lokalisation_los
  ON av_avdpool_ch.gebaeudeadressen_lokalisation
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gebaeudeadressen_lokalisationsname
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 benannte VARCHAR,
 text VARCHAR,
 kurztext VARCHAR,
 indextext VARCHAR,
 sprache INTEGER,
 sprache_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gebaeudeadressen_lokalisationsname OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gebaeudeadressen_lokalisationsname TO stefan;
GRANT SELECT ON av_avdpool_ch.gebaeudeadressen_lokalisationsname TO mspublic;

CREATE INDEX idx_gebaeudeadressen_lokalisationsname_ogc_fid
  ON av_avdpool_ch.gebaeudeadressen_lokalisationsname
  USING btree
  (ogc_fid);

CREATE INDEX idx_gebaeudeadressen_lokalisationsname_tid
  ON av_avdpool_ch.gebaeudeadressen_lokalisationsname
  USING btree
  (tid);

CREATE INDEX idx_gebaeudeadressen_lokalisationsname_benannte
  ON av_avdpool_ch.gebaeudeadressen_lokalisationsname
  USING btree
  (benannte);

CREATE INDEX idx_gebaeudeadressen_lokalisationsname_gem_bfs
  ON av_avdpool_ch.gebaeudeadressen_lokalisationsname
  USING btree
  (gem_bfs);

CREATE INDEX idx_gebaeudeadressen_lokalisationsname_los
  ON av_avdpool_ch.gebaeudeadressen_lokalisationsname
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gebaeudeadressen_lokalisationsnamepos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 lokalisationsnamepos_von VARCHAR,
 anfindex DOUBLE PRECISION,
 endindex DOUBLE PRECISION,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 hilfslinie geometry(LINESTRING, 21781),
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gebaeudeadressen_lokalisationsnamepos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gebaeudeadressen_lokalisationsnamepos TO stefan;
GRANT SELECT ON av_avdpool_ch.gebaeudeadressen_lokalisationsnamepos TO mspublic;

CREATE INDEX idx_gebaeudeadressen_lokalisationsnamepos_ogc_fid
  ON av_avdpool_ch.gebaeudeadressen_lokalisationsnamepos
  USING btree
  (ogc_fid);

CREATE INDEX idx_gebaeudeadressen_lokalisationsnamepos_tid
  ON av_avdpool_ch.gebaeudeadressen_lokalisationsnamepos
  USING btree
  (tid);

CREATE INDEX idx_gebaeudeadressen_lokalisationsnamepos_lokalisationsnamepos_von
  ON av_avdpool_ch.gebaeudeadressen_lokalisationsnamepos
  USING btree
  (lokalisationsnamepos_von);

CREATE INDEX idx_gebaeudeadressen_lokalisationsnamepos_gem_bfs
  ON av_avdpool_ch.gebaeudeadressen_lokalisationsnamepos
  USING btree
  (gem_bfs);

CREATE INDEX idx_gebaeudeadressen_lokalisationsnamepos_los
  ON av_avdpool_ch.gebaeudeadressen_lokalisationsnamepos
  USING btree
  (los);

CREATE INDEX idx_gebaeudeadressen_lokalisationsnamepos_pos
  ON av_avdpool_ch.gebaeudeadressen_lokalisationsnamepos
  USING gist
  (pos);

CREATE INDEX idx_gebaeudeadressen_lokalisationsnamepos_hilfslinie
  ON av_avdpool_ch.gebaeudeadressen_lokalisationsnamepos
  USING gist
  (hilfslinie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gebaeudeadressen_benanntesgebiet
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 benanntesgebiet_von VARCHAR,
 flaeche geometry(POLYGON, 21781),
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gebaeudeadressen_benanntesgebiet OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gebaeudeadressen_benanntesgebiet TO stefan;
GRANT SELECT ON av_avdpool_ch.gebaeudeadressen_benanntesgebiet TO mspublic;

CREATE INDEX idx_gebaeudeadressen_benanntesgebiet_ogc_fid
  ON av_avdpool_ch.gebaeudeadressen_benanntesgebiet
  USING btree
  (ogc_fid);

CREATE INDEX idx_gebaeudeadressen_benanntesgebiet_tid
  ON av_avdpool_ch.gebaeudeadressen_benanntesgebiet
  USING btree
  (tid);

CREATE INDEX idx_gebaeudeadressen_benanntesgebiet_benanntesgebiet_von
  ON av_avdpool_ch.gebaeudeadressen_benanntesgebiet
  USING btree
  (benanntesgebiet_von);

CREATE INDEX idx_gebaeudeadressen_benanntesgebiet_gem_bfs
  ON av_avdpool_ch.gebaeudeadressen_benanntesgebiet
  USING btree
  (gem_bfs);

CREATE INDEX idx_gebaeudeadressen_benanntesgebiet_los
  ON av_avdpool_ch.gebaeudeadressen_benanntesgebiet
  USING btree
  (los);

CREATE INDEX idx_gebaeudeadressen_benanntesgebiet_flaeche
  ON av_avdpool_ch.gebaeudeadressen_benanntesgebiet
  USING gist
  (flaeche);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gebaeudeadressen_strassenstueck
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 strassenstueck_von VARCHAR,
 geometrie geometry(LINESTRING, 21781),
 anfangspunkt geometry(POINT, 21781),
 ordnung DOUBLE PRECISION,
 istachse INTEGER,
 istachse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gebaeudeadressen_strassenstueck OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gebaeudeadressen_strassenstueck TO stefan;
GRANT SELECT ON av_avdpool_ch.gebaeudeadressen_strassenstueck TO mspublic;

CREATE INDEX idx_gebaeudeadressen_strassenstueck_ogc_fid
  ON av_avdpool_ch.gebaeudeadressen_strassenstueck
  USING btree
  (ogc_fid);

CREATE INDEX idx_gebaeudeadressen_strassenstueck_tid
  ON av_avdpool_ch.gebaeudeadressen_strassenstueck
  USING btree
  (tid);

CREATE INDEX idx_gebaeudeadressen_strassenstueck_strassenstueck_von
  ON av_avdpool_ch.gebaeudeadressen_strassenstueck
  USING btree
  (strassenstueck_von);

CREATE INDEX idx_gebaeudeadressen_strassenstueck_gem_bfs
  ON av_avdpool_ch.gebaeudeadressen_strassenstueck
  USING btree
  (gem_bfs);

CREATE INDEX idx_gebaeudeadressen_strassenstueck_los
  ON av_avdpool_ch.gebaeudeadressen_strassenstueck
  USING btree
  (los);

CREATE INDEX idx_gebaeudeadressen_strassenstueck_geometrie
  ON av_avdpool_ch.gebaeudeadressen_strassenstueck
  USING gist
  (geometrie);

CREATE INDEX idx_gebaeudeadressen_strassenstueck_anfangspunkt
  ON av_avdpool_ch.gebaeudeadressen_strassenstueck
  USING gist
  (anfangspunkt);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gebaeudeadressen_gebaeudeeingang
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 entstehung VARCHAR,
 gebaeudeeingang_von VARCHAR,
 status INTEGER,
 status_txt VARCHAR,
 inaenderung INTEGER,
 inaenderung_txt VARCHAR,
 attributeprovisorisch INTEGER,
 attributeprovisorisch_txt VARCHAR,
 istoffiziellebezeichnung INTEGER,
 istoffiziellebezeichnung_txt VARCHAR,
 lage geometry(POINT, 21781),
 hoehenlage DOUBLE PRECISION,
 hausnummer VARCHAR,
 im_gebaeude INTEGER,
 im_gebaeude_txt VARCHAR,
 gwr_egid DOUBLE PRECISION,
 gwr_edid DOUBLE PRECISION,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gebaeudeadressen_gebaeudeeingang OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gebaeudeadressen_gebaeudeeingang TO stefan;
GRANT SELECT ON av_avdpool_ch.gebaeudeadressen_gebaeudeeingang TO mspublic;

CREATE INDEX idx_gebaeudeadressen_gebaeudeeingang_ogc_fid
  ON av_avdpool_ch.gebaeudeadressen_gebaeudeeingang
  USING btree
  (ogc_fid);

CREATE INDEX idx_gebaeudeadressen_gebaeudeeingang_tid
  ON av_avdpool_ch.gebaeudeadressen_gebaeudeeingang
  USING btree
  (tid);

CREATE INDEX idx_gebaeudeadressen_gebaeudeeingang_entstehung
  ON av_avdpool_ch.gebaeudeadressen_gebaeudeeingang
  USING btree
  (entstehung);

CREATE INDEX idx_gebaeudeadressen_gebaeudeeingang_gebaeudeeingang_von
  ON av_avdpool_ch.gebaeudeadressen_gebaeudeeingang
  USING btree
  (gebaeudeeingang_von);

CREATE INDEX idx_gebaeudeadressen_gebaeudeeingang_gem_bfs
  ON av_avdpool_ch.gebaeudeadressen_gebaeudeeingang
  USING btree
  (gem_bfs);

CREATE INDEX idx_gebaeudeadressen_gebaeudeeingang_los
  ON av_avdpool_ch.gebaeudeadressen_gebaeudeeingang
  USING btree
  (los);

CREATE INDEX idx_gebaeudeadressen_gebaeudeeingang_lage
  ON av_avdpool_ch.gebaeudeadressen_gebaeudeeingang
  USING gist
  (lage);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gebaeudeadressen_hausnummerpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 hausnummerpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gebaeudeadressen_hausnummerpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gebaeudeadressen_hausnummerpos TO stefan;
GRANT SELECT ON av_avdpool_ch.gebaeudeadressen_hausnummerpos TO mspublic;

CREATE INDEX idx_gebaeudeadressen_hausnummerpos_ogc_fid
  ON av_avdpool_ch.gebaeudeadressen_hausnummerpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_gebaeudeadressen_hausnummerpos_tid
  ON av_avdpool_ch.gebaeudeadressen_hausnummerpos
  USING btree
  (tid);

CREATE INDEX idx_gebaeudeadressen_hausnummerpos_hausnummerpos_von
  ON av_avdpool_ch.gebaeudeadressen_hausnummerpos
  USING btree
  (hausnummerpos_von);

CREATE INDEX idx_gebaeudeadressen_hausnummerpos_gem_bfs
  ON av_avdpool_ch.gebaeudeadressen_hausnummerpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_gebaeudeadressen_hausnummerpos_los
  ON av_avdpool_ch.gebaeudeadressen_hausnummerpos
  USING btree
  (los);

CREATE INDEX idx_gebaeudeadressen_hausnummerpos_pos
  ON av_avdpool_ch.gebaeudeadressen_hausnummerpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gebaeudeadressen_gebaeudename
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 gebaeudename_von VARCHAR,
 text VARCHAR,
 kurztext VARCHAR,
 indextext VARCHAR,
 sprache INTEGER,
 sprache_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gebaeudeadressen_gebaeudename OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gebaeudeadressen_gebaeudename TO stefan;
GRANT SELECT ON av_avdpool_ch.gebaeudeadressen_gebaeudename TO mspublic;

CREATE INDEX idx_gebaeudeadressen_gebaeudename_ogc_fid
  ON av_avdpool_ch.gebaeudeadressen_gebaeudename
  USING btree
  (ogc_fid);

CREATE INDEX idx_gebaeudeadressen_gebaeudename_tid
  ON av_avdpool_ch.gebaeudeadressen_gebaeudename
  USING btree
  (tid);

CREATE INDEX idx_gebaeudeadressen_gebaeudename_gebaeudename_von
  ON av_avdpool_ch.gebaeudeadressen_gebaeudename
  USING btree
  (gebaeudename_von);

CREATE INDEX idx_gebaeudeadressen_gebaeudename_gem_bfs
  ON av_avdpool_ch.gebaeudeadressen_gebaeudename
  USING btree
  (gem_bfs);

CREATE INDEX idx_gebaeudeadressen_gebaeudename_los
  ON av_avdpool_ch.gebaeudeadressen_gebaeudename
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gebaeudeadressen_gebaeudenamepos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 gebaeudenamepos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 hilfslinie geometry(LINESTRING, 21781),
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gebaeudeadressen_gebaeudenamepos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gebaeudeadressen_gebaeudenamepos TO stefan;
GRANT SELECT ON av_avdpool_ch.gebaeudeadressen_gebaeudenamepos TO mspublic;

CREATE INDEX idx_gebaeudeadressen_gebaeudenamepos_ogc_fid
  ON av_avdpool_ch.gebaeudeadressen_gebaeudenamepos
  USING btree
  (ogc_fid);

CREATE INDEX idx_gebaeudeadressen_gebaeudenamepos_tid
  ON av_avdpool_ch.gebaeudeadressen_gebaeudenamepos
  USING btree
  (tid);

CREATE INDEX idx_gebaeudeadressen_gebaeudenamepos_gebaeudenamepos_von
  ON av_avdpool_ch.gebaeudeadressen_gebaeudenamepos
  USING btree
  (gebaeudenamepos_von);

CREATE INDEX idx_gebaeudeadressen_gebaeudenamepos_gem_bfs
  ON av_avdpool_ch.gebaeudeadressen_gebaeudenamepos
  USING btree
  (gem_bfs);

CREATE INDEX idx_gebaeudeadressen_gebaeudenamepos_los
  ON av_avdpool_ch.gebaeudeadressen_gebaeudenamepos
  USING btree
  (los);

CREATE INDEX idx_gebaeudeadressen_gebaeudenamepos_pos
  ON av_avdpool_ch.gebaeudeadressen_gebaeudenamepos
  USING gist
  (pos);

CREATE INDEX idx_gebaeudeadressen_gebaeudenamepos_hilfslinie
  ON av_avdpool_ch.gebaeudeadressen_gebaeudenamepos
  USING gist
  (hilfslinie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.gebaeudeadressen_gebaeudebeschreibung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 gebaeudebeschreibung_von VARCHAR,
 text VARCHAR,
 sprache INTEGER,
 sprache_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.gebaeudeadressen_gebaeudebeschreibung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.gebaeudeadressen_gebaeudebeschreibung TO stefan;
GRANT SELECT ON av_avdpool_ch.gebaeudeadressen_gebaeudebeschreibung TO mspublic;

CREATE INDEX idx_gebaeudeadressen_gebaeudebeschreibung_ogc_fid
  ON av_avdpool_ch.gebaeudeadressen_gebaeudebeschreibung
  USING btree
  (ogc_fid);

CREATE INDEX idx_gebaeudeadressen_gebaeudebeschreibung_tid
  ON av_avdpool_ch.gebaeudeadressen_gebaeudebeschreibung
  USING btree
  (tid);

CREATE INDEX idx_gebaeudeadressen_gebaeudebeschreibung_gebaeudebeschreibung_von
  ON av_avdpool_ch.gebaeudeadressen_gebaeudebeschreibung
  USING btree
  (gebaeudebeschreibung_von);

CREATE INDEX idx_gebaeudeadressen_gebaeudebeschreibung_gem_bfs
  ON av_avdpool_ch.gebaeudeadressen_gebaeudebeschreibung
  USING btree
  (gem_bfs);

CREATE INDEX idx_gebaeudeadressen_gebaeudebeschreibung_los
  ON av_avdpool_ch.gebaeudeadressen_gebaeudebeschreibung
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.planrahmen_planlayout
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 nbident VARCHAR,
 identifikator VARCHAR,
 layouttyp VARCHAR,
 plannummer VARCHAR,
 gemeindename VARCHAR,
 geometername VARCHAR,
 erstellungsdatum VARCHAR,
 nachfuehrungsgeometername VARCHAR,
 nachfuehrungsdatum VARCHAR,
 massstabszahl DOUBLE PRECISION,
 plannullpunkt geometry(POINT, 21781),
 e_azimut DOUBLE PRECISION,
 uebersichtmassstabszahl DOUBLE PRECISION,
 uebersichtplannullpunkt geometry(POINT, 21781),
 mit_koordinatennetz INTEGER,
 mit_koordinatennetz_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.planrahmen_planlayout OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.planrahmen_planlayout TO stefan;
GRANT SELECT ON av_avdpool_ch.planrahmen_planlayout TO mspublic;

CREATE INDEX idx_planrahmen_planlayout_ogc_fid
  ON av_avdpool_ch.planrahmen_planlayout
  USING btree
  (ogc_fid);

CREATE INDEX idx_planrahmen_planlayout_tid
  ON av_avdpool_ch.planrahmen_planlayout
  USING btree
  (tid);

CREATE INDEX idx_planrahmen_planlayout_gem_bfs
  ON av_avdpool_ch.planrahmen_planlayout
  USING btree
  (gem_bfs);

CREATE INDEX idx_planrahmen_planlayout_los
  ON av_avdpool_ch.planrahmen_planlayout
  USING btree
  (los);

CREATE INDEX idx_planrahmen_planlayout_plannullpunkt
  ON av_avdpool_ch.planrahmen_planlayout
  USING gist
  (plannullpunkt);

CREATE INDEX idx_planrahmen_planlayout_uebersichtplannullpunkt
  ON av_avdpool_ch.planrahmen_planlayout
  USING gist
  (uebersichtplannullpunkt);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.planrahmen_planbeschriftung
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 planbeschriftung_von VARCHAR,
 beschriftung VARCHAR,
 art INTEGER,
 art_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.planrahmen_planbeschriftung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.planrahmen_planbeschriftung TO stefan;
GRANT SELECT ON av_avdpool_ch.planrahmen_planbeschriftung TO mspublic;

CREATE INDEX idx_planrahmen_planbeschriftung_ogc_fid
  ON av_avdpool_ch.planrahmen_planbeschriftung
  USING btree
  (ogc_fid);

CREATE INDEX idx_planrahmen_planbeschriftung_tid
  ON av_avdpool_ch.planrahmen_planbeschriftung
  USING btree
  (tid);

CREATE INDEX idx_planrahmen_planbeschriftung_planbeschriftung_von
  ON av_avdpool_ch.planrahmen_planbeschriftung
  USING btree
  (planbeschriftung_von);

CREATE INDEX idx_planrahmen_planbeschriftung_gem_bfs
  ON av_avdpool_ch.planrahmen_planbeschriftung
  USING btree
  (gem_bfs);

CREATE INDEX idx_planrahmen_planbeschriftung_los
  ON av_avdpool_ch.planrahmen_planbeschriftung
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.planrahmen_planbeschriftungpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 planbeschriftungpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.planrahmen_planbeschriftungpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.planrahmen_planbeschriftungpos TO stefan;
GRANT SELECT ON av_avdpool_ch.planrahmen_planbeschriftungpos TO mspublic;

CREATE INDEX idx_planrahmen_planbeschriftungpos_ogc_fid
  ON av_avdpool_ch.planrahmen_planbeschriftungpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_planrahmen_planbeschriftungpos_tid
  ON av_avdpool_ch.planrahmen_planbeschriftungpos
  USING btree
  (tid);

CREATE INDEX idx_planrahmen_planbeschriftungpos_planbeschriftungpos_von
  ON av_avdpool_ch.planrahmen_planbeschriftungpos
  USING btree
  (planbeschriftungpos_von);

CREATE INDEX idx_planrahmen_planbeschriftungpos_gem_bfs
  ON av_avdpool_ch.planrahmen_planbeschriftungpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_planrahmen_planbeschriftungpos_los
  ON av_avdpool_ch.planrahmen_planbeschriftungpos
  USING btree
  (los);

CREATE INDEX idx_planrahmen_planbeschriftungpos_pos
  ON av_avdpool_ch.planrahmen_planbeschriftungpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.planrahmen_koordinatenanschrift
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 koordinatenanschrift_von VARCHAR,
 beschriftung VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.planrahmen_koordinatenanschrift OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.planrahmen_koordinatenanschrift TO stefan;
GRANT SELECT ON av_avdpool_ch.planrahmen_koordinatenanschrift TO mspublic;

CREATE INDEX idx_planrahmen_koordinatenanschrift_ogc_fid
  ON av_avdpool_ch.planrahmen_koordinatenanschrift
  USING btree
  (ogc_fid);

CREATE INDEX idx_planrahmen_koordinatenanschrift_tid
  ON av_avdpool_ch.planrahmen_koordinatenanschrift
  USING btree
  (tid);

CREATE INDEX idx_planrahmen_koordinatenanschrift_koordinatenanschrift_von
  ON av_avdpool_ch.planrahmen_koordinatenanschrift
  USING btree
  (koordinatenanschrift_von);

CREATE INDEX idx_planrahmen_koordinatenanschrift_gem_bfs
  ON av_avdpool_ch.planrahmen_koordinatenanschrift
  USING btree
  (gem_bfs);

CREATE INDEX idx_planrahmen_koordinatenanschrift_los
  ON av_avdpool_ch.planrahmen_koordinatenanschrift
  USING btree
  (los);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.planrahmen_koordinatenanschriftpos
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 koordinatenanschriftpos_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 hali INTEGER,
 hali_txt VARCHAR,
 vali INTEGER,
 vali_txt VARCHAR,
 groesse INTEGER,
 groesse_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.planrahmen_koordinatenanschriftpos OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.planrahmen_koordinatenanschriftpos TO stefan;
GRANT SELECT ON av_avdpool_ch.planrahmen_koordinatenanschriftpos TO mspublic;

CREATE INDEX idx_planrahmen_koordinatenanschriftpos_ogc_fid
  ON av_avdpool_ch.planrahmen_koordinatenanschriftpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_planrahmen_koordinatenanschriftpos_tid
  ON av_avdpool_ch.planrahmen_koordinatenanschriftpos
  USING btree
  (tid);

CREATE INDEX idx_planrahmen_koordinatenanschriftpos_koordinatenanschriftpos_von
  ON av_avdpool_ch.planrahmen_koordinatenanschriftpos
  USING btree
  (koordinatenanschriftpos_von);

CREATE INDEX idx_planrahmen_koordinatenanschriftpos_gem_bfs
  ON av_avdpool_ch.planrahmen_koordinatenanschriftpos
  USING btree
  (gem_bfs);

CREATE INDEX idx_planrahmen_koordinatenanschriftpos_los
  ON av_avdpool_ch.planrahmen_koordinatenanschriftpos
  USING btree
  (los);

CREATE INDEX idx_planrahmen_koordinatenanschriftpos_pos
  ON av_avdpool_ch.planrahmen_koordinatenanschriftpos
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.planrahmen_linienobjekt
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 linienobjekt_von VARCHAR,
 geometrie geometry(LINESTRING, 21781),
 art INTEGER,
 art_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.planrahmen_linienobjekt OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.planrahmen_linienobjekt TO stefan;
GRANT SELECT ON av_avdpool_ch.planrahmen_linienobjekt TO mspublic;

CREATE INDEX idx_planrahmen_linienobjekt_ogc_fid
  ON av_avdpool_ch.planrahmen_linienobjekt
  USING btree
  (ogc_fid);

CREATE INDEX idx_planrahmen_linienobjekt_tid
  ON av_avdpool_ch.planrahmen_linienobjekt
  USING btree
  (tid);

CREATE INDEX idx_planrahmen_linienobjekt_linienobjekt_von
  ON av_avdpool_ch.planrahmen_linienobjekt
  USING btree
  (linienobjekt_von);

CREATE INDEX idx_planrahmen_linienobjekt_gem_bfs
  ON av_avdpool_ch.planrahmen_linienobjekt
  USING btree
  (gem_bfs);

CREATE INDEX idx_planrahmen_linienobjekt_los
  ON av_avdpool_ch.planrahmen_linienobjekt
  USING btree
  (los);

CREATE INDEX idx_planrahmen_linienobjekt_geometrie
  ON av_avdpool_ch.planrahmen_linienobjekt
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.planrahmen_koordinatenlinie
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 koordinatenlinie_von VARCHAR,
 geometrie geometry(LINESTRING, 21781),
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.planrahmen_koordinatenlinie OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.planrahmen_koordinatenlinie TO stefan;
GRANT SELECT ON av_avdpool_ch.planrahmen_koordinatenlinie TO mspublic;

CREATE INDEX idx_planrahmen_koordinatenlinie_ogc_fid
  ON av_avdpool_ch.planrahmen_koordinatenlinie
  USING btree
  (ogc_fid);

CREATE INDEX idx_planrahmen_koordinatenlinie_tid
  ON av_avdpool_ch.planrahmen_koordinatenlinie
  USING btree
  (tid);

CREATE INDEX idx_planrahmen_koordinatenlinie_koordinatenlinie_von
  ON av_avdpool_ch.planrahmen_koordinatenlinie
  USING btree
  (koordinatenlinie_von);

CREATE INDEX idx_planrahmen_koordinatenlinie_gem_bfs
  ON av_avdpool_ch.planrahmen_koordinatenlinie
  USING btree
  (gem_bfs);

CREATE INDEX idx_planrahmen_koordinatenlinie_los
  ON av_avdpool_ch.planrahmen_koordinatenlinie
  USING btree
  (los);

CREATE INDEX idx_planrahmen_koordinatenlinie_geometrie
  ON av_avdpool_ch.planrahmen_koordinatenlinie
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.planrahmen_darstellungsflaeche
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 darstellungsflaeche_von VARCHAR,
 geometrie geometry(POLYGON, 21781),
 auswahlart INTEGER,
 auswahlart_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.planrahmen_darstellungsflaeche OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.planrahmen_darstellungsflaeche TO stefan;
GRANT SELECT ON av_avdpool_ch.planrahmen_darstellungsflaeche TO mspublic;

CREATE INDEX idx_planrahmen_darstellungsflaeche_ogc_fid
  ON av_avdpool_ch.planrahmen_darstellungsflaeche
  USING btree
  (ogc_fid);

CREATE INDEX idx_planrahmen_darstellungsflaeche_tid
  ON av_avdpool_ch.planrahmen_darstellungsflaeche
  USING btree
  (tid);

CREATE INDEX idx_planrahmen_darstellungsflaeche_darstellungsflaeche_von
  ON av_avdpool_ch.planrahmen_darstellungsflaeche
  USING btree
  (darstellungsflaeche_von);

CREATE INDEX idx_planrahmen_darstellungsflaeche_gem_bfs
  ON av_avdpool_ch.planrahmen_darstellungsflaeche
  USING btree
  (gem_bfs);

CREATE INDEX idx_planrahmen_darstellungsflaeche_los
  ON av_avdpool_ch.planrahmen_darstellungsflaeche
  USING btree
  (los);

CREATE INDEX idx_planrahmen_darstellungsflaeche_geometrie
  ON av_avdpool_ch.planrahmen_darstellungsflaeche
  USING gist
  (geometrie);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.planrahmen_planlayoutsymbol
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 planlayoutsymbol_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 art INTEGER,
 art_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.planrahmen_planlayoutsymbol OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.planrahmen_planlayoutsymbol TO stefan;
GRANT SELECT ON av_avdpool_ch.planrahmen_planlayoutsymbol TO mspublic;

CREATE INDEX idx_planrahmen_planlayoutsymbol_ogc_fid
  ON av_avdpool_ch.planrahmen_planlayoutsymbol
  USING btree
  (ogc_fid);

CREATE INDEX idx_planrahmen_planlayoutsymbol_tid
  ON av_avdpool_ch.planrahmen_planlayoutsymbol
  USING btree
  (tid);

CREATE INDEX idx_planrahmen_planlayoutsymbol_planlayoutsymbol_von
  ON av_avdpool_ch.planrahmen_planlayoutsymbol
  USING btree
  (planlayoutsymbol_von);

CREATE INDEX idx_planrahmen_planlayoutsymbol_gem_bfs
  ON av_avdpool_ch.planrahmen_planlayoutsymbol
  USING btree
  (gem_bfs);

CREATE INDEX idx_planrahmen_planlayoutsymbol_los
  ON av_avdpool_ch.planrahmen_planlayoutsymbol
  USING btree
  (los);

CREATE INDEX idx_planrahmen_planlayoutsymbol_pos
  ON av_avdpool_ch.planrahmen_planlayoutsymbol
  USING gist
  (pos);

-------------- New Table --------------

CREATE TABLE av_avdpool_ch.planrahmen_netzkreuz
(
 ogc_fid SERIAL PRIMARY KEY, 
 tid VARCHAR, 
 netzkreuz_von VARCHAR,
 pos geometry(POINT, 21781),
 ori DOUBLE PRECISION,
 art INTEGER,
 art_txt VARCHAR,
 gem_bfs INTEGER,
 los INTEGER,
 lieferdatum DATE
)
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.planrahmen_netzkreuz OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.planrahmen_netzkreuz TO stefan;
GRANT SELECT ON av_avdpool_ch.planrahmen_netzkreuz TO mspublic;

CREATE INDEX idx_planrahmen_netzkreuz_ogc_fid
  ON av_avdpool_ch.planrahmen_netzkreuz
  USING btree
  (ogc_fid);

CREATE INDEX idx_planrahmen_netzkreuz_tid
  ON av_avdpool_ch.planrahmen_netzkreuz
  USING btree
  (tid);

CREATE INDEX idx_planrahmen_netzkreuz_netzkreuz_von
  ON av_avdpool_ch.planrahmen_netzkreuz
  USING btree
  (netzkreuz_von);

CREATE INDEX idx_planrahmen_netzkreuz_gem_bfs
  ON av_avdpool_ch.planrahmen_netzkreuz
  USING btree
  (gem_bfs);

CREATE INDEX idx_planrahmen_netzkreuz_los
  ON av_avdpool_ch.planrahmen_netzkreuz
  USING btree
  (los);

CREATE INDEX idx_planrahmen_netzkreuz_pos
  ON av_avdpool_ch.planrahmen_netzkreuz
  USING gist
  (pos);


CREATE TABLE av_avdpool_ch.enum__interlis_boolean
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__interlis_boolean OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__interlis_boolean TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__interlis_boolean TO mspublic;

INSERT INTO av_avdpool_ch.enum__interlis_boolean(code, code_txt) VALUES (0, 'false');
INSERT INTO av_avdpool_ch.enum__interlis_boolean(code, code_txt) VALUES (1, 'true');

CREATE TABLE av_avdpool_ch.enum__interlis_halignment
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__interlis_halignment OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__interlis_halignment TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__interlis_halignment TO mspublic;

INSERT INTO av_avdpool_ch.enum__interlis_halignment(code, code_txt) VALUES (0, 'Left');
INSERT INTO av_avdpool_ch.enum__interlis_halignment(code, code_txt) VALUES (1, 'Center');
INSERT INTO av_avdpool_ch.enum__interlis_halignment(code, code_txt) VALUES (2, 'Right');

CREATE TABLE av_avdpool_ch.enum__interlis_valignment
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__interlis_valignment OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__interlis_valignment TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__interlis_valignment TO mspublic;

INSERT INTO av_avdpool_ch.enum__interlis_valignment(code, code_txt) VALUES (0, 'Top');
INSERT INTO av_avdpool_ch.enum__interlis_valignment(code, code_txt) VALUES (1, 'Cap');
INSERT INTO av_avdpool_ch.enum__interlis_valignment(code, code_txt) VALUES (2, 'Half');
INSERT INTO av_avdpool_ch.enum__interlis_valignment(code, code_txt) VALUES (3, 'Base');
INSERT INTO av_avdpool_ch.enum__interlis_valignment(code, code_txt) VALUES (4, 'Bottom');

CREATE TABLE av_avdpool_ch.enum__dm01avch24d_zuverlaessigkeit
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__dm01avch24d_zuverlaessigkeit OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__dm01avch24d_zuverlaessigkeit TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__dm01avch24d_zuverlaessigkeit TO mspublic;

INSERT INTO av_avdpool_ch.enum__dm01avch24d_zuverlaessigkeit(code, code_txt) VALUES (0, 'ja');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_zuverlaessigkeit(code, code_txt) VALUES (1, 'nein');

CREATE TABLE av_avdpool_ch.enum__dm01avch24d_status
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__dm01avch24d_status OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__dm01avch24d_status TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__dm01avch24d_status TO mspublic;

INSERT INTO av_avdpool_ch.enum__dm01avch24d_status(code, code_txt) VALUES (0, 'projektiert');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_status(code, code_txt) VALUES (1, 'gueltig');

CREATE TABLE av_avdpool_ch.enum__dm01avch24d_qualitaetsstandard
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__dm01avch24d_qualitaetsstandard OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__dm01avch24d_qualitaetsstandard TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__dm01avch24d_qualitaetsstandard TO mspublic;

INSERT INTO av_avdpool_ch.enum__dm01avch24d_qualitaetsstandard(code, code_txt) VALUES (0, 'AV93');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_qualitaetsstandard(code, code_txt) VALUES (1, 'PV74');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_qualitaetsstandard(code, code_txt) VALUES (2, 'PN');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_qualitaetsstandard(code, code_txt) VALUES (3, 'PEP');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_qualitaetsstandard(code, code_txt) VALUES (4, 'weitere');

CREATE TABLE av_avdpool_ch.enum__dm01avch24d_schriftgroesse
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__dm01avch24d_schriftgroesse OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__dm01avch24d_schriftgroesse TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__dm01avch24d_schriftgroesse TO mspublic;

INSERT INTO av_avdpool_ch.enum__dm01avch24d_schriftgroesse(code, code_txt) VALUES (0, 'klein');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_schriftgroesse(code, code_txt) VALUES (1, 'mittel');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_schriftgroesse(code, code_txt) VALUES (2, 'gross');

CREATE TABLE av_avdpool_ch.enum__dm01avch24d_schriftstil
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__dm01avch24d_schriftstil OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__dm01avch24d_schriftstil TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__dm01avch24d_schriftstil TO mspublic;

INSERT INTO av_avdpool_ch.enum__dm01avch24d_schriftstil(code, code_txt) VALUES (0, 'normal');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_schriftstil(code, code_txt) VALUES (1, 'gesperrt');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_schriftstil(code, code_txt) VALUES (2, 'weitere');

CREATE TABLE av_avdpool_ch.enum__dm01avch24d_versicherungsart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__dm01avch24d_versicherungsart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__dm01avch24d_versicherungsart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__dm01avch24d_versicherungsart TO mspublic;

INSERT INTO av_avdpool_ch.enum__dm01avch24d_versicherungsart(code, code_txt) VALUES (0, 'Stein');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_versicherungsart(code, code_txt) VALUES (1, 'Kunststoffzeichen');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_versicherungsart(code, code_txt) VALUES (2, 'Bolzen');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_versicherungsart(code, code_txt) VALUES (3, 'Rohr');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_versicherungsart(code, code_txt) VALUES (4, 'Pfahl');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_versicherungsart(code, code_txt) VALUES (5, 'Kreuz');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_versicherungsart(code, code_txt) VALUES (6, 'unversichert');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_versicherungsart(code, code_txt) VALUES (7, 'weitere');

CREATE TABLE av_avdpool_ch.enum__dm01avch24d_status_ga
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__dm01avch24d_status_ga OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__dm01avch24d_status_ga TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__dm01avch24d_status_ga TO mspublic;

INSERT INTO av_avdpool_ch.enum__dm01avch24d_status_ga(code, code_txt) VALUES (0, 'projektiert');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_status_ga(code, code_txt) VALUES (1, 'real');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_status_ga(code, code_txt) VALUES (2, 'vergangen');

CREATE TABLE av_avdpool_ch.enum__dm01avch24d_sprachtyp
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__dm01avch24d_sprachtyp OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__dm01avch24d_sprachtyp TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__dm01avch24d_sprachtyp TO mspublic;

INSERT INTO av_avdpool_ch.enum__dm01avch24d_sprachtyp(code, code_txt) VALUES (0, 'de');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_sprachtyp(code, code_txt) VALUES (1, 'fr');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_sprachtyp(code, code_txt) VALUES (2, 'it');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_sprachtyp(code, code_txt) VALUES (3, 'rm');
INSERT INTO av_avdpool_ch.enum__dm01avch24d_sprachtyp(code, code_txt) VALUES (4, 'en');

CREATE TABLE av_avdpool_ch.enum__fixpunktekategorie1_lfp1_begehbarkeit
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__fixpunktekategorie1_lfp1_begehbarkeit OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__fixpunktekategorie1_lfp1_begehbarkeit TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__fixpunktekategorie1_lfp1_begehbarkeit TO mspublic;

INSERT INTO av_avdpool_ch.enum__fixpunktekategorie1_lfp1_begehbarkeit(code, code_txt) VALUES (0, 'begehbar');
INSERT INTO av_avdpool_ch.enum__fixpunktekategorie1_lfp1_begehbarkeit(code, code_txt) VALUES (1, 'nicht_begehbar');

CREATE TABLE av_avdpool_ch.enum__fixpunktekategorie2_lfp2_begehbarkeit
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__fixpunktekategorie2_lfp2_begehbarkeit OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__fixpunktekategorie2_lfp2_begehbarkeit TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__fixpunktekategorie2_lfp2_begehbarkeit TO mspublic;

INSERT INTO av_avdpool_ch.enum__fixpunktekategorie2_lfp2_begehbarkeit(code, code_txt) VALUES (0, 'begehbar');
INSERT INTO av_avdpool_ch.enum__fixpunktekategorie2_lfp2_begehbarkeit(code, code_txt) VALUES (1, 'nicht_begehbar');

CREATE TABLE av_avdpool_ch.enum__fixpunktekategorie3_lfp3_protokoll
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__fixpunktekategorie3_lfp3_protokoll OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__fixpunktekategorie3_lfp3_protokoll TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__fixpunktekategorie3_lfp3_protokoll TO mspublic;

INSERT INTO av_avdpool_ch.enum__fixpunktekategorie3_lfp3_protokoll(code, code_txt) VALUES (0, 'ja');
INSERT INTO av_avdpool_ch.enum__fixpunktekategorie3_lfp3_protokoll(code, code_txt) VALUES (1, 'nein');

CREATE TABLE av_avdpool_ch.enum__bodenbedeckung_bbart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__bodenbedeckung_bbart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__bodenbedeckung_bbart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__bodenbedeckung_bbart TO mspublic;

INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (0, 'Gebaeude');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (1, 'befestigt.Strasse_Weg');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (2, 'befestigt.Trottoir');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (3, 'befestigt.Verkehrsinsel');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (4, 'befestigt.Bahn');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (5, 'befestigt.Flugplatz');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (6, 'befestigt.Wasserbecken');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (7, 'befestigt.uebrige_befestigte');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (8, 'humusiert.Acker_Wiese_Weide');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (9, 'humusiert.Intensivkultur.Reben');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (10, 'humusiert.Intensivkultur.uebrige_Intensivkultur');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (11, 'humusiert.Gartenanlage');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (12, 'humusiert.Hoch_Flachmoor');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (13, 'humusiert.uebrige_humusierte');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (14, 'Gewaesser.stehendes');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (15, 'Gewaesser.fliessendes');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (16, 'Gewaesser.Schilfguertel');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (17, 'bestockt.geschlossener_Wald');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (18, 'bestockt.Wytweide.Wytweide_dicht');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (19, 'bestockt.Wytweide.Wytweide_offen');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (20, 'bestockt.uebrige_bestockte');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (21, 'vegetationslos.Fels');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (22, 'vegetationslos.Gletscher_Firn');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (23, 'vegetationslos.Geroell_Sand');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (24, 'vegetationslos.Abbau_Deponie');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_bbart(code, code_txt) VALUES (25, 'vegetationslos.uebrige_vegetationslose');

CREATE TABLE av_avdpool_ch.enum__bodenbedeckung_einzelpunkt_exaktdefiniert
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__bodenbedeckung_einzelpunkt_exaktdefiniert OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__bodenbedeckung_einzelpunkt_exaktdefiniert TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__bodenbedeckung_einzelpunkt_exaktdefiniert TO mspublic;

INSERT INTO av_avdpool_ch.enum__bodenbedeckung_einzelpunkt_exaktdefiniert(code, code_txt) VALUES (0, 'Ja');
INSERT INTO av_avdpool_ch.enum__bodenbedeckung_einzelpunkt_exaktdefiniert(code, code_txt) VALUES (1, 'Nein');

CREATE TABLE av_avdpool_ch.enum__einzelobjekte_eoart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__einzelobjekte_eoart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__einzelobjekte_eoart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__einzelobjekte_eoart TO mspublic;

INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (0, 'Mauer');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (1, 'unterirdisches_Gebaeude');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (2, 'uebriger_Gebaeudeteil');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (3, 'eingedoltes_oeffentliches_Gewaesser');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (4, 'wichtige_Treppe');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (5, 'Tunnel_Unterfuehrung_Galerie');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (6, 'Bruecke_Passerelle');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (7, 'Bahnsteig');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (8, 'Brunnen');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (9, 'Reservoir');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (10, 'Pfeiler');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (11, 'Unterstand');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (12, 'Silo_Turm_Gasometer');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (13, 'Hochkamin');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (14, 'Denkmal');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (15, 'Mast_Antenne');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (16, 'Aussichtsturm');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (17, 'Uferverbauung');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (18, 'Schwelle');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (19, 'Lawinenverbauung');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (20, 'massiver_Sockel');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (21, 'Ruine_archaeologisches_Objekt');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (22, 'Landungssteg');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (23, 'einzelner_Fels');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (24, 'schmale_bestockte_Flaeche');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (25, 'Rinnsal');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (26, 'schmaler_Weg');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (27, 'Hochspannungsfreileitung');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (28, 'Druckleitung');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (29, 'Bahngeleise');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (30, 'Luftseilbahn');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (31, 'Gondelbahn_Sesselbahn');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (32, 'Materialseilbahn');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (33, 'Skilift');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (34, 'Faehre');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (35, 'Grotte_Hoehleneingang');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (36, 'Achse');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (37, 'wichtiger_Einzelbaum');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (38, 'Bildstock_Kruzifix');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (39, 'Quelle');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (40, 'Bezugspunkt');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_eoart(code, code_txt) VALUES (41, 'weitere');

CREATE TABLE av_avdpool_ch.enum__einzelobjekte_einzelpunkt_exaktdefiniert
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__einzelobjekte_einzelpunkt_exaktdefiniert OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__einzelobjekte_einzelpunkt_exaktdefiniert TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__einzelobjekte_einzelpunkt_exaktdefiniert TO mspublic;

INSERT INTO av_avdpool_ch.enum__einzelobjekte_einzelpunkt_exaktdefiniert(code, code_txt) VALUES (0, 'Ja');
INSERT INTO av_avdpool_ch.enum__einzelobjekte_einzelpunkt_exaktdefiniert(code, code_txt) VALUES (1, 'Nein');

CREATE TABLE av_avdpool_ch.enum__hoehen_gelaendekante_art
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__hoehen_gelaendekante_art OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__hoehen_gelaendekante_art TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__hoehen_gelaendekante_art TO mspublic;

INSERT INTO av_avdpool_ch.enum__hoehen_gelaendekante_art(code, code_txt) VALUES (0, 'Bruchkante');
INSERT INTO av_avdpool_ch.enum__hoehen_gelaendekante_art(code, code_txt) VALUES (1, 'Strukturlinie');
INSERT INTO av_avdpool_ch.enum__hoehen_gelaendekante_art(code, code_txt) VALUES (2, 'weitere');

CREATE TABLE av_avdpool_ch.enum__hoehen_aussparung_art
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__hoehen_aussparung_art OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__hoehen_aussparung_art TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__hoehen_aussparung_art TO mspublic;

INSERT INTO av_avdpool_ch.enum__hoehen_aussparung_art(code, code_txt) VALUES (0, 'ToteFlaeche');
INSERT INTO av_avdpool_ch.enum__hoehen_aussparung_art(code, code_txt) VALUES (1, 'weitere');

CREATE TABLE av_avdpool_ch.enum__liegenschaften_grundstuecksart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__liegenschaften_grundstuecksart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__liegenschaften_grundstuecksart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__liegenschaften_grundstuecksart TO mspublic;

INSERT INTO av_avdpool_ch.enum__liegenschaften_grundstuecksart(code, code_txt) VALUES (0, 'Liegenschaft');
INSERT INTO av_avdpool_ch.enum__liegenschaften_grundstuecksart(code, code_txt) VALUES (1, 'SelbstRecht.Baurecht');
INSERT INTO av_avdpool_ch.enum__liegenschaften_grundstuecksart(code, code_txt) VALUES (2, 'SelbstRecht.Quellenrecht');
INSERT INTO av_avdpool_ch.enum__liegenschaften_grundstuecksart(code, code_txt) VALUES (3, 'SelbstRecht.Konzessionsrecht');
INSERT INTO av_avdpool_ch.enum__liegenschaften_grundstuecksart(code, code_txt) VALUES (4, 'SelbstRecht.weitere');
INSERT INTO av_avdpool_ch.enum__liegenschaften_grundstuecksart(code, code_txt) VALUES (5, 'Bergwerk');

CREATE TABLE av_avdpool_ch.enum__liegenschaften_grenzpunkt_exaktdefiniert
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__liegenschaften_grenzpunkt_exaktdefiniert OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__liegenschaften_grenzpunkt_exaktdefiniert TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__liegenschaften_grenzpunkt_exaktdefiniert TO mspublic;

INSERT INTO av_avdpool_ch.enum__liegenschaften_grenzpunkt_exaktdefiniert(code, code_txt) VALUES (0, 'Ja');
INSERT INTO av_avdpool_ch.enum__liegenschaften_grenzpunkt_exaktdefiniert(code, code_txt) VALUES (1, 'Nein');

CREATE TABLE av_avdpool_ch.enum__liegenschaften_grenzpunkt_hoheitsgrenzsteinalt
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__liegenschaften_grenzpunkt_hoheitsgrenzsteinalt OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__liegenschaften_grenzpunkt_hoheitsgrenzsteinalt TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__liegenschaften_grenzpunkt_hoheitsgrenzsteinalt TO mspublic;

INSERT INTO av_avdpool_ch.enum__liegenschaften_grenzpunkt_hoheitsgrenzsteinalt(code, code_txt) VALUES (0, 'ja');
INSERT INTO av_avdpool_ch.enum__liegenschaften_grenzpunkt_hoheitsgrenzsteinalt(code, code_txt) VALUES (1, 'nein');

CREATE TABLE av_avdpool_ch.enum__liegenschaften_projgrundstueck_gueltigkeit
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__liegenschaften_projgrundstueck_gueltigkeit OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__liegenschaften_projgrundstueck_gueltigkeit TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__liegenschaften_projgrundstueck_gueltigkeit TO mspublic;

INSERT INTO av_avdpool_ch.enum__liegenschaften_projgrundstueck_gueltigkeit(code, code_txt) VALUES (0, 'rechtskraeftig');
INSERT INTO av_avdpool_ch.enum__liegenschaften_projgrundstueck_gueltigkeit(code, code_txt) VALUES (1, 'streitig');

CREATE TABLE av_avdpool_ch.enum__liegenschaften_projgrundstueck_vollstaendigkeit
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__liegenschaften_projgrundstueck_vollstaendigkeit OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__liegenschaften_projgrundstueck_vollstaendigkeit TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__liegenschaften_projgrundstueck_vollstaendigkeit TO mspublic;

INSERT INTO av_avdpool_ch.enum__liegenschaften_projgrundstueck_vollstaendigkeit(code, code_txt) VALUES (0, 'Vollstaendig');
INSERT INTO av_avdpool_ch.enum__liegenschaften_projgrundstueck_vollstaendigkeit(code, code_txt) VALUES (1, 'unvollstaendig');

CREATE TABLE av_avdpool_ch.enum__liegenschaften_lineattrib1_linienart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__liegenschaften_lineattrib1_linienart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__liegenschaften_lineattrib1_linienart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__liegenschaften_lineattrib1_linienart TO mspublic;

INSERT INTO av_avdpool_ch.enum__liegenschaften_lineattrib1_linienart(code, code_txt) VALUES (0, 'streitig');
INSERT INTO av_avdpool_ch.enum__liegenschaften_lineattrib1_linienart(code, code_txt) VALUES (1, 'unvollstaendig');

CREATE TABLE av_avdpool_ch.enum__liegenschaften_lineattrib2_linienart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__liegenschaften_lineattrib2_linienart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__liegenschaften_lineattrib2_linienart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__liegenschaften_lineattrib2_linienart TO mspublic;

INSERT INTO av_avdpool_ch.enum__liegenschaften_lineattrib2_linienart(code, code_txt) VALUES (0, 'streitig');
INSERT INTO av_avdpool_ch.enum__liegenschaften_lineattrib2_linienart(code, code_txt) VALUES (1, 'unvollstaendig');

CREATE TABLE av_avdpool_ch.enum__liegenschaften_lineattrib3_linienart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__liegenschaften_lineattrib3_linienart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__liegenschaften_lineattrib3_linienart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__liegenschaften_lineattrib3_linienart TO mspublic;

INSERT INTO av_avdpool_ch.enum__liegenschaften_lineattrib3_linienart(code, code_txt) VALUES (0, 'streitig');
INSERT INTO av_avdpool_ch.enum__liegenschaften_lineattrib3_linienart(code, code_txt) VALUES (1, 'unvollstaendig');

CREATE TABLE av_avdpool_ch.enum__liegenschaften_grundstueck_gueltigkeit
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__liegenschaften_grundstueck_gueltigkeit OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__liegenschaften_grundstueck_gueltigkeit TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__liegenschaften_grundstueck_gueltigkeit TO mspublic;

INSERT INTO av_avdpool_ch.enum__liegenschaften_grundstueck_gueltigkeit(code, code_txt) VALUES (0, 'rechtskraeftig');
INSERT INTO av_avdpool_ch.enum__liegenschaften_grundstueck_gueltigkeit(code, code_txt) VALUES (1, 'streitig');

CREATE TABLE av_avdpool_ch.enum__liegenschaften_grundstueck_vollstaendigkeit
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__liegenschaften_grundstueck_vollstaendigkeit OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__liegenschaften_grundstueck_vollstaendigkeit TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__liegenschaften_grundstueck_vollstaendigkeit TO mspublic;

INSERT INTO av_avdpool_ch.enum__liegenschaften_grundstueck_vollstaendigkeit(code, code_txt) VALUES (0, 'Vollstaendig');
INSERT INTO av_avdpool_ch.enum__liegenschaften_grundstueck_vollstaendigkeit(code, code_txt) VALUES (1, 'unvollstaendig');

CREATE TABLE av_avdpool_ch.enum__liegenschaften_lineattrib4_linienart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__liegenschaften_lineattrib4_linienart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__liegenschaften_lineattrib4_linienart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__liegenschaften_lineattrib4_linienart TO mspublic;

INSERT INTO av_avdpool_ch.enum__liegenschaften_lineattrib4_linienart(code, code_txt) VALUES (0, 'streitig');
INSERT INTO av_avdpool_ch.enum__liegenschaften_lineattrib4_linienart(code, code_txt) VALUES (1, 'unvollstaendig');

CREATE TABLE av_avdpool_ch.enum__liegenschaften_lineattrib5_linienart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__liegenschaften_lineattrib5_linienart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__liegenschaften_lineattrib5_linienart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__liegenschaften_lineattrib5_linienart TO mspublic;

INSERT INTO av_avdpool_ch.enum__liegenschaften_lineattrib5_linienart(code, code_txt) VALUES (0, 'streitig');
INSERT INTO av_avdpool_ch.enum__liegenschaften_lineattrib5_linienart(code, code_txt) VALUES (1, 'unvollstaendig');

CREATE TABLE av_avdpool_ch.enum__liegenschaften_lineattrib6_linienart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__liegenschaften_lineattrib6_linienart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__liegenschaften_lineattrib6_linienart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__liegenschaften_lineattrib6_linienart TO mspublic;

INSERT INTO av_avdpool_ch.enum__liegenschaften_lineattrib6_linienart(code, code_txt) VALUES (0, 'streitig');
INSERT INTO av_avdpool_ch.enum__liegenschaften_lineattrib6_linienart(code, code_txt) VALUES (1, 'unvollstaendig');

CREATE TABLE av_avdpool_ch.enum__rohrleitungen_medium
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__rohrleitungen_medium OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__rohrleitungen_medium TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__rohrleitungen_medium TO mspublic;

INSERT INTO av_avdpool_ch.enum__rohrleitungen_medium(code, code_txt) VALUES (0, 'Oel');
INSERT INTO av_avdpool_ch.enum__rohrleitungen_medium(code, code_txt) VALUES (1, 'Gas');
INSERT INTO av_avdpool_ch.enum__rohrleitungen_medium(code, code_txt) VALUES (2, 'weitere');

CREATE TABLE av_avdpool_ch.enum__rohrleitungen_lineattrib7_linienart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__rohrleitungen_lineattrib7_linienart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__rohrleitungen_lineattrib7_linienart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__rohrleitungen_lineattrib7_linienart TO mspublic;

INSERT INTO av_avdpool_ch.enum__rohrleitungen_lineattrib7_linienart(code, code_txt) VALUES (0, 'sichtbar');

CREATE TABLE av_avdpool_ch.enum__rohrleitungen_linienelement_linienart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__rohrleitungen_linienelement_linienart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__rohrleitungen_linienelement_linienart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__rohrleitungen_linienelement_linienart TO mspublic;

INSERT INTO av_avdpool_ch.enum__rohrleitungen_linienelement_linienart(code, code_txt) VALUES (0, 'sichtbar');

CREATE TABLE av_avdpool_ch.enum__rohrleitungen_signalpunkt_punktart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__rohrleitungen_signalpunkt_punktart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__rohrleitungen_signalpunkt_punktart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__rohrleitungen_signalpunkt_punktart TO mspublic;

INSERT INTO av_avdpool_ch.enum__rohrleitungen_signalpunkt_punktart(code, code_txt) VALUES (0, 'Signal');
INSERT INTO av_avdpool_ch.enum__rohrleitungen_signalpunkt_punktart(code, code_txt) VALUES (1, 'Tafel_Stein');
INSERT INTO av_avdpool_ch.enum__rohrleitungen_signalpunkt_punktart(code, code_txt) VALUES (2, 'weitere');

CREATE TABLE av_avdpool_ch.enum__rohrleitungen_einzelpunkt_exaktdefiniert
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__rohrleitungen_einzelpunkt_exaktdefiniert OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__rohrleitungen_einzelpunkt_exaktdefiniert TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__rohrleitungen_einzelpunkt_exaktdefiniert TO mspublic;

INSERT INTO av_avdpool_ch.enum__rohrleitungen_einzelpunkt_exaktdefiniert(code, code_txt) VALUES (0, 'Ja');
INSERT INTO av_avdpool_ch.enum__rohrleitungen_einzelpunkt_exaktdefiniert(code, code_txt) VALUES (1, 'Nein');

CREATE TABLE av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel TO mspublic;

INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (0, 'ZH');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (1, 'BE');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (2, 'LU');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (3, 'UR');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (4, 'SZ');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (5, 'OW');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (6, 'NW');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (7, 'GL');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (8, 'ZG');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (9, 'FR');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (10, 'SO');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (11, 'BS');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (12, 'BL');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (13, 'SH');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (14, 'AR');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (15, 'AI');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (16, 'SG');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (17, 'GR');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (18, 'AG');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (19, 'TG');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (20, 'TI');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (21, 'VD');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (22, 'VS');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (23, 'NE');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (24, 'GE');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (25, 'JU');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (26, 'FL');
INSERT INTO av_avdpool_ch.enum__nummerierungsbereiche_kantonskuerzel(code, code_txt) VALUES (27, 'CH');

CREATE TABLE av_avdpool_ch.enum__gemeindegrenzen_hoheitsgrenzpunkt_hoheitsgrenzstein
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__gemeindegrenzen_hoheitsgrenzpunkt_hoheitsgrenzstein OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__gemeindegrenzen_hoheitsgrenzpunkt_hoheitsgrenzstein TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__gemeindegrenzen_hoheitsgrenzpunkt_hoheitsgrenzstein TO mspublic;

INSERT INTO av_avdpool_ch.enum__gemeindegrenzen_hoheitsgrenzpunkt_hoheitsgrenzstein(code, code_txt) VALUES (0, 'ja');
INSERT INTO av_avdpool_ch.enum__gemeindegrenzen_hoheitsgrenzpunkt_hoheitsgrenzstein(code, code_txt) VALUES (1, 'nein');

CREATE TABLE av_avdpool_ch.enum__gemeindegrenzen_hoheitsgrenzpunkt_exaktdefiniert
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__gemeindegrenzen_hoheitsgrenzpunkt_exaktdefiniert OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__gemeindegrenzen_hoheitsgrenzpunkt_exaktdefiniert TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__gemeindegrenzen_hoheitsgrenzpunkt_exaktdefiniert TO mspublic;

INSERT INTO av_avdpool_ch.enum__gemeindegrenzen_hoheitsgrenzpunkt_exaktdefiniert(code, code_txt) VALUES (0, 'Ja');
INSERT INTO av_avdpool_ch.enum__gemeindegrenzen_hoheitsgrenzpunkt_exaktdefiniert(code, code_txt) VALUES (1, 'Nein');

CREATE TABLE av_avdpool_ch.enum__gemeindegrenzen_lineattrib8_linienart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__gemeindegrenzen_lineattrib8_linienart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__gemeindegrenzen_lineattrib8_linienart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__gemeindegrenzen_lineattrib8_linienart TO mspublic;

INSERT INTO av_avdpool_ch.enum__gemeindegrenzen_lineattrib8_linienart(code, code_txt) VALUES (0, 'rechtskraeftig');
INSERT INTO av_avdpool_ch.enum__gemeindegrenzen_lineattrib8_linienart(code, code_txt) VALUES (1, 'streitig');
INSERT INTO av_avdpool_ch.enum__gemeindegrenzen_lineattrib8_linienart(code, code_txt) VALUES (2, 'provisorisch');
INSERT INTO av_avdpool_ch.enum__gemeindegrenzen_lineattrib8_linienart(code, code_txt) VALUES (3, 'undefiniert');

CREATE TABLE av_avdpool_ch.enum__bezirksgrenzen_bezirksgrenzabschnitt_gueltigkeit
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__bezirksgrenzen_bezirksgrenzabschnitt_gueltigkeit OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__bezirksgrenzen_bezirksgrenzabschnitt_gueltigkeit TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__bezirksgrenzen_bezirksgrenzabschnitt_gueltigkeit TO mspublic;

INSERT INTO av_avdpool_ch.enum__bezirksgrenzen_bezirksgrenzabschnitt_gueltigkeit(code, code_txt) VALUES (0, 'rechtskraeftig');
INSERT INTO av_avdpool_ch.enum__bezirksgrenzen_bezirksgrenzabschnitt_gueltigkeit(code, code_txt) VALUES (1, 'streitig');
INSERT INTO av_avdpool_ch.enum__bezirksgrenzen_bezirksgrenzabschnitt_gueltigkeit(code, code_txt) VALUES (2, 'provisorisch');
INSERT INTO av_avdpool_ch.enum__bezirksgrenzen_bezirksgrenzabschnitt_gueltigkeit(code, code_txt) VALUES (3, 'undefiniert');

CREATE TABLE av_avdpool_ch.enum__kantonsgrenzen_kantonsgrenzabschnitt_gueltigkeit
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__kantonsgrenzen_kantonsgrenzabschnitt_gueltigkeit OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__kantonsgrenzen_kantonsgrenzabschnitt_gueltigkeit TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__kantonsgrenzen_kantonsgrenzabschnitt_gueltigkeit TO mspublic;

INSERT INTO av_avdpool_ch.enum__kantonsgrenzen_kantonsgrenzabschnitt_gueltigkeit(code, code_txt) VALUES (0, 'rechtskraeftig');
INSERT INTO av_avdpool_ch.enum__kantonsgrenzen_kantonsgrenzabschnitt_gueltigkeit(code, code_txt) VALUES (1, 'streitig');
INSERT INTO av_avdpool_ch.enum__kantonsgrenzen_kantonsgrenzabschnitt_gueltigkeit(code, code_txt) VALUES (2, 'provisorisch');
INSERT INTO av_avdpool_ch.enum__kantonsgrenzen_kantonsgrenzabschnitt_gueltigkeit(code, code_txt) VALUES (3, 'undefiniert');

CREATE TABLE av_avdpool_ch.enum__landesgrenzen_landesgrenzabschnitt_gueltigkeit
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__landesgrenzen_landesgrenzabschnitt_gueltigkeit OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__landesgrenzen_landesgrenzabschnitt_gueltigkeit TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__landesgrenzen_landesgrenzabschnitt_gueltigkeit TO mspublic;

INSERT INTO av_avdpool_ch.enum__landesgrenzen_landesgrenzabschnitt_gueltigkeit(code, code_txt) VALUES (0, 'rechtskraeftig');
INSERT INTO av_avdpool_ch.enum__landesgrenzen_landesgrenzabschnitt_gueltigkeit(code, code_txt) VALUES (1, 'streitig');
INSERT INTO av_avdpool_ch.enum__landesgrenzen_landesgrenzabschnitt_gueltigkeit(code, code_txt) VALUES (2, 'provisorisch');
INSERT INTO av_avdpool_ch.enum__landesgrenzen_landesgrenzabschnitt_gueltigkeit(code, code_txt) VALUES (3, 'undefiniert');

CREATE TABLE av_avdpool_ch.enum__tseinteilung_toleranzstufe_art
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__tseinteilung_toleranzstufe_art OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__tseinteilung_toleranzstufe_art TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__tseinteilung_toleranzstufe_art TO mspublic;

INSERT INTO av_avdpool_ch.enum__tseinteilung_toleranzstufe_art(code, code_txt) VALUES (0, 'TS1');
INSERT INTO av_avdpool_ch.enum__tseinteilung_toleranzstufe_art(code, code_txt) VALUES (1, 'TS2');
INSERT INTO av_avdpool_ch.enum__tseinteilung_toleranzstufe_art(code, code_txt) VALUES (2, 'TS3');
INSERT INTO av_avdpool_ch.enum__tseinteilung_toleranzstufe_art(code, code_txt) VALUES (3, 'TS4');
INSERT INTO av_avdpool_ch.enum__tseinteilung_toleranzstufe_art(code, code_txt) VALUES (4, 'TS5');

CREATE TABLE av_avdpool_ch.enum__plzortschaft_ortschaft_inaenderung
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__plzortschaft_ortschaft_inaenderung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__plzortschaft_ortschaft_inaenderung TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__plzortschaft_ortschaft_inaenderung TO mspublic;

INSERT INTO av_avdpool_ch.enum__plzortschaft_ortschaft_inaenderung(code, code_txt) VALUES (0, 'ja');
INSERT INTO av_avdpool_ch.enum__plzortschaft_ortschaft_inaenderung(code, code_txt) VALUES (1, 'nein');

CREATE TABLE av_avdpool_ch.enum__plzortschaft_plz6_inaenderung
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__plzortschaft_plz6_inaenderung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__plzortschaft_plz6_inaenderung TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__plzortschaft_plz6_inaenderung TO mspublic;

INSERT INTO av_avdpool_ch.enum__plzortschaft_plz6_inaenderung(code, code_txt) VALUES (0, 'ja');
INSERT INTO av_avdpool_ch.enum__plzortschaft_plz6_inaenderung(code, code_txt) VALUES (1, 'nein');

CREATE TABLE av_avdpool_ch.enum__gebaeudeadressen_lokalisation_nummerierungsprinzip
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__gebaeudeadressen_lokalisation_nummerierungsprinzip OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__gebaeudeadressen_lokalisation_nummerierungsprinzip TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__gebaeudeadressen_lokalisation_nummerierungsprinzip TO mspublic;

INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_lokalisation_nummerierungsprinzip(code, code_txt) VALUES (0, 'keineNummern');
INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_lokalisation_nummerierungsprinzip(code, code_txt) VALUES (1, 'beliebig');
INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_lokalisation_nummerierungsprinzip(code, code_txt) VALUES (2, 'aufsteigend');
INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_lokalisation_nummerierungsprinzip(code, code_txt) VALUES (3, 'ungeradelinks');
INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_lokalisation_nummerierungsprinzip(code, code_txt) VALUES (4, 'geradelinks');

CREATE TABLE av_avdpool_ch.enum__gebaeudeadressen_lokalisation_attributeprovisorisch
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__gebaeudeadressen_lokalisation_attributeprovisorisch OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__gebaeudeadressen_lokalisation_attributeprovisorisch TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__gebaeudeadressen_lokalisation_attributeprovisorisch TO mspublic;

INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_lokalisation_attributeprovisorisch(code, code_txt) VALUES (0, 'ja');
INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_lokalisation_attributeprovisorisch(code, code_txt) VALUES (1, 'nein');

CREATE TABLE av_avdpool_ch.enum__gebaeudeadressen_lokalisation_istoffiziellebezeichnung
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__gebaeudeadressen_lokalisation_istoffiziellebezeichnung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__gebaeudeadressen_lokalisation_istoffiziellebezeichnung TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__gebaeudeadressen_lokalisation_istoffiziellebezeichnung TO mspublic;

INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_lokalisation_istoffiziellebezeichnung(code, code_txt) VALUES (0, 'ja');
INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_lokalisation_istoffiziellebezeichnung(code, code_txt) VALUES (1, 'nein');

CREATE TABLE av_avdpool_ch.enum__gebaeudeadressen_lokalisation_inaenderung
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__gebaeudeadressen_lokalisation_inaenderung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__gebaeudeadressen_lokalisation_inaenderung TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__gebaeudeadressen_lokalisation_inaenderung TO mspublic;

INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_lokalisation_inaenderung(code, code_txt) VALUES (0, 'ja');
INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_lokalisation_inaenderung(code, code_txt) VALUES (1, 'nein');

CREATE TABLE av_avdpool_ch.enum__gebaeudeadressen_lokalisation_art
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__gebaeudeadressen_lokalisation_art OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__gebaeudeadressen_lokalisation_art TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__gebaeudeadressen_lokalisation_art TO mspublic;

INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_lokalisation_art(code, code_txt) VALUES (0, 'BenanntesGebiet');
INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_lokalisation_art(code, code_txt) VALUES (1, 'Strasse');
INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_lokalisation_art(code, code_txt) VALUES (2, 'Platz');

CREATE TABLE av_avdpool_ch.enum__gebaeudeadressen_strassenstueck_istachse
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__gebaeudeadressen_strassenstueck_istachse OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__gebaeudeadressen_strassenstueck_istachse TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__gebaeudeadressen_strassenstueck_istachse TO mspublic;

INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_strassenstueck_istachse(code, code_txt) VALUES (0, 'ja');
INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_strassenstueck_istachse(code, code_txt) VALUES (1, 'nein');

CREATE TABLE av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_inaenderung
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_inaenderung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_inaenderung TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_inaenderung TO mspublic;

INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_inaenderung(code, code_txt) VALUES (0, 'ja');
INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_inaenderung(code, code_txt) VALUES (1, 'nein');

CREATE TABLE av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_attributeprovisorisch
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_attributeprovisorisch OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_attributeprovisorisch TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_attributeprovisorisch TO mspublic;

INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_attributeprovisorisch(code, code_txt) VALUES (0, 'ja');
INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_attributeprovisorisch(code, code_txt) VALUES (1, 'nein');

CREATE TABLE av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_istoffiziellebezeichnung
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_istoffiziellebezeichnung OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_istoffiziellebezeichnung TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_istoffiziellebezeichnung TO mspublic;

INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_istoffiziellebezeichnung(code, code_txt) VALUES (0, 'ja');
INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_istoffiziellebezeichnung(code, code_txt) VALUES (1, 'nein');

CREATE TABLE av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_im_gebaeude
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_im_gebaeude OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_im_gebaeude TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_im_gebaeude TO mspublic;

INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_im_gebaeude(code, code_txt) VALUES (0, 'BB');
INSERT INTO av_avdpool_ch.enum__gebaeudeadressen_gebaeudeeingang_im_gebaeude(code, code_txt) VALUES (1, 'EO');

CREATE TABLE av_avdpool_ch.enum__planrahmen_beschriftungsart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__planrahmen_beschriftungsart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__planrahmen_beschriftungsart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__planrahmen_beschriftungsart TO mspublic;

INSERT INTO av_avdpool_ch.enum__planrahmen_beschriftungsart(code, code_txt) VALUES (0, 'Nachbarn');
INSERT INTO av_avdpool_ch.enum__planrahmen_beschriftungsart(code, code_txt) VALUES (1, 'Nachbarplan');
INSERT INTO av_avdpool_ch.enum__planrahmen_beschriftungsart(code, code_txt) VALUES (2, 'UebersichtNachbarn');
INSERT INTO av_avdpool_ch.enum__planrahmen_beschriftungsart(code, code_txt) VALUES (3, 'Strassenrichtung');
INSERT INTO av_avdpool_ch.enum__planrahmen_beschriftungsart(code, code_txt) VALUES (4, 'LK_Nr');
INSERT INTO av_avdpool_ch.enum__planrahmen_beschriftungsart(code, code_txt) VALUES (5, 'BFSNr');
INSERT INTO av_avdpool_ch.enum__planrahmen_beschriftungsart(code, code_txt) VALUES (6, 'weitere');

CREATE TABLE av_avdpool_ch.enum__planrahmen_linientyp
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__planrahmen_linientyp OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__planrahmen_linientyp TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__planrahmen_linientyp TO mspublic;

INSERT INTO av_avdpool_ch.enum__planrahmen_linientyp(code, code_txt) VALUES (0, 'standard');
INSERT INTO av_avdpool_ch.enum__planrahmen_linientyp(code, code_txt) VALUES (1, 'weitere');

CREATE TABLE av_avdpool_ch.enum__planrahmen_symbolart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__planrahmen_symbolart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__planrahmen_symbolart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__planrahmen_symbolart TO mspublic;

INSERT INTO av_avdpool_ch.enum__planrahmen_symbolart(code, code_txt) VALUES (0, 'Nordpfeil');
INSERT INTO av_avdpool_ch.enum__planrahmen_symbolart(code, code_txt) VALUES (1, 'weitere');

CREATE TABLE av_avdpool_ch.enum__planrahmen_kreuzart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__planrahmen_kreuzart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__planrahmen_kreuzart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__planrahmen_kreuzart TO mspublic;

INSERT INTO av_avdpool_ch.enum__planrahmen_kreuzart(code, code_txt) VALUES (0, 'Koord_Kreuz');
INSERT INTO av_avdpool_ch.enum__planrahmen_kreuzart(code, code_txt) VALUES (1, 'Netzkreuz');
INSERT INTO av_avdpool_ch.enum__planrahmen_kreuzart(code, code_txt) VALUES (2, 'Netzmarkierung');
INSERT INTO av_avdpool_ch.enum__planrahmen_kreuzart(code, code_txt) VALUES (3, 'weitere');

CREATE TABLE av_avdpool_ch.enum__planrahmen_planlayout_mit_koordinatennetz
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__planrahmen_planlayout_mit_koordinatennetz OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__planrahmen_planlayout_mit_koordinatennetz TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__planrahmen_planlayout_mit_koordinatennetz TO mspublic;

INSERT INTO av_avdpool_ch.enum__planrahmen_planlayout_mit_koordinatennetz(code, code_txt) VALUES (0, 'ja');
INSERT INTO av_avdpool_ch.enum__planrahmen_planlayout_mit_koordinatennetz(code, code_txt) VALUES (1, 'nein');

CREATE TABLE av_avdpool_ch.enum__planrahmen_darstellungsflaeche_auswahlart
(
 ogc_fid SERIAL PRIMARY KEY, 
 code INTEGER, 
 code_txt VARCHAR 
 )
WITH (OIDS=FALSE);
ALTER TABLE av_avdpool_ch.enum__planrahmen_darstellungsflaeche_auswahlart OWNER TO stefan;
GRANT ALL ON av_avdpool_ch.enum__planrahmen_darstellungsflaeche_auswahlart TO stefan;
GRANT SELECT ON av_avdpool_ch.enum__planrahmen_darstellungsflaeche_auswahlart TO mspublic;

INSERT INTO av_avdpool_ch.enum__planrahmen_darstellungsflaeche_auswahlart(code, code_txt) VALUES (0, 'vollstaendig');
INSERT INTO av_avdpool_ch.enum__planrahmen_darstellungsflaeche_auswahlart(code, code_txt) VALUES (1, 'teilweise');
