/*
--BoFlaeche
DELETE FROM av_mopublic.bodenbedeckung__boflaeche WHERE bfsnr = ?;

INSERT INTO av_mopublic.bodenbedeckung__boflaeche (tid, geometrie, qualitaet, art, gwr_egid, stand_am, bfsnr) 
SELECT b.tid, b.geometrie as geometrie, d.designation_d as qualitaet, c.designation_d AS art, NULL::integer AS gwr_egid, to_date(b.stand_am, 'YYYYMMDD') as stand_am, b.gem_bfs AS bfsnr
FROM av_mopublic_meta.qualitystandard_type d, av_mopublic_meta.lcs_type c,
( 
  SELECT a.tid, a.gem_bfs, a.art,
                CASE 
                    WHEN b.gueltigereintrag IS NULL THEN b.datum1
		    ELSE b.gueltigereintrag
                END AS stand_am,
                CASE
                    WHEN qualitaet IS NULL THEN 0
                    ELSE qualitaet
                END AS qualitaet, geometrie
  FROM av_avdpool_ch.bodenbedeckung_boflaeche a, av_avdpool_ch.bodenbedeckung_bbnachfuehrung b
  WHERE a.gem_bfs = ?
  AND b.gem_bfs = ?
  AND a.entstehung = b.tid
 ) b
 WHERE b.art::double precision = c.code AND b.qualitaet::double precision = d.code;


--BBText
DELETE FROM av_mopublic.bodenbedeckung__bbtext WHERE bfsnr = ?;

SELECT a.tid, a.objektname_von as bbtext_von, c.designation_e AS typ, a.name AS nummer_name, b.pos, b.ori, b.hali, b.vali, a.gem_bfs AS bfsnr, ST_X(b.pos) AS y, ST_Y(b.pos) AS x, (100::double precision - b.ori) * 0.9::double precision AS rot, b.hali_txt, b.vali_txt
FROM av_avdpool_ch.bodenbedeckung_objektname a, av_avdpool_ch.bodenbedeckung_objektnamepos b, av_mopublic_meta.text_type c
WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND a.tid::text = b.objektnamepos_von::text AND 1::double precision = c.code;


--ProjBoFlaeche
DELETE FROM av_mopublic.bodenbedeckung__projboflaeche WHERE bfsnr = ?;

INSERT INTO av_mopublic.bodenbedeckung__projboflaeche (tid, geometrie, qualitaet, art, gwr_egid, stand_am, bfsnr) 
SELECT b.tid, b.geometrie as geometrie, d.designation_d as qualitaet, c.designation_d AS art, NULL::integer AS gwr_egid, to_date(b.stand_am, 'YYYYMMDD') as stand_am, b.gem_bfs AS bfsnr
FROM av_mopublic_meta.qualitystandard_type d, av_mopublic_meta.lcs_type c,
( 
  SELECT a.tid, a.gem_bfs, a.art,
                CASE 
                    WHEN b.gueltigereintrag IS NULL THEN b.datum1
		    ELSE b.gueltigereintrag
                END AS stand_am,
                CASE
                    WHEN qualitaet IS NULL THEN 0
                    ELSE qualitaet
                END AS qualitaet, geometrie
  FROM av_avdpool_ch.bodenbedeckung_projboflaeche a, av_avdpool_ch.bodenbedeckung_bbnachfuehrung b
  WHERE a.gem_bfs = ?
  AND b.gem_bfs = ?
  AND a.entstehung = b.tid
 ) b
 WHERE b.art::double precision = c.code AND b.qualitaet::double precision = d.code;
*/

--ProjBBText
DELETE FROM av_mopublic.bodenbedeckung__projbbtext WHERE bfsnr = ?;

SELECT a.tid, a.projobjektname_von as bbtext_von, c.designation_e AS typ, a.name AS nummer_name, b.pos, b.ori, b.hali, b.vali, a.gem_bfs AS bfsnr, ST_X(b.pos) AS y, ST_Y(b.pos) AS x, (100::double precision - b.ori) * 0.9::double precision AS rot, b.hali_txt, b.vali_txt
FROM av_avdpool_ch.bodenbedeckung_projobjektname a, av_avdpool_ch.bodenbedeckung_projobjektnamepos b, av_mopublic_meta.text_type c
WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND a.tid::text = b.projobjektnamepos_von::text AND 1::double precision = c.code;
