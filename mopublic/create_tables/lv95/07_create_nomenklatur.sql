-- DROP TABLE av_mopublic.nomenklatur__namen;

CREATE TABLE av_mopublic.nomenklatur__namen
(
  ogc_fid serial,
  tid varchar,
  kategorie varchar,
  "name" varchar,
  geometrie geometry(Polygon,2056),
  typ varchar, 
  stand_am date,
  bfsnr integer,
  CONSTRAINT nomenklatur__namen_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.nomenklatur__namen OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.nomenklatur__namen TO stefan;
GRANT SELECT ON TABLE av_mopublic.nomenklatur__namen TO mspublic;

CREATE INDEX idx_nomenklatur__namen_kategorie
  ON av_mopublic.nomenklatur__namen
  USING btree
  (kategorie);

CREATE INDEX idx_nomenklatur__namen_bfsnr
  ON av_mopublic.nomenklatur__namen
  USING btree
  (bfsnr);

CREATE INDEX idx_nomenklatur__namen_geometrie
  ON av_mopublic.nomenklatur__namen
  USING gist
  (geometrie);

CREATE INDEX idx_nomenklatur__namen_ogc_fid
  ON av_mopublic.nomenklatur__namen
  USING btree
  (ogc_fid);

CREATE INDEX idx_nomenklatur__namen_tid
  ON av_mopublic.nomenklatur__namen
  USING btree
  (tid);


-- DROP TABLE av_mopublic.nomenklatur__namenpos;

CREATE TABLE av_mopublic.nomenklatur__namenpos
(
  ogc_fid serial,
  tid varchar,
  namenpos_von varchar,
  kategorie varchar,
  "name" varchar,
  pos geometry(Point,2056),
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
  CONSTRAINT nomenklatur__namenpos_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.nomenklatur__namenpos OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.nomenklatur__namenpos TO stefan;
GRANT SELECT ON TABLE av_mopublic.nomenklatur__namenpos TO mspublic;

CREATE INDEX idx_nomenklatur__namenpos_kategorie
  ON av_mopublic.nomenklatur__namenpos
  USING btree
  (kategorie);

CREATE INDEX idx_nomenklatur__namenpos_bfsnr
  ON av_mopublic.nomenklatur__namenpos
  USING btree
  (bfsnr);

CREATE INDEX idx_nomenklatur__namenpos_pos
  ON av_mopublic.nomenklatur__namenpos
  USING gist
  (pos);

CREATE INDEX idx_nomenklatur__namenpos_ogc_fid
  ON av_mopublic.nomenklatur__namenpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_nomenklatur__namenpos_tid
  ON av_mopublic.nomenklatur__namenpos
  USING btree
  (tid);

