-- DROP TABLE av_avwms.osnr;

CREATE TABLE av_avwms.osnr
(
  ogc_fid serial NOT NULL,
  nbident character varying,
  nummer character varying,
  pos geometry(Point,21781),
  ori numeric,
  hali integer,
  vali integer,
  bfsnr integer,
  ---
  art integer,
  y decimal, 
  x decimal,
  rot decimal,
  hali_txt varchar,
  vali_txt varchar,
  CONSTRAINT osnr_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.av_avwms.osnr OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.av_avwms.osnr TO stefan;
GRANT SELECT ON TABLE av_mopublic.av_avwms.osnr TO mspublic;

CREATE INDEX idx_osnr_bfsnr
  ON av_avwms.osnr
  USING btree
  (bfsnr);

CREATE INDEX idx_osnr_nummer
  ON av_avwms.osnr
  USING btree
  (nummer);

CREATE INDEX idx_osnr_ogc_fid
  ON av_avwms.osnr
  USING btree
  (ogc_fid);

CREATE INDEX idx_osnr_pos
  ON av_avwms.osnr
  USING gist
  (pos);


-- DROP TABLE av_avwms.osnrproj;

CREATE TABLE av_avwms.osnrproj
(
  ogc_fid serial NOT NULL,
  nbident character varying,
  nummer character varying,
  pos geometry(Point,21781),
  ori numeric,
  hali integer,
  vali integer,
  bfsnr integer,
  ---
  art integer,
  y decimal, 
  x decimal,
  rot decimal,
  hali_txt varchar,
  vali_txt varchar,
  CONSTRAINT osnrproj_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_avwms.osnrproj OWNER TO stefan;
GRANT ALL ON TABLE av_avwms.osnrproj TO stefan;
GRANT SELECT ON TABLE av_avwms.osnrproj TO mspublic;

CREATE INDEX idx_osnrproj_bfsnr
  ON av_avwms.osnrproj
  USING btree
  (bfsnr);

CREATE INDEX idx_osnrproj_nummer
  ON av_avwms.osnrproj
  USING btree
  (nummer);

CREATE INDEX idx_osnrproj_ogc_fid
  ON av_avwms.osnr
  USING btree
  (ogc_fid);

CREATE INDEX idx_osnrproj_pos
  ON av_avwms.osnr
  USING gist
  (pos);


-- DROP TABLE av_avwms.soobj;

CREATE TABLE av_avwms.soobj
(
  ogc_fid serial,
  tid varchar, -- noch löschen
  typ varchar,
  nummer_name varchar,
  pos geometry(Point,21781),
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
  CONSTRAINT soobj_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_avwms.soobj OWNER TO stefan;
GRANT ALL ON TABLE av_avwms.soobj TO stefan;
GRANT SELECT ON TABLE av_avwms.soobj TO mspublic;

CREATE INDEX idx_soobj_typ
  ON av_avwms.soobj
  USING btree
  (typ);

CREATE INDEX idx_soobj_nummer_name
  ON av_avwms.soobj
  USING btree
  (nummer_name);

CREATE INDEX idx_soobj_bfsnr
  ON av_avwms.soobj
  USING btree
  (bfsnr);

CREATE INDEX idx_soobj_pos
  ON av_avwms.soobj
  USING gist
  (pos);

CREATE INDEX idx_soobj_ogc_fid
  ON av_avwms.soobj
  USING btree
  (ogc_fid);

CREATE INDEX idx_soobj_tid
  ON av_avwms.soobj
  USING btree
  (tid);


-- DROP TABLE av_avwms.lnna;

CREATE TABLE av_avwms.lnna
(
  ogc_fid serial,
  kategorie varchar,
  "name" varchar,
  pos geometry(Point,21781),
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
  fontsize integer,
  fontitalic integer,
  fontbold integer,
  CONSTRAINT lnna_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_avwms.lnna OWNER TO stefan;
GRANT ALL ON TABLE av_avwms.lnna TO stefan;
GRANT SELECT ON TABLE av_avwms.lnna TO mspublic;

CREATE INDEX idx_lnna_kategorie
  ON av_avwms.lnna
  USING btree
  (kategorie);

CREATE INDEX idx_lnna_bfsnr
  ON av_avwms.lnna
  USING btree
  (bfsnr);

CREATE INDEX idx_lnna_pos
  ON av_avwms.lnna
  USING gist
  (pos);

CREATE INDEX idx_lnna_ogc_fid
  ON av_avwms.lnna
  USING btree
  (ogc_fid);


-- DROP TABLE av_avwms.hadr;

CREATE TABLE av_avwms.hadr
(
  ogc_fid serial,
  hausnummer varchar,
  gebaeudename varchar,
  pos geometry(Point,21781),  
  gwr_egid integer,
  gwr_edid integer,
  lokalisationsname varchar,
  plz integer,
  zusatzziffern integer,
  ortschaftsname varchar,
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
  CONSTRAINT hadr_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_avwms.hadr OWNER TO stefan;
GRANT ALL ON TABLE av_avwms.hadr TO stefan;
GRANT SELECT ON TABLE av_avwms.hadr TO mspublic;

CREATE INDEX idx_hadr_hausnummer
  ON av_avwms.hadr
  USING btree
  (hausnummer);

CREATE INDEX idx_hadr_bfsnr
  ON av_avwms.hadr
  USING btree
  (bfsnr);

CREATE INDEX idx_hadr_pos
  ON av_avwms.hadr
  USING gist
  (pos);

CREATE INDEX idx_hadr_ogc_fid
  ON av_avwms.hadr
  USING btree
  (ogc_fid);

