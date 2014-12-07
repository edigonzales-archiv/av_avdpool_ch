/*
"art" versus "typ": Gemäss V+D ist tatsächlich bewusst zwischen EO und BB unterschieden wurden. Für mich unlogisch aber dann
ändere ich es zu typ. Antwort auf Anfrage vom 20.5.2014.
*/


-- DROP TABLE av_mopublic.einzelobjekte__flaechenelement;

CREATE TABLE av_mopublic.einzelobjekte__flaechenelement
(
  ogc_fid serial,
  tid varchar,
  gueltigkeit varchar,
  typ varchar, -- Ich schreibe "art" obwohl die Übersetzung "typ" ist. Nachgefragt bei V+D am 30.5.14.
  geometrie geometry(Polygon,21781),
  qualitaetsstandard character varying,
  gwr_egid integer,
  stand_am date,
  bfsnr integer,
  CONSTRAINT einzelobjekte__flaechenelement_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.einzelobjekte__flaechenelement OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.einzelobjekte__flaechenelement TO stefan;
GRANT SELECT ON TABLE av_mopublic.einzelobjekte__flaechenelement TO mspublic;

CREATE INDEX idx_einzelobjekte__flaechenelement_typ
  ON av_mopublic.einzelobjekte__flaechenelement
  USING btree
  (typ);

CREATE INDEX idx_einzelobjekte__flaechenelement_bfsnr
  ON av_mopublic.einzelobjekte__flaechenelement
  USING btree
  (bfsnr);

CREATE INDEX idx_einzelobjekte__flaechenelement_geometrie
  ON av_mopublic.einzelobjekte__flaechenelement
  USING gist
  (geometrie);

CREATE INDEX idx_einzelobjekte__flaechenelement_ogc_fid
  ON av_mopublic.einzelobjekte__flaechenelement
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte__flaechenelement_tid
  ON av_mopublic.einzelobjekte__flaechenelement
  USING btree
  (tid);


-- DROP TABLE av_mopublic.einzelobjekte__flaechenelementtext;

CREATE TABLE av_mopublic.einzelobjekte__flaechenelementtext
(
  ogc_fid serial,
  tid varchar,
  flaechenelementtext_von varchar,
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
  CONSTRAINT einzelobjekte__flaechenelementtext_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.einzelobjekte__flaechenelementtext OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.einzelobjekte__flaechenelementtext TO stefan;
GRANT SELECT ON TABLE av_mopublic.einzelobjekte__flaechenelementtext TO mspublic;

CREATE INDEX idx_einzelobjekte__flaechenelementtext_typ
  ON av_mopublic.einzelobjekte__flaechenelementtext
  USING btree
  (typ);

CREATE INDEX idx_einzelobjekte__flaechenelementtext_nummer_name
  ON av_mopublic.einzelobjekte__flaechenelementtext
  USING btree
  (nummer_name);

CREATE INDEX idx_einzelobjekte__flaechenelementtext_bfsnr
  ON av_mopublic.einzelobjekte__flaechenelementtext
  USING btree
  (bfsnr);

CREATE INDEX idx_einzelobjekte__flaechenelementtext_pos
  ON av_mopublic.einzelobjekte__flaechenelementtext
  USING gist
  (pos);

CREATE INDEX idx_einzelobjekte__flaechenelementtext_ogc_fid
  ON av_mopublic.einzelobjekte__flaechenelementtext
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte__flaechenelementtext_tid
  ON av_mopublic.einzelobjekte__flaechenelementtext
  USING btree
  (tid);


-- DROP TABLE av_mopublic.einzelobjekte__linienelement;

CREATE TABLE av_mopublic.einzelobjekte__linienelement
(
  ogc_fid serial,
  tid varchar,
  gueltigkeit varchar,
  typ varchar, -- Ich schreibe "art" obwohl die Übersetzung "typ" ist. Nachgefragt bei V+D am 30.5.14.
  geometrie geometry(Linestring,21781),
  qualitaetsstandard character varying,
  gwr_egid integer,
  stand_am date,
  bfsnr integer,
  CONSTRAINT einzelobjekte__linienelement_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.einzelobjekte__linienelement OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.einzelobjekte__linienelement TO stefan;
GRANT SELECT ON TABLE av_mopublic.einzelobjekte__linienelement TO mspublic;

CREATE INDEX idx_einzelobjekte__linienelement_typ
  ON av_mopublic.einzelobjekte__linienelement
  USING btree
  (typ);

CREATE INDEX idx_einzelobjekte__linienelement_bfsnr
  ON av_mopublic.einzelobjekte__linienelement
  USING btree
  (bfsnr);

CREATE INDEX idx_einzelobjekte__linienelement_geometrie
  ON av_mopublic.einzelobjekte__linienelement
  USING gist
  (geometrie);

CREATE INDEX idx_einzelobjekte__linienelement_ogc_fid
  ON av_mopublic.einzelobjekte__linienelement
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte__linienelement_tid
  ON av_mopublic.einzelobjekte__linienelement
  USING btree
  (tid);


-- DROP TABLE av_mopublic.einzelobjekte__linienelementtext;

CREATE TABLE av_mopublic.einzelobjekte__linienelementtext
(
  ogc_fid serial,
  tid varchar,
  linienelementtext_von varchar,
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
  CONSTRAINT einzelobjekte__linienelementtext_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.einzelobjekte__linienelementtext OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.einzelobjekte__linienelementtext TO stefan;
GRANT SELECT ON TABLE av_mopublic.einzelobjekte__linienelementtext TO mspublic;

CREATE INDEX idx_einzelobjekte__linienelementtext_typ
  ON av_mopublic.einzelobjekte__linienelementtext
  USING btree
  (typ);

CREATE INDEX idx_einzelobjekte__linienelementtext_nummer_name
  ON av_mopublic.einzelobjekte__linienelementtext
  USING btree
  (nummer_name);

CREATE INDEX idx_einzelobjekte__linienelementtext_bfsnr
  ON av_mopublic.einzelobjekte__linienelementtext
  USING btree
  (bfsnr);

CREATE INDEX idx_einzelobjekte__linienelementtext_pos
  ON av_mopublic.einzelobjekte__linienelementtext
  USING gist
  (pos);

CREATE INDEX idx_einzelobjekte__linienelementtext_ogc_fid
  ON av_mopublic.einzelobjekte__linienelementtext
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte__linienelementtext_tid
  ON av_mopublic.einzelobjekte__linienelementtext
  USING btree
  (tid);


-- DROP TABLE av_mopublic.einzelobjekte__punktelement;

CREATE TABLE av_mopublic.einzelobjekte__punktelement
(
  ogc_fid serial,
  tid varchar,
  gueltigkeit varchar,
  typ varchar, -- Ich schreibe "art" obwohl die Übersetzung "typ" ist. Nachgefragt bei V+D am 30.5.14.
  geometrie geometry(Point,21781),
  qualitaetsstandard character varying,
  gwr_egid integer,
  stand_am date,
  bfsnr integer,
  CONSTRAINT einzelobjekte__punktelement_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.einzelobjekte__punktelement OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.einzelobjekte__punktelement TO stefan;
GRANT SELECT ON TABLE av_mopublic.einzelobjekte__punktelement TO mspublic;

CREATE INDEX idx_einzelobjekte__punktelement_typ
  ON av_mopublic.einzelobjekte__punktelement
  USING btree
  (typ);

CREATE INDEX idx_einzelobjekte__punktelement_bfsnr
  ON av_mopublic.einzelobjekte__punktelement
  USING btree
  (bfsnr);

CREATE INDEX idx_einzelobjekte__punktelement_geometrie
  ON av_mopublic.einzelobjekte__punktelement
  USING gist
  (geometrie);

CREATE INDEX idx_einzelobjekte__punktelement_ogc_fid
  ON av_mopublic.einzelobjekte__punktelement
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte__punktelement_tid
  ON av_mopublic.einzelobjekte__punktelement
  USING btree
  (tid);


-- DROP TABLE av_mopublic.einzelobjekte__punktelementtext;

CREATE TABLE av_mopublic.einzelobjekte__punktelementtext
(
  ogc_fid serial,
  tid varchar,
  punktelementtext_von varchar,
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
  CONSTRAINT einzelobjekte__punktelementtext_pkey PRIMARY KEY (ogc_fid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.einzelobjekte__punktelementtext OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.einzelobjekte__punktelementtext TO stefan;
GRANT SELECT ON TABLE av_mopublic.einzelobjekte__punktelementtext TO mspublic;

CREATE INDEX idx_einzelobjekte__punktelementtext_typ
  ON av_mopublic.einzelobjekte__punktelementtext
  USING btree
  (typ);

CREATE INDEX idx_einzelobjekte__punktelementtext_nummer_name
  ON av_mopublic.einzelobjekte__punktelementtext
  USING btree
  (nummer_name);

CREATE INDEX idx_einzelobjekte__punktelementtext_bfsnr
  ON av_mopublic.einzelobjekte__punktelementtext
  USING btree
  (bfsnr);

CREATE INDEX idx_einzelobjekte__punktelementtext_pos
  ON av_mopublic.einzelobjekte__punktelementtext
  USING gist
  (pos);

CREATE INDEX idx_einzelobjekte__punktelementtext_ogc_fid
  ON av_mopublic.einzelobjekte__punktelementtext
  USING btree
  (ogc_fid);

CREATE INDEX idx_einzelobjekte__punktelementtext_tid
  ON av_mopublic.einzelobjekte__punktelementtext
  USING btree
  (tid);
