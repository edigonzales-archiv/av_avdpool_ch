-- DROP TABLE av_mopublic.hoheitsgrenzen__hoheitsgrenzpunkt;

CREATE TABLE av_mopublic.hoheitsgrenzen__hoheitsgrenzpunkt
(
  ogc_fid serial,
  tid varchar,
  geometrie geometry(Point,2056),  
  gueltigkeit varchar,
  lagegen decimal,
  lagezuv varchar,
  punktzeichen varchar,
  stand_am date,
  bfsnr integer,
  CONSTRAINT hoheitsgrenzen__hoheitsgrenzpunkt_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.hoheitsgrenzen__hoheitsgrenzpunkt OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.hoheitsgrenzen__hoheitsgrenzpunkt TO stefan;
GRANT SELECT ON TABLE av_mopublic.hoheitsgrenzen__hoheitsgrenzpunkt TO mspublic;

CREATE INDEX idx_hoheitsgrenzen__hoheitsgrenzpunkt_bfsnr
  ON av_mopublic.hoheitsgrenzen__hoheitsgrenzpunkt
  USING btree
  (bfsnr);

CREATE INDEX idx_hoheitsgrenzen__hoheitsgrenzpunkt_geometrie
  ON av_mopublic.hoheitsgrenzen__hoheitsgrenzpunkt
  USING gist
  (geometrie);

CREATE INDEX idx_hoheitsgrenzen__hoheitsgrenzpunkt_ogc_fid
  ON av_mopublic.hoheitsgrenzen__hoheitsgrenzpunkt
  USING btree
  (ogc_fid);

CREATE INDEX idx_hoheitsgrenzen__hoheitsgrenzpunkt_tid
  ON av_mopublic.hoheitsgrenzen__hoheitsgrenzpunkt
  USING btree
  (tid);



-- DROP TABLE av_mopublic.hoheitsgrenzen__gemeindegrenze;

CREATE TABLE av_mopublic.hoheitsgrenzen__gemeindegrenze
(
  ogc_fid serial,
  tid varchar,
  "name" varchar,
  geometrie geometry(Polygon,2056),  
  stand_am date,
  bfsnr integer,
  CONSTRAINT hoheitsgrenzen__gemeindegrenze_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.hoheitsgrenzen__gemeindegrenze OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.hoheitsgrenzen__gemeindegrenze TO stefan;
GRANT SELECT ON TABLE av_mopublic.hoheitsgrenzen__gemeindegrenze TO mspublic;

CREATE INDEX idx_hoheitsgrenzen__gemeindegrenze_bfsnr
  ON av_mopublic.hoheitsgrenzen__gemeindegrenze
  USING btree
  (bfsnr);

CREATE INDEX idx_hoheitsgrenzen__gemeindegrenze_geometrie
  ON av_mopublic.hoheitsgrenzen__gemeindegrenze
  USING gist
  (geometrie);

CREATE INDEX idx_hoheitsgrenzen__gemeindegrenze_ogc_fid
  ON av_mopublic.hoheitsgrenzen__gemeindegrenze
  USING btree
  (ogc_fid);

CREATE INDEX idx_hoheitsgrenzen__gemeindegrenze_tid
  ON av_mopublic.hoheitsgrenzen__gemeindegrenze
  USING btree
  (tid);

-- DROP TABLE av_mopublic.hoheitsgrenzen__projgemeindegrenze;

CREATE TABLE av_mopublic.hoheitsgrenzen__projgemeindegrenze
(
  ogc_fid serial,
  tid varchar,
  "name" varchar,
  geometrie geometry(Linestring,2056),  
  stand_am date,
  bfsnr integer,
  CONSTRAINT hoheitsgrenzen__projgemeindegrenze_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.hoheitsgrenzen__projgemeindegrenze OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.hoheitsgrenzen__projgemeindegrenze TO stefan;
GRANT SELECT ON TABLE av_mopublic.hoheitsgrenzen__projgemeindegrenze TO mspublic;

CREATE INDEX idx_hoheitsgrenzen__projgemeindegrenze_bfsnr
  ON av_mopublic.hoheitsgrenzen__projgemeindegrenze
  USING btree
  (bfsnr);

CREATE INDEX idx_hoheitsgrenzen__projgemeindegrenze_geometrie
  ON av_mopublic.hoheitsgrenzen__projgemeindegrenze
  USING gist
  (geometrie);

CREATE INDEX idx_hoheitsgrenzen__projgemeindegrenze_ogc_fid
  ON av_mopublic.hoheitsgrenzen__projgemeindegrenze
  USING btree
  (ogc_fid);

CREATE INDEX idx_hoheitsgrenzen__projgemeindegrenze_tid
  ON av_mopublic.hoheitsgrenzen__projgemeindegrenze
  USING btree
  (tid);


-- DROP TABLE av_mopublic.hoheitsgrenzen__uebrigehoheitsgrenzen;

CREATE TABLE av_mopublic.hoheitsgrenzen__uebrigehoheitsgrenzen
(
  ogc_fid serial,
  tid varchar,
  typ varchar,
  geometrie geometry(Linestring,2056),  
  gueltigkeit varchar,
  bfsnr integer,
  CONSTRAINT hoheitsgrenzen__uebrigehoheitsgrenzen_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.hoheitsgrenzen__uebrigehoheitsgrenzen OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.hoheitsgrenzen__uebrigehoheitsgrenzen TO stefan;
GRANT SELECT ON TABLE av_mopublic.hoheitsgrenzen__uebrigehoheitsgrenzen TO mspublic;

CREATE INDEX idx_hoheitsgrenzen__uebrigehoheitsgrenzen_typ
  ON av_mopublic.hoheitsgrenzen__uebrigehoheitsgrenzen
  USING btree
  (typ);

CREATE INDEX idx_hoheitsgrenzen__uebrigehoheitsgrenzen_geometrie
  ON av_mopublic.hoheitsgrenzen__uebrigehoheitsgrenzen
  USING gist
  (geometrie);

CREATE INDEX idx_hoheitsgrenzen__uebrigehoheitsgrenzen_bfsnr
  ON av_mopublic.hoheitsgrenzen__uebrigehoheitsgrenzen
  USING btree
  (bfsnr);

CREATE INDEX idx_hoheitsgrenzen__uebrigehoheitsgrenzen_ogc_fid
  ON av_mopublic.hoheitsgrenzen__uebrigehoheitsgrenzen
  USING btree
  (ogc_fid);

CREATE INDEX idx_hoheitsgrenzen__uebrigehoheitsgrenzen_tid
  ON av_mopublic.hoheitsgrenzen__uebrigehoheitsgrenzen
  USING btree
  (tid);



