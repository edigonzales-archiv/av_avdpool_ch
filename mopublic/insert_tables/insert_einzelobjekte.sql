/*
DELETE FROM av_mopublic.einzelobjekte__flaechenelement WHERE bfsnr = ?;

INSERT INTO av_mopublic.einzelobjekte__flaechenelement (tid, gueltigkeit, typ, geometrie, qualitaetsstandard, gwr_egid, stand_am, bfsnr)
SELECT b.tid, e.designation_d AS gueltigkeit, c.designation_d AS typ, b.geometrie, d.designation_d AS qualitaetsstandard, NULL::integer AS gwr_egid, to_date(b.stand_am, 'YYYYMMDD') as stand_am, b.gem_bfs AS bfsnr
FROM av_mopublic_meta.qualitystandard_type d, av_mopublic_meta.so_type c, 
( 
  SELECT b.tid, b.gem_bfs, b.flaechenelement_von, a.art, c.gueltigkeit, 
                CASE
                    WHEN a.qualitaet IS NULL THEN 0
                    ELSE a.qualitaet
                END AS qualitaet, 
                CASE 
                    WHEN c.gueltigereintrag IS NULL THEN c.datum1
		    ELSE c.gueltigereintrag
                END AS stand_am,
                b.geometrie
   FROM av_avdpool_ch.einzelobjekte_einzelobjekt a, av_avdpool_ch.einzelobjekte_flaechenelement b, av_avdpool_ch.einzelobjekte_eonachfuehrung c
   WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND c.gem_bfs = ? AND a.tid::text = b.flaechenelement_von::text AND c.tid::text = a.entstehung::text
) b, av_mopublic_meta.validity_type e
WHERE b.art::double precision = c.code AND b.qualitaet::double precision = d.code AND b.gueltigkeit::double precision = e.code;


DELETE FROM av_mopublic.einzelobjekte__flaechenelementtext WHERE bfsnr = ?;

INSERT INTO av_mopublic.einzelobjekte__flaechenelementtext (tid, flaechenelementtext_von, typ, nummer_name, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt)
SELECT DISTINCT a.tid as tid, a.objektname_von as flaechenelementtext_von, e.designation_e as typ, a.name as nummer_name, b.pos as pos, b.ori as ori, b.hali as hali, b.vali as vali, a.gem_bfs as bfsnr,st_x(b.pos) AS y, st_y(b.pos) AS x, (100::double precision - b.ori) * 0.9::double precision AS rot, b.hali_txt, b.vali_txt
FROM av_avdpool_ch.einzelobjekte_objektname as a, av_avdpool_ch.einzelobjekte_objektnamepos as b, av_avdpool_ch.einzelobjekte_einzelobjekt as c, av_avdpool_ch.einzelobjekte_flaechenelement as d, av_mopublic_meta.text_type as e 
WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND c.gem_bfs = ? AND d.gem_bfs = ?
AND b.objektnamepos_von = a.tid
AND a.objektname_von = c.tid
AND d.flaechenelement_von = c.tid
AND 1 = e.code;


DELETE FROM av_mopublic.einzelobjekte__linienelement WHERE bfsnr = ?;

INSERT INTO av_mopublic.einzelobjekte__linienelement (tid, gueltigkeit, typ, geometrie, qualitaetsstandard, gwr_egid, stand_am, bfsnr)
SELECT b.tid, e.designation_d AS gueltigkeit, c.designation_d AS typ, b.geometrie, d.designation_d AS qualitaetsstandard, NULL::integer AS gwr_egid, to_date(b.stand_am, 'YYYYMMDD') as stand_am, b.gem_bfs AS bfsnr
FROM av_mopublic_meta.qualitystandard_type d, av_mopublic_meta.so_type c, 
( 
  SELECT b.tid, b.gem_bfs, b.linienelement_von, a.art, c.gueltigkeit, 
                CASE
                    WHEN a.qualitaet IS NULL THEN 0
                    ELSE a.qualitaet
                END AS qualitaet, 
                CASE 
                    WHEN c.gueltigereintrag IS NULL THEN c.datum1
		    ELSE c.gueltigereintrag
                END AS stand_am,
                b.geometrie
   FROM av_avdpool_ch.einzelobjekte_einzelobjekt a, av_avdpool_ch.einzelobjekte_linienelement b, av_avdpool_ch.einzelobjekte_eonachfuehrung c
   WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND c.gem_bfs = ? AND a.tid::text = b.linienelement_von::text AND c.tid::text = a.entstehung::text
) b, av_mopublic_meta.validity_type e
WHERE b.art::double precision = c.code AND b.qualitaet::double precision = d.code AND b.gueltigkeit::double precision = e.code;


DELETE FROM av_mopublic.einzelobjekte__linienelementtext WHERE bfsnr = ?;

INSERT INTO av_mopublic.einzelobjekte__linienelementtext (tid, linienelementtext_von, typ, nummer_name, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt)
SELECT DISTINCT a.tid as tid, a.objektname_von as linienelementtext_von, e.designation_e as typ, a.name as nummer_name, b.pos as pos, b.ori as ori, b.hali as hali, b.vali as vali, a.gem_bfs as bfsnr,st_x(b.pos) AS y, st_y(b.pos) AS x, (100::double precision - b.ori) * 0.9::double precision AS rot, b.hali_txt, b.vali_txt
FROM av_avdpool_ch.einzelobjekte_objektname as a, av_avdpool_ch.einzelobjekte_objektnamepos as b, av_avdpool_ch.einzelobjekte_einzelobjekt as c, av_avdpool_ch.einzelobjekte_linienelement as d, av_mopublic_meta.text_type as e 
WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND c.gem_bfs = ? AND d.gem_bfs = ?
AND b.objektnamepos_von = a.tid
AND a.objektname_von = c.tid
AND d.linienelement_von = c.tid
AND 1 = e.code;


DELETE FROM av_mopublic.einzelobjekte__punktelement WHERE bfsnr = ?;

INSERT INTO av_mopublic.einzelobjekte__punktelement (tid, gueltigkeit, typ, geometrie, qualitaetsstandard, gwr_egid, stand_am, bfsnr)
SELECT b.tid, e.designation_d AS gueltigkeit, c.designation_d AS typ, b.geometrie, d.designation_d AS qualitaetsstandard, NULL::integer AS gwr_egid, to_date(b.stand_am, 'YYYYMMDD') as stand_am, b.gem_bfs AS bfsnr
FROM av_mopublic_meta.qualitystandard_type d, av_mopublic_meta.so_type c, 
( 
  SELECT b.tid, b.gem_bfs, b.punktelement_von, a.art, c.gueltigkeit, 
                CASE
                    WHEN a.qualitaet IS NULL THEN 0
                    ELSE a.qualitaet
                END AS qualitaet, 
                CASE 
                    WHEN c.gueltigereintrag IS NULL THEN c.datum1
		    ELSE c.gueltigereintrag
                END AS stand_am,
                b.geometrie
   FROM av_avdpool_ch.einzelobjekte_einzelobjekt a, av_avdpool_ch.einzelobjekte_punktelement b, av_avdpool_ch.einzelobjekte_eonachfuehrung c
   WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND c.gem_bfs = ? AND a.tid::text = b.punktelement_von::text AND c.tid::text = a.entstehung::text
) b, av_mopublic_meta.validity_type e
WHERE b.art::double precision = c.code AND b.qualitaet::double precision = d.code AND b.gueltigkeit::double precision = e.code;
*/

DELETE FROM av_mopublic.einzelobjekte__punktelementtext WHERE bfsnr = ?;

INSERT INTO av_mopublic.einzelobjekte__punktelementtext (tid, punktelementtext_von, typ, nummer_name, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt)
SELECT DISTINCT a.tid as tid, a.objektname_von as punktelementtext_von, e.designation_e as typ, a.name as nummer_name, b.pos as pos, b.ori as ori, b.hali as hali, b.vali as vali, a.gem_bfs as bfsnr,st_x(b.pos) AS y, st_y(b.pos) AS x, (100::double precision - b.ori) * 0.9::double precision AS rot, b.hali_txt, b.vali_txt
FROM av_avdpool_ch.einzelobjekte_objektname as a, av_avdpool_ch.einzelobjekte_objektnamepos as b, av_avdpool_ch.einzelobjekte_einzelobjekt as c, av_avdpool_ch.einzelobjekte_punktelement as d, av_mopublic_meta.text_type as e 
WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND c.gem_bfs = ? AND d.gem_bfs = ?
AND b.objektnamepos_von = a.tid
AND a.objektname_von = c.tid
AND d.punktelement_von = c.tid
AND 1 = e.code;

