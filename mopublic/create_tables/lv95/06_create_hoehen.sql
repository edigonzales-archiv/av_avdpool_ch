-- DROP TABLE av_mopublic.hoehen__hoehenkurven;

CREATE TABLE av_mopublic.hoehen__hoehenkurven
(
  ogc_fid serial,
  geometrie geometry(LinestringZ,2056),
  hoehe decimal,
  stand_am date,
  bfsnr integer, -- sinnvoll? Kurven zuschneiden auf Gemeindegrenzen?
  CONSTRAINT hoehen__hoehenkurven_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.hoehen__hoehenkurven OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.hoehen__hoehenkurven TO stefan;
GRANT SELECT ON TABLE av_mopublic.hoehen__hoehenkurven TO mspublic;
