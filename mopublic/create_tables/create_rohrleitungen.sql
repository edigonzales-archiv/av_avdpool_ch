-- DROP TABLE av_mopublic.rohrleitungen__linienelement;

CREATE TABLE av_mopublic.rohrleitungen__linienelement
(
  ogc_fid serial,
  tid varchar,
  betreiber varchar,
  art varchar,
  geometrie geometry(Linestring,21781),
  gueltigkeit varchar, 
  stand_am date,
  bfsnr integer,
  CONSTRAINT rohrleitungen__linienelement_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.rohrleitungen__linienelement OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.rohrleitungen__linienelement TO stefan;
GRANT SELECT ON TABLE av_mopublic.rohrleitungen__linienelement TO mspublic;

CREATE INDEX idx_rohrleitungen__linienelement_art
  ON av_mopublic.rohrleitungen__linienelement
  USING btree
  (art);

CREATE INDEX idx_rohrleitungen__linienelement_betreiber
  ON av_mopublic.rohrleitungen__linienelement
  USING btree
  (betreiber);

CREATE INDEX idx_rohrleitungen__linienelement_bfsnr
  ON av_mopublic.rohrleitungen__linienelement
  USING btree
  (bfsnr);

CREATE INDEX idx_rohrleitungen__linienelement_geometrie
  ON av_mopublic.rohrleitungen__linienelement
  USING gist
  (geometrie);

CREATE INDEX idx_rohrleitungen__linienelement_ogc_fid
  ON av_mopublic.rohrleitungen__linienelement
  USING btree
  (ogc_fid);

CREATE INDEX idx_rohrleitungen__linienelement_tid
  ON av_mopublic.rohrleitungen__linienelement
  USING btree
  (tid);


-- DROP TABLE av_mopublic.rohrleitungen__linienelementnamepos;

CREATE TABLE av_mopublic.rohrleitungen__linienelementnamepos
(
  ogc_fid serial,
  tid varchar,
  linienelementnamepos_von varchar,
  betreiber varchar,
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
  CONSTRAINT rohrleitungen__linienelementnamepos_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.rohrleitungen__linienelementnamepos OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.rohrleitungen__linienelementnamepos TO stefan;
GRANT SELECT ON TABLE av_mopublic.rohrleitungen__linienelementnamepos TO mspublic;

CREATE INDEX idx_rohrleitungen__linienelementnamepos_betreiber
  ON av_mopublic.rohrleitungen__linienelementnamepos
  USING btree
  (betreiber);

CREATE INDEX idx_rohrleitungen__linienelementnamepos_bfsnr
  ON av_mopublic.rohrleitungen__linienelementnamepos
  USING btree
  (bfsnr);

CREATE INDEX idx_rohrleitungen__linienelementnamepos_pos
  ON av_mopublic.rohrleitungen__linienelementnamepos
  USING gist
  (pos);

CREATE INDEX idx_rohrleitungen__linienelementnamepos_ogc_fid
  ON av_mopublic.rohrleitungen__linienelementnamepos
  USING btree
  (ogc_fid);

CREATE INDEX idx_rohrleitungen__linienelementnamepos_tid
  ON av_mopublic.rohrleitungen__linienelementnamepos
  USING btree
  (tid);

