-- Mit Hilfe von ili2pg 2.0.3 beta


CREATE SCHEMA av_mopublic
  AUTHORIZATION stefan;
GRANT ALL ON SCHEMA av_mopublic TO stefan;
GRANT USAGE ON SCHEMA av_mopublic TO mspublic;


-- DROP TABLE av_mopublic.fixpunktekategorie__lfp;
CREATE TABLE av_mopublic.fixpunktekategorie__lfp  
(
  ogc_fid serial PRIMARY KEY,
  kategorie varchar NOT NULL,
  nbident varchar(12) NOT NULL,
  nummer varchar(12) NOT NULL,
  geometrie geometry(POINT, 21781),
  lagegen decimal(5,1) NULL,
  hoehegeom decimal(8,3) NULL,
  hoehegen decimal(5,1) NULL,
  punktzeichen varchar NOT NULL,
  stand_am date NULL,
  bfsnr integer NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.fixpunktekategorie__lfp OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.fixpunktekategorie__lfp TO stefan;
GRANT SELECT ON TABLE av_mopublic.fixpunktekategorie__lfp TO mspublic;

CREATE INDEX idx_fixpunktekategorie__lfp_kategorie
  ON av_mopublic.fixpunktekategorie__lfp
  USING btree
  (kategorie);

CREATE INDEX idx_fixpunktekategorie__lfp_bfsnr
  ON av_mopublic.fixpunktekategorie__lfp
  USING btree
  (bfsnr);

CREATE INDEX idx_fixpunktekategorie__lfp_geometrie
  ON av_mopublic.fixpunktekategorie__lfp
  USING gist
  (geometrie);

CREATE INDEX idx_fixpunktekategorie__lfp_ogc_fid
  ON av_mopublic.fixpunktekategorie__lfp
  USING btree
  (ogc_fid);


-- DROP TABLE av_mopublic.bodenbedeckung__boflaeche;
CREATE TABLE av_mopublic.bodenbedeckung__boflaeche (
  ogc_fid serial PRIMARY KEY,
  "geometrie" geometry(POLYGON, 21781),
  qualitaet varchar NOT NULL,
  art varchar NOT NULL,
  gwr_egid integer NULL,
  stand_am date NULL,
  bfsnr integer NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.bodenbedeckung__boflaeche OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.bodenbedeckung__boflaeche TO stefan;
GRANT SELECT ON TABLE av_mopublic.bodenbedeckung__boflaeche TO mspublic;

CREATE INDEX idx_bodenbedeckung__boflaeche_art
  ON av_mopublic.bodenbedeckung__boflaeche
  USING btree
  (art);

CREATE INDEX idx_bodenbedeckung__boflaeche_bfsnr
  ON av_mopublic.bodenbedeckung__boflaeche
  USING btree
  (bfsnr);

CREATE INDEX idx_bodenbedeckung__boflaeche_geometrie
  ON av_mopublic.bodenbedeckung__boflaeche
  USING gist
  (geometrie);

CREATE INDEX idx_bodenbedeckung__boflaeche_ogc_fid
  ON av_mopublic.bodenbedeckung__boflaeche
  USING btree
  (ogc_fid);


-- DROP TABLE av_mopublic.liegenschaften__liegenschaft;
CREATE TABLE av_mopublic.liegenschaften__liegenschaft (
  ogc_fid serial PRIMARY KEY,
  nbident varchar(12) NOT NULL,
  nummer varchar(15) NOT NULL,
  egris_egrid varchar(14) NULL,
  vollstaendigkeit varchar NOT NULL,
  flaechenmass integer NOT NULL,
  geometrie geometry(POLYGON, 21781),
  stand_am date NULL,
  bfsnr integer NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.liegenschaften__liegenschaft OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.liegenschaften__liegenschaft TO stefan;
GRANT SELECT ON TABLE av_mopublic.liegenschaften__liegenschaft TO mspublic;

CREATE INDEX idx_liegenschaften__liegenschaft_nummer
  ON av_mopublic.liegenschaften__liegenschaft
  USING btree
  (nummer);

CREATE INDEX idx_liegenschaften__liegenschaft_bfsnr
  ON av_mopublic.liegenschaften__liegenschaft
  USING btree
  (bfsnr);

CREATE INDEX idx_liegenschaften__liegenschaft_geometrie
  ON av_mopublic.liegenschaften__liegenschaft
  USING gist
  (geometrie);

CREATE INDEX idx_liegenschaften__liegenschaft_ogc_fid
  ON av_mopublic.liegenschaften__liegenschaft
  USING btree
  (ogc_fid);


-- DROP TABLE av_mopublic.liegenschaften__liegenschaftpos;
CREATE TABLE av_mopublic.liegenschaften__liegenschaftpos (
  ogc_fid serial PRIMARY KEY,
  liegenschaftpos_von varchar NULL, -- TODO: Mmh, tid wird ja nicht mitgespeichert. Oder als ogc_fid die TID?
  nbident varchar(12) NOT NULL,
  nummer varchar(15) NOT NULL,
  art varchar, -- zusaetzlich fuer Labeling in QGIS
  pos geometry(POINT, 21781),
  ori decimal(5,1) NOT NULL,
  rot decimal(5,1) NOT NULL, -- zusaetzlich fuer Labeling in QGIS (unnoetig in QGIS 2.0)
  hali integer NULL, -- geandert auf NULL, korrekterweise in Abfrage mit CASE/WHEN 
  hali_txt varchar(255) NULL,
  vali integer NULL,
  vali_txt varchar(255) NULL,
  y decimal NOT NULL, -- zusaetzlich fuer Labeling in QGIS (unnoetig in QGIS 2.0)
  x decimal NOT NULL,
  bfsnr integer NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.liegenschaften__liegenschaftpos OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.liegenschaften__liegenschaftpos TO stefan;
GRANT SELECT ON TABLE av_mopublic.liegenschaften__liegenschaftpos TO mspublic;

CREATE INDEX idx_liegenschaften__liegenschaftpos_nummer
  ON av_mopublic.liegenschaften__liegenschaftpos
  USING btree
  (nummer);

CREATE INDEX idx_liegenschaften__liegenschaftpos_bfsnr
  ON av_mopublic.liegenschaften__liegenschaftpos
  USING btree
  (bfsnr);

CREATE INDEX idx_liegenschaften__liegenschaftpos_pos
  ON av_mopublic.liegenschaften__liegenschaftpos
  USING gist
  (pos);

CREATE INDEX idx_liegenschaften__liegenschaftpos_ogc_fid
  ON av_mopublic.liegenschaften__liegenschaftpos
  USING btree
  (ogc_fid);
