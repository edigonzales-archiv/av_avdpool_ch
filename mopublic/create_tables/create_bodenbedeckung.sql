-- DROP TABLE av_mopublic.bodenbedeckung__boflaeche;

CREATE TABLE av_mopublic.bodenbedeckung__boflaeche
(
  ogc_fid serial NOT NULL,
  tid varchar NOT NULL,
  geometrie geometry(Polygon,21781),
  qualitaet character varying NOT NULL,
  art character varying NOT NULL,
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
