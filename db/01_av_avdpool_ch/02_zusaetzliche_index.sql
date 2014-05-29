CREATE INDEX idx_bodenbedeckung_boflaeche_art
  ON av_avdpool_ch.bodenbedeckung_boflaeche
  USING btree
  (art);

CREATE INDEX idx_einzelobjekte_einzelobjekt_art
  ON av_avdpool_ch.einzelobjekte_einzelobjekt
  USING btree
  (art);

