-- DROP TABLE av_mopublic.liegenschaften__grenzpunkt;

CREATE TABLE av_mopublic.liegenschaften__grenzpunkt
(
  ogc_fid serial,
  tid varchar,
  geometrie geometry(Point,21781),
  gueltigkeit varchar,
  lagegen decimal,
  lagezuv varchar,
  punktzeichen varchar,
  stand_am date,
  bfsnr integer,
  CONSTRAINT liegenschaften__grenzpunkt_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.liegenschaften__grenzpunkt OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.liegenschaften__grenzpunkt TO stefan;
GRANT SELECT ON TABLE av_mopublic.liegenschaften__grenzpunkt TO mspublic;

CREATE INDEX idx_liegenschaften__grenzpunkt_bfsnr
  ON av_mopublic.liegenschaften__grenzpunkt
  USING btree
  (bfsnr);

CREATE INDEX idx_liegenschaften__grenzpunkt_geometrie
  ON av_mopublic.liegenschaften__grenzpunkt
  USING gist
  (geometrie);

CREATE INDEX idx_liegenschaften__grenzpunkt_ogc_fid
  ON av_mopublic.liegenschaften__grenzpunkt
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften__grenzpunkt_tid
  ON av_mopublic.liegenschaften__grenzpunkt
  USING btree
  (tid);


-- DROP TABLE av_mopublic.liegenschaften__liegenschaft;

CREATE TABLE av_mopublic.liegenschaften__liegenschaft
(
  ogc_fid serial,
  tid varchar,
  nbident varchar,
  nummer varchar,
  egris_egrid varchar,
  vollstaendigkeit varchar,
  flaechenmass integer,
  geometrie geometry(Polygon,21781),
  stand_am date,
  bfsnr integer,
  CONSTRAINT liegenschaften__liegenschaft_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.liegenschaften__liegenschaft OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.liegenschaften__liegenschaft TO stefan;
GRANT SELECT ON TABLE av_mopublic.liegenschaften__liegenschaft TO mspublic;

CREATE INDEX idx_liegenschaften__liegenschaft_nbident
  ON av_mopublic.liegenschaften__liegenschaft
  USING btree
  (nbident);

CREATE INDEX idx_liegenschaften__liegenschaft_nummer
  ON av_mopublic.liegenschaften__liegenschaft
  USING btree
  (nummer);

CREATE INDEX idx_liegenschaften__liegenschaft_egris_egrid
  ON av_mopublic.liegenschaften__liegenschaft
  USING btree
  (egris_egrid);

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

CREATE INDEX idx_liegenschaften__liegenschaft_tid
  ON av_mopublic.liegenschaften__liegenschaft
  USING btree
  (tid);


-- DROP TABLE av_mopublic.liegenschaften__liegenschaftpos;

CREATE TABLE av_mopublic.liegenschaften__liegenschaftpos
(
  ogc_fid serial NOT NULL,
  tid character varying,
  liegenschaftpos_von character varying,
  nbident character varying,
  nummer character varying,
  pos geometry(Point,21781),
  ori numeric,
  hali integer,
  vali integer,
  bfsnr integer,
  ---
  y decimal, 
  x decimal,
  rot decimal,
  hali_txt varchar,
  vali_txt varchar,
  CONSTRAINT liegenschaften__liegenschaftpos_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.liegenschaften__liegenschaftpos OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.liegenschaften__liegenschaftpos TO stefan;
GRANT SELECT ON TABLE av_mopublic.liegenschaften__liegenschaftpos TO mspublic;

CREATE INDEX idx_liegenschaften__liegenschaftpos_bfsnr
  ON av_mopublic.liegenschaften__liegenschaftpos
  USING btree
  (bfsnr);

CREATE INDEX idx_liegenschaften__liegenschaftpos_nummer
  ON av_mopublic.liegenschaften__liegenschaftpos
  USING btree
  (nummer);

CREATE INDEX idx_liegenschaften__liegenschaftpos_ogc_fid
  ON av_mopublic.liegenschaften__liegenschaftpos
  USING btree
  (ogc_fid);
  
CREATE INDEX idx_liegenschaften__liegenschaftpos_tid
  ON av_mopublic.liegenschaften__liegenschaftpos
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften__liegenschaftpos_pos
  ON av_mopublic.liegenschaften__liegenschaftpos
  USING gist
  (pos);


-- DROP TABLE av_mopublic.liegenschaften__selbstrecht_bergwerk; 

CREATE TABLE av_mopublic.liegenschaften__selbstrecht_bergwerk -- Eigentlich Bindestrich zwischen *selbstrecht* und *bergwerk*...
(
  ogc_fid serial,
  tid varchar,
  nbident varchar,
  nummer varchar,
  egris_egrid varchar,
  vollstaendigkeit varchar,
  grundstuecksart varchar,
  flaechenmass integer,
  geometrie geometry(Polygon,21781),
  stand_am date,
  bfsnr integer,
  CONSTRAINT liegenschaften__selbstrecht_bergwerk_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.liegenschaften__selbstrecht_bergwerk OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.liegenschaften__selbstrecht_bergwerk TO stefan;
GRANT SELECT ON TABLE av_mopublic.liegenschaften__selbstrecht_bergwerk TO mspublic;

CREATE INDEX idx_liegenschaften__selbstrecht_bergwerk_grundstuecksart
  ON av_mopublic.liegenschaften__selbstrecht_bergwerk
  USING btree
  (grundstuecksart);

CREATE INDEX idx_liegenschaften__selbstrecht_bergwerk_nbident
  ON av_mopublic.liegenschaften__selbstrecht_bergwerk
  USING btree
  (nbident);

CREATE INDEX idx_liegenschaften__selbstrecht_bergwerk_nummer
  ON av_mopublic.liegenschaften__selbstrecht_bergwerk
  USING btree
  (nummer);

CREATE INDEX idx_liegenschaften__selbstrecht_bergwerk_egris_egrid
  ON av_mopublic.liegenschaften__selbstrecht_bergwerk
  USING btree
  (egris_egrid);

CREATE INDEX idx_liegenschaften__selbstrecht_bergwerk_bfsnr
  ON av_mopublic.liegenschaften__selbstrecht_bergwerk
  USING btree
  (bfsnr);

CREATE INDEX idx_liegenschaften__selbstrecht_bergwerk_geometrie
  ON av_mopublic.liegenschaften__selbstrecht_bergwerk
  USING gist
  (geometrie);

CREATE INDEX idx_liegenschaften__selbstrecht_bergwerk_ogc_fid
  ON av_mopublic.liegenschaften__selbstrecht_bergwerk
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften__selbstrecht_bergwerk_tid
  ON av_mopublic.liegenschaften__selbstrecht_bergwerk
  USING btree
  (tid);


-- DROP TABLE av_mopublic.liegenschaften__selbstrecht_bergwerkpos;

CREATE TABLE av_mopublic.liegenschaften__selbstrecht_bergwerkpos
(
  ogc_fid serial NOT NULL,
  tid character varying,
  selbstrecht_bergwerkpos_von character varying,
  nbident character varying,
  nummer character varying,
  pos geometry(Point,21781),
  ori numeric,
  hali integer,
  vali integer,
  bfsnr integer,
  ---
  y decimal, 
  x decimal,
  rot decimal,
  hali_txt varchar,
  vali_txt varchar,
  CONSTRAINT liegenschaften__selbstrecht_bergwerkpos_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.liegenschaften__selbstrecht_bergwerkpos OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.liegenschaften__selbstrecht_bergwerkpos TO stefan;
GRANT SELECT ON TABLE av_mopublic.liegenschaften__selbstrecht_bergwerkpos TO mspublic;

CREATE INDEX idx_liegenschaften__selbstrecht_bergwerkpos_bfsnr
  ON av_mopublic.liegenschaften__selbstrecht_bergwerkpos
  USING btree
  (bfsnr);

CREATE INDEX idx_liegenschaften__selbstrecht_bergwerkpos_nummer
  ON av_mopublic.liegenschaften__selbstrecht_bergwerkpos
  USING btree
  (nummer);

CREATE INDEX idx_liegenschaften__selbstrecht_bergwerkpos_ogc_fid
  ON av_mopublic.liegenschaften__selbstrecht_bergwerkpos
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften__selbstrecht_bergwerkpos_tid
  ON av_mopublic.liegenschaften__selbstrecht_bergwerkpos
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften__selbstrecht_bergwerkpos_pos
  ON av_mopublic.liegenschaften__selbstrecht_bergwerkpos
  USING gist
  (pos);


-- DROP TABLE av_mopublic.liegenschaften__projliegenschaft;

CREATE TABLE av_mopublic.liegenschaften__projliegenschaft
(
  ogc_fid serial,
  tid varchar,
  nbident varchar,
  nummer varchar,
  egris_egrid varchar,
  vollstaendigkeit varchar,
  flaechenmass integer,
  geometrie geometry(Polygon,21781),
  stand_am date,
  bfsnr integer,
  CONSTRAINT liegenschaften__projliegenschaft_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.liegenschaften__projliegenschaft OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.liegenschaften__projliegenschaft TO stefan;
GRANT SELECT ON TABLE av_mopublic.liegenschaften__projliegenschaft TO mspublic;

CREATE INDEX idx_liegenschaften__projliegenschaft_nbident
  ON av_mopublic.liegenschaften__projliegenschaft
  USING btree
  (nbident);

CREATE INDEX idx_liegenschaften__projliegenschaft_nummer
  ON av_mopublic.liegenschaften__projliegenschaft
  USING btree
  (nummer);

CREATE INDEX idx_liegenschaften__projliegenschaft_egris_egrid
  ON av_mopublic.liegenschaften__projliegenschaft
  USING btree
  (egris_egrid);

CREATE INDEX idx_liegenschaften__projliegenschaft_bfsnr
  ON av_mopublic.liegenschaften__projliegenschaft
  USING btree
  (bfsnr);

CREATE INDEX idx_liegenschaften__projliegenschaft_geometrie
  ON av_mopublic.liegenschaften__projliegenschaft
  USING gist
  (geometrie);

CREATE INDEX idx_liegenschaften__projliegenschaft_ogc_fid
  ON av_mopublic.liegenschaften__projliegenschaft
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften__projliegenschaft_tid
  ON av_mopublic.liegenschaften__projliegenschaft
  USING btree
  (tid);



-- DROP TABLE av_mopublic.liegenschaften__projliegenschaftpos;

CREATE TABLE av_mopublic.liegenschaften__projliegenschaftpos
(
  ogc_fid serial NOT NULL,
  tid character varying,
  projliegenschaftpos_von character varying,
  nbident character varying,
  nummer character varying,
  pos geometry(Point,21781),
  ori numeric,
  hali integer,
  vali integer,
  bfsnr integer,
  ---
  y decimal, 
  x decimal,
  rot decimal,
  hali_txt varchar,
  vali_txt varchar,
  CONSTRAINT liegenschaften__projliegenschaftpos_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.liegenschaften__projliegenschaftpos OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.liegenschaften__projliegenschaftpos TO stefan;
GRANT SELECT ON TABLE av_mopublic.liegenschaften__projliegenschaftpos TO mspublic;

CREATE INDEX idx_liegenschaften__projliegenschaftpos_bfsnr
  ON av_mopublic.liegenschaften__projliegenschaftpos
  USING btree
  (bfsnr);

CREATE INDEX idx_liegenschaften__projliegenschaftpos_nummer
  ON av_mopublic.liegenschaften__projliegenschaftpos
  USING btree
  (nummer);

CREATE INDEX idx_liegenschaften__projliegenschaftpos_ogc_fid
  ON av_mopublic.liegenschaften__projliegenschaftpos
  USING btree
  (ogc_fid);
  
CREATE INDEX idx_liegenschaften__projliegenschaftpos_tid
  ON av_mopublic.liegenschaften__projliegenschaftpos
  USING btree
  (tid);


CREATE INDEX idx_liegenschaften__projliegenschaftpos_pos
  ON av_mopublic.liegenschaften__projliegenschaftpos
  USING gist
  (pos);



-- DROP TABLE av_mopublic.liegenschaften__projselbstrecht_bergwerk; 

CREATE TABLE av_mopublic.liegenschaften__projselbstrecht_bergwerk -- Eigentlich Bindestrich zwischen *selbstrecht* und *bergwerk*...
(
  ogc_fid serial,
  tid varchar,
  nbident varchar,
  nummer varchar,
  egris_egrid varchar,
  vollstaendigkeit varchar,
  grundstuecksart varchar,
  flaechenmass integer,
  geometrie geometry(Polygon,21781),
  stand_am date,
  bfsnr integer,
  CONSTRAINT liegenschaften__projselbstrecht_bergwerk_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.liegenschaften__projselbstrecht_bergwerk OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.liegenschaften__projselbstrecht_bergwerk TO stefan;
GRANT SELECT ON TABLE av_mopublic.liegenschaften__projselbstrecht_bergwerk TO mspublic;

CREATE INDEX idx_liegenschaften__projselbstrecht_bergwerk_grundstuecksart
  ON av_mopublic.liegenschaften__projselbstrecht_bergwerk
  USING btree
  (grundstuecksart);

CREATE INDEX idx_liegenschaften__projselbstrecht_bergwerk_nbident
  ON av_mopublic.liegenschaften__projselbstrecht_bergwerk
  USING btree
  (nbident);

CREATE INDEX idx_liegenschaften__projselbstrecht_bergwerk_nummer
  ON av_mopublic.liegenschaften__projselbstrecht_bergwerk
  USING btree
  (nummer);

CREATE INDEX idx_liegenschaften__projselbstrecht_bergwerk_egris_egrid
  ON av_mopublic.liegenschaften__projselbstrecht_bergwerk
  USING btree
  (egris_egrid);

CREATE INDEX idx_liegenschaften__projselbstrecht_bergwerk_bfsnr
  ON av_mopublic.liegenschaften__projselbstrecht_bergwerk
  USING btree
  (bfsnr);

CREATE INDEX idx_liegenschaften__projselbstrecht_bergwerk_geometrie
  ON av_mopublic.liegenschaften__projselbstrecht_bergwerk
  USING gist
  (geometrie);

CREATE INDEX idx_liegenschaften__projselbstrecht_bergwerk_ogc_fid
  ON av_mopublic.liegenschaften__projselbstrecht_bergwerk
  USING btree
  (ogc_fid);

CREATE INDEX idx_liegenschaften__projselbstrecht_bergwerk_tid
  ON av_mopublic.liegenschaften__projselbstrecht_bergwerk
  USING btree
  (tid);


-- DROP TABLE av_mopublic.liegenschaften__projselbstrecht_bergwerkpos;

CREATE TABLE av_mopublic.liegenschaften__projselbstrecht_bergwerkpos
(
  ogc_fid serial NOT NULL,
  tid character varying,
  selbstrecht_bergwerkpos_von character varying,
  nbident character varying,
  nummer character varying,
  pos geometry(Point,21781),
  ori numeric,
  hali integer,
  vali integer,
  bfsnr integer,
  ---
  y decimal, 
  x decimal,
  rot decimal,
  hali_txt varchar,
  vali_txt varchar,
  CONSTRAINT liegenschaften__projselbstrecht_bergwerkpos_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.liegenschaften__projselbstrecht_bergwerkpos OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.liegenschaften__projselbstrecht_bergwerkpos TO stefan;
GRANT SELECT ON TABLE av_mopublic.liegenschaften__projselbstrecht_bergwerkpos TO mspublic;

CREATE INDEX idx_liegenschaften__projselbstrecht_bergwerkpos_bfsnr
  ON av_mopublic.liegenschaften__projselbstrecht_bergwerkpos
  USING btree
  (bfsnr);

CREATE INDEX idx_liegenschaften__projselbstrecht_bergwerkpos_nummer
  ON av_mopublic.liegenschaften__projselbstrecht_bergwerkpos
  USING btree
  (nummer);

CREATE INDEX idx_liegenschaften__projselbstrecht_bergwerkpos_ogc_fid
  ON av_mopublic.liegenschaften__projselbstrecht_bergwerkpos
  USING btree
  (ogc_fid);
  
CREATE INDEX idx_liegenschaften__projselbstrecht_bergwerkpos_tid
  ON av_mopublic.liegenschaften__projselbstrecht_bergwerkpos
  USING btree
  (tid);

CREATE INDEX idx_liegenschaften__projselbstrecht_bergwerkpos_pos
  ON av_mopublic.liegenschaften__projselbstrecht_bergwerkpos
  USING gist
  (pos);

