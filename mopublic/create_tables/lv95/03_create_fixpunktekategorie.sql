-- DROP TABLE av_mopublic.fixpunktekategorie__lfp;
CREATE TABLE av_mopublic.fixpunktekategorie__lfp  
(
  ogc_fid serial PRIMARY KEY,
  tid varchar NOT NULL,
  kategorie varchar NOT NULL,
  nbident varchar(12) NOT NULL,
  nummer varchar(12) NOT NULL,
  geometrie geometry(Point, 2056),
  --geometrie geometry(PointZ, 2056), -- FreeFrame Plugin macht noch Probleme.
  lagegen decimal(5,1) NULL,
  hoehegeom decimal(8,3) NULL,
  hoehegen decimal(5,1) NULL,
  punktzeichen varchar NOT NULL,
  stand_am date NULL,
  bfsnr integer NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.fixpunktekategorie__lfp OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.fixpunktekategorie__lfp TO stefan;
GRANT SELECT ON TABLE av_mopublic.fixpunktekategorie__lfp TO mspublic;

CREATE INDEX idx_fixpunktekategorie__lfp_kategorie
  ON av_mopublic.fixpunktekategorie__lfp
  USING btree
  (kategorie);

CREATE INDEX idx_fixpunktekategorie__lfp_bfsnr
  ON av_mopublic.fixpunktekategorie__lfp
  USING btree
  (bfsnr);

CREATE INDEX idx_fixpunktekategorie__lfp_geometrie
  ON av_mopublic.fixpunktekategorie__lfp
  USING gist
  (geometrie);

CREATE INDEX idx_fixpunktekategorie__lfp_ogc_fid
  ON av_mopublic.fixpunktekategorie__lfp
  USING btree
  (ogc_fid);

CREATE INDEX idx_fixpunktekategorie__lfp_tid
  ON av_mopublic.fixpunktekategorie__lfp
  USING btree
  (tid);
