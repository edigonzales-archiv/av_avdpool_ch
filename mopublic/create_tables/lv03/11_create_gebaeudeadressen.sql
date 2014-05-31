-- DROP TABLE av_mopublic.gebaeudeadressen__lokalisationsname;

CREATE TABLE av_mopublic.gebaeudeadressen__lokalisationsname
(
  ogc_fid serial,
  tid varchar,
  geometrie geometry(MultiPoint,21781),  -- Aha... uralte Idee.
  lokalisationsname varchar,
  istoffiziellebezeichnung varchar,
  stand_am date,
  bfsnr integer,
  CONSTRAINT gebaeudeadressen__lokalisationsname_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.gebaeudeadressen__lokalisationsname OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.gebaeudeadressen__lokalisationsname TO stefan;
GRANT SELECT ON TABLE av_mopublic.gebaeudeadressen__lokalisationsname TO mspublic;

CREATE INDEX idx_gebaeudeadressen__lokalisationsname_lokalisationsname
  ON av_mopublic.gebaeudeadressen__lokalisationsname
  USING btree
  (lokalisationsname);

CREATE INDEX idx_gebaeudeadressen__lokalisationsname_bfsnr
  ON av_mopublic.gebaeudeadressen__lokalisationsname
  USING btree
  (bfsnr);

CREATE INDEX idx_gebaeudeadressen__lokalisationsname_geometrie
  ON av_mopublic.gebaeudeadressen__lokalisationsname
  USING gist
  (geometrie);

CREATE INDEX idx_gebaeudeadressen__lokalisationsname_ogc_fid
  ON av_mopublic.gebaeudeadressen__lokalisationsname
  USING btree
  (ogc_fid);

CREATE INDEX idx_gebaeudeadressen__lokalisationsname_tid
  ON av_mopublic.gebaeudeadressen__lokalisationsname
  USING btree
  (tid);


-- DROP TABLE av_mopublic.gebaeudeadressen__lokalisationsnamepos;

CREATE TABLE av_mopublic.gebaeudeadressen__lokalisationsnamepos
(
  ogc_fid serial,
  tid varchar,
  lokalisationsnamepos_von varchar,
  lokalisationsname varchar,
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
  CONSTRAINT gebaeudeadressen__lokalisationsnamepos_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.gebaeudeadressen__lokalisationsnamepos OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.gebaeudeadressen__lokalisationsnamepos TO stefan;
GRANT SELECT ON TABLE av_mopublic.gebaeudeadressen__lokalisationsnamepos TO mspublic;

CREATE INDEX idx_gebaeudeadressen__lokalisationsnamepos_lokalisationsname
  ON av_mopublic.gebaeudeadressen__lokalisationsnamepos
  USING btree
  (lokalisationsname);

CREATE INDEX idx_gebaeudeadressen__lokalisationsnamepos_bfsnr
  ON av_mopublic.gebaeudeadressen__lokalisationsnamepos
  USING btree
  (bfsnr);

CREATE INDEX idx_gebaeudeadressen__lokalisationsnamepos_pos
  ON av_mopublic.gebaeudeadressen__lokalisationsnamepos
  USING gist
  (pos);

CREATE INDEX idx_gebaeudeadressen__lokalisationsnamepos_ogc_fid
  ON av_mopublic.gebaeudeadressen__lokalisationsnamepos
  USING btree
  (ogc_fid);

CREATE INDEX idx_gebaeudeadressen__lokalisationsnamepos_tid
  ON av_mopublic.gebaeudeadressen__lokalisationsnamepos
  USING btree
  (tid);


-- DROP TABLE av_mopublic.gebaeudeadressen__gebaeudeeingang;

CREATE TABLE av_mopublic.gebaeudeadressen__gebaeudeeingang
(
  ogc_fid serial,
  tid varchar,
  gebaeudeeingang_von varchar,
  gueltigkeit varchar,
  lage geometry(Point,21781),  
  istoffiziellebezeichnung varchar,
  hoehenlage integer,
  hausnummer varchar,
  gebaeudename varchar,
  gwr_egid integer,
  gwr_edid integer,
  lokalisationsname varchar,
  plz integer,
  zusatzziffern integer,
  ortschaftsname varchar,
  stand_am date,
  bfsnr integer,
  CONSTRAINT gebaeudeadressen__gebaeudeeingang_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.gebaeudeadressen__gebaeudeeingang OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.gebaeudeadressen__gebaeudeeingang TO stefan;
GRANT SELECT ON TABLE av_mopublic.gebaeudeadressen__gebaeudeeingang TO mspublic;

CREATE INDEX idx_gebaeudeadressen__gebaeudeeingang_hausnummer
  ON av_mopublic.gebaeudeadressen__gebaeudeeingang
  USING btree
  (hausnummer);

CREATE INDEX idx_gebaeudeadressen__gebaeudeeingang_gwr_egid
  ON av_mopublic.gebaeudeadressen__gebaeudeeingang
  USING btree
  (gwr_egid);

CREATE INDEX idx_gebaeudeadressen__gebaeudeeingang_gwr_edid
  ON av_mopublic.gebaeudeadressen__gebaeudeeingang
  USING btree
  (gwr_edid);

CREATE INDEX idx_gebaeudeadressen__gebaeudeeingang_plz
  ON av_mopublic.gebaeudeadressen__gebaeudeeingang
  USING btree
  (plz);

CREATE INDEX idx_gebaeudeadressen__gebaeudeeingang_ortschaftsname
  ON av_mopublic.gebaeudeadressen__gebaeudeeingang
  USING btree
  (ortschaftsname);

CREATE INDEX idx_gebaeudeadressen__gebaeudeeingang_lokalisationsname
  ON av_mopublic.gebaeudeadressen__gebaeudeeingang
  USING btree
  (lokalisationsname);

CREATE INDEX idx_gebaeudeadressen__gebaeudeeingang_bfsnr
  ON av_mopublic.gebaeudeadressen__gebaeudeeingang
  USING btree
  (bfsnr);

CREATE INDEX idx_gebaeudeadressen__gebaeudeeingang_lage
  ON av_mopublic.gebaeudeadressen__gebaeudeeingang
  USING gist
  (lage);

CREATE INDEX idx_gebaeudeadressen__gebaeudeeingang_ogc_fid
  ON av_mopublic.gebaeudeadressen__gebaeudeeingang
  USING btree
  (ogc_fid);

CREATE INDEX idx_gebaeudeadressen__gebaeudeeingang_tid
  ON av_mopublic.gebaeudeadressen__gebaeudeeingang
  USING btree
  (tid);


-- DROP TABLE av_mopublic.gebaeudeadressen__hausnummerpos;

CREATE TABLE av_mopublic.gebaeudeadressen__hausnummerpos
(
  ogc_fid serial,
  tid varchar,
  hausnummerpos_von varchar,
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
  CONSTRAINT gebaeudeadressen__hausnummerpos_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.gebaeudeadressen__hausnummerpos OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.gebaeudeadressen__hausnummerpos TO stefan;
GRANT SELECT ON TABLE av_mopublic.gebaeudeadressen__hausnummerpos TO mspublic;

CREATE INDEX idx_gebaeudeadressen__hausnummerpos_nummer_name
  ON av_mopublic.gebaeudeadressen__hausnummerpos
  USING btree
  (nummer_name);

CREATE INDEX idx_gebaeudeadressen__hausnummerpos_bfsnr
  ON av_mopublic.gebaeudeadressen__hausnummerpos
  USING btree
  (bfsnr);

CREATE INDEX idx_gebaeudeadressen__hausnummerpos_pos
  ON av_mopublic.gebaeudeadressen__hausnummerpos
  USING gist
  (pos);

CREATE INDEX idx_gebaeudeadressen__hausnummerpos_ogc_fid
  ON av_mopublic.gebaeudeadressen__hausnummerpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_gebaeudeadressen__hausnummerpos_tid
  ON av_mopublic.gebaeudeadressen__hausnummerpos
  USING btree
  (tid);



