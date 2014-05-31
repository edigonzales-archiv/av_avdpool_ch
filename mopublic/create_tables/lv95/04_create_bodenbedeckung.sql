--DROP TABLE av_mopublic.bodenbedeckung__boflaeche;

CREATE TABLE av_mopublic.bodenbedeckung__boflaeche
(
  ogc_fid serial,
  tid varchar,
  geometrie geometry(Polygon,2056),
  qualitaetsstandard character varying,
  art character varying,
  gwr_egid integer,
  stand_am date,
  bfsnr integer,
  CONSTRAINT bodenbedeckung__boflaeche_pkey PRIMARY KEY (ogc_fid)
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

CREATE INDEX idx_bodenbedeckung__boflaeche_tid
  ON av_mopublic.bodenbedeckung__boflaeche
  USING btree
  (tid);


-- DROP TABLE av_mopublic.bodenbedeckung__bbtext;

CREATE TABLE av_mopublic.bodenbedeckung__bbtext
(
  ogc_fid serial,
  tid varchar,
  bbtext_von varchar,
  typ varchar,
  nummer_name varchar, -- Fehler in der Übersetzung / LookUp?
  pos geometry(POINT, 2056),
  ori decimal,
  hali integer, 
  vali integer,
  bfsnr integer,
  ---
  y decimal, 
  x decimal,
  rot decimal,
  hali_txt varchar,
  vali_txt varchar,
  CONSTRAINT bodenbedeckung__bbtext_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.bodenbedeckung__bbtext OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.bodenbedeckung__bbtext TO stefan;
GRANT SELECT ON TABLE av_mopublic.bodenbedeckung__bbtext TO mspublic;

CREATE INDEX idx_bodenbedeckung__bbtext_typ
  ON av_mopublic.bodenbedeckung__bbtext
  USING btree
  (typ);

CREATE INDEX idx_bodenbedeckung__bbtext_nummer_name
  ON av_mopublic.bodenbedeckung__bbtext
  USING btree
  (nummer_name);

CREATE INDEX idx_bodenbedeckung__bbtext_bfsnr
  ON av_mopublic.bodenbedeckung__bbtext
  USING btree
  (bfsnr);

CREATE INDEX idx_bodenbedeckung__bbtext_pos
  ON av_mopublic.bodenbedeckung__bbtext
  USING gist
  (pos);

CREATE INDEX idx_bodenbedeckung__bbtext_ogc_fid
  ON av_mopublic.bodenbedeckung__bbtext
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung__bbtext_tid
  ON av_mopublic.bodenbedeckung__bbtext
  USING btree
  (tid);


-- DROP TABLE av_mopublic.bodenbedeckung__projboflaeche;

CREATE TABLE av_mopublic.bodenbedeckung__projboflaeche
(
  ogc_fid serial,
  tid varchar,
  geometrie geometry(Polygon,2056),
  qualitaetsstandard character varying,
  art character varying,
  gwr_egid integer,
  stand_am date,
  bfsnr integer,
  CONSTRAINT bodenbedeckung__projboflaeche_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.bodenbedeckung__projboflaeche OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.bodenbedeckung__projboflaeche TO stefan;
GRANT SELECT ON TABLE av_mopublic.bodenbedeckung__projboflaeche TO mspublic;

CREATE INDEX idx_bodenbedeckung__projboflaeche_art
  ON av_mopublic.bodenbedeckung__projboflaeche
  USING btree
  (art);

CREATE INDEX idx_bodenbedeckung__projboflaeche_bfsnr
  ON av_mopublic.bodenbedeckung__projboflaeche
  USING btree
  (bfsnr);

CREATE INDEX idx_bodenbedeckung__projboflaeche_geometrie
  ON av_mopublic.bodenbedeckung__projboflaeche
  USING gist
  (geometrie);

CREATE INDEX idx_bodenbedeckung__projboflaeche_ogc_fid
  ON av_mopublic.bodenbedeckung__projboflaeche
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung__projboflaeche_tid
  ON av_mopublic.bodenbedeckung__projboflaeche
  USING btree
  (tid);


-- DROP TABLE av_mopublic.bodenbedeckung__projbbtext;

CREATE TABLE av_mopublic.bodenbedeckung__projbbtext
(
  ogc_fid serial,
  tid varchar,
  projbbtext_von varchar,
  typ varchar,
  nummer_name varchar, -- Fehler in der Übersetzung / LookUp?
  pos geometry(POINT, 2056),
  ori decimal,
  hali integer, 
  vali integer,
  bfsnr integer,
  ---
  y decimal, 
  x decimal,
  rot decimal,
  hali_txt varchar,
  vali_txt varchar,
  CONSTRAINT bodenbedeckung__projbbtext_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.bodenbedeckung__projbbtext OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.bodenbedeckung__projbbtext TO stefan;
GRANT SELECT ON TABLE av_mopublic.bodenbedeckung__projbbtext TO mspublic;

CREATE INDEX idx_bodenbedeckung__projbbtext_typ
  ON av_mopublic.bodenbedeckung__projbbtext
  USING btree
  (typ);

CREATE INDEX idx_bodenbedeckung__projbbtext_nummer_name
  ON av_mopublic.bodenbedeckung__projbbtext
  USING btree
  (nummer_name);

CREATE INDEX idx_bodenbedeckung__projbbtext_bfsnr
  ON av_mopublic.bodenbedeckung__projbbtext
  USING btree
  (bfsnr);

CREATE INDEX idx_bodenbedeckung__projbbtext_pos
  ON av_mopublic.bodenbedeckung__projbbtext
  USING gist
  (pos);

CREATE INDEX idx_bodenbedeckung__projbbtext_ogc_fid
  ON av_mopublic.bodenbedeckung__projbbtext
  USING btree
  (ogc_fid);

CREATE INDEX idx_bodenbedeckung__projbbtext_tid
  ON av_mopublic.bodenbedeckung__projbbtext
  USING btree
  (tid);

