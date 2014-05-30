-- DROP TABLE av_mopublic.metadaten__metadaten;

CREATE TABLE av_mopublic.metadaten__metadaten
(
  ogc_fid serial,
  generiert_von varchar,
  generiert_von_basismodell varchar,
  generiert_datum timestamp,
  weitere_metadaten_information varchar,
  CONSTRAINT metadaten__metadaten_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.metadaten__metadaten OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.metadaten__metadaten TO stefan;
GRANT SELECT ON TABLE av_mopublic.metadaten__metadaten TO mspublic;

CREATE INDEX idx_metadaten__metadaten_ogc_fid
  ON av_mopublic.metadaten__metadaten
  USING btree
  (ogc_fid);



