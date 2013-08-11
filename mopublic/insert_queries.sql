/*
INSERT INTO av_mopublic.bodenbedeckung__boflaeche (geometrie, qualitaet, art, gwr_egid, stand_am, bfsnr) 

SELECT b.geometrie as geometrie, d.designation_d as qualitaet, c.designation_d AS art, NULL::integer AS gwr_egid, to_date(b.stand_am, 'YYYYMMDD') as stand_am, b.gem_bfs AS bfsnr
FROM av_mopublic_meta.qualitystandard_type d, av_mopublic_meta.lcs_type c,
( 
  SELECT a.gem_bfs, a.art,
                CASE 
                    WHEN b.gueltigereintrag IS NULL THEN b.datum1
		    ELSE b.gueltigereintrag
                END AS stand_am,
                CASE
                    WHEN qualitaet IS NULL THEN 0
                    ELSE qualitaet
                END AS qualitaet, geometrie
  FROM av_avdpool_ch.bodenbedeckung_boflaeche a, av_avdpool_ch.bodenbedeckung_bbnachfuehrung b
  WHERE a.gem_bfs = 2549
  AND b.gem_bfs = 2549
  AND a.entstehung = b.tid
 ) b
 WHERE b.art::double precision = c.code AND b.qualitaet::double precision = d.code;
 */
 
/*
INSERT INTO av_mopublic.fixpunktekategorie__lfp(kategorie, nbident, nummer, geometrie, lagegen, hoehegeom, hoehegen, punktzeichen, stand_am, bfsnr)
SELECT b.designation_d as kategorie, nbident, nummer, geometrie, lagegen, hoehegeom, hoehegen, punktzeichen, to_date(a.stand_am, 'YYYYMMDD') as stand_am, bfsnr
FROM
(
  SELECT 0 as kategorie, a.nbident, nummer, geometrie, lagegen, hoehegeom, hoehegen, b.designation_d as punktzeichen, 
    CASE 
      WHEN c.gueltigereintrag IS NULL THEN c.datum1
      ELSE c.gueltigereintrag
    END AS stand_am,
  a.gem_bfs as bfsnr
  FROM av_avdpool_ch.fixpunktekategorie1_lfp1 as a, av_mopublic_meta.mark_type as b, av_avdpool_ch.fixpunktekategorie1_lfp1nachfuehrung as c
  WHERE a.gem_bfs = 1631 
  AND c.gem_bfs = 1631 
  AND a.entstehung = c.tid
  AND a.punktzeichen = b.code
UNION
  SELECT 1 as kategorie, a.nbident, nummer, geometrie, lagegen, hoehegeom, hoehegen, b.designation_d as punktzeichen, 
    CASE 
      WHEN c.gueltigereintrag IS NULL THEN c.datum1
      ELSE c.gueltigereintrag
    END AS stand_am,
  a.gem_bfs as bfsnr
  FROM av_avdpool_ch.fixpunktekategorie1_hfp1 as a, av_mopublic_meta.mark_type as b, av_avdpool_ch.fixpunktekategorie1_hfp1nachfuehrung as c
  WHERE a.gem_bfs = 1631 
  AND c.gem_bfs = 1631 
  AND a.entstehung = c.tid
  AND 8 = b.code
UNION
  SELECT 2 as kategorie, a.nbident, nummer, geometrie, lagegen, hoehegeom, hoehegen, b.designation_d as punktzeichen, 
    CASE 
      WHEN c.gueltigereintrag IS NULL THEN c.datum1
      ELSE c.gueltigereintrag
    END AS stand_am,
  a.gem_bfs as bfsnr
  FROM av_avdpool_ch.fixpunktekategorie2_lfp2 as a, av_mopublic_meta.mark_type as b, av_avdpool_ch.fixpunktekategorie2_lfp2nachfuehrung as c
  WHERE a.gem_bfs = 1631 
  AND c.gem_bfs = 1631 
  AND a.entstehung = c.tid
  AND a.punktzeichen = b.code
UNION
  SELECT 3 as kategorie, a.nbident, nummer, geometrie, lagegen, hoehegeom, hoehegen, b.designation_d as punktzeichen, 
    CASE 
      WHEN c.gueltigereintrag IS NULL THEN c.datum1
      ELSE c.gueltigereintrag
    END AS stand_am,
  a.gem_bfs as bfsnr
  FROM av_avdpool_ch.fixpunktekategorie2_hfp2 as a, av_mopublic_meta.mark_type as b, av_avdpool_ch.fixpunktekategorie2_hfp2nachfuehrung as c
  WHERE a.gem_bfs = 1631
  AND c.gem_bfs = 1631 
  AND a.entstehung = c.tid
  AND 8 = b.code
UNION
  SELECT 4 as kategorie, a.nbident, nummer, geometrie, lagegen, hoehegeom, hoehegen, b.designation_d as punktzeichen, 
    CASE 
      WHEN c.gueltigereintrag IS NULL THEN c.datum1
      ELSE c.gueltigereintrag
    END AS stand_am,
  a.gem_bfs as bfsnr
  FROM av_avdpool_ch.fixpunktekategorie3_lfp3 as a, av_mopublic_meta.mark_type as b, av_avdpool_ch.fixpunktekategorie3_lfp3nachfuehrung as c
  WHERE a.gem_bfs = 1631 
  AND c.gem_bfs = 1631 
  AND a.entstehung = c.tid
  AND a.punktzeichen = b.code
UNION
  SELECT 5 as kategorie, a.nbident, nummer, geometrie, lagegen, hoehegeom, hoehegen, b.designation_d as punktzeichen, 
    CASE 
      WHEN c.gueltigereintrag IS NULL THEN c.datum1
      ELSE c.gueltigereintrag
    END AS stand_am,
  a.gem_bfs as bfsnr
  FROM av_avdpool_ch.fixpunktekategorie3_hfp3 as a, av_mopublic_meta.mark_type as b, av_avdpool_ch.fixpunktekategorie3_hfp3nachfuehrung as c
  WHERE a.gem_bfs = 1631
  AND c.gem_bfs = 1631 
  AND a.entstehung = c.tid
  AND 8 = b.code
) as a, av_mopublic_meta.control_point_category as b 
WHERE a.kategorie = b.code;
*/

/*
INSERT INTO av_mopublic.liegenschaften__liegenschaft(nbident, nummer, egris_egrid, vollstaendigkeit, flaechenmass, geometrie, stand_am, bfsnr)
SELECT nbident, nummer, egris_egrid, vollstaendigkeit, flaechenmass, geometrie, to_date(stand_am, 'YYYYMMDD') as stand_am, bfsnr
FROM
(
SELECT a.nbident, a.nummer, a.egris_egrid, c.designation_d AS vollstaendigkeit, b.flaechenmass, b.geometrie, 
  CASE 
    WHEN d.gueltigereintrag IS NULL THEN d.datum1
    ELSE d.gueltigereintrag
  END AS stand_am,
b.gem_bfs AS bfsnr
FROM av_avdpool_ch.liegenschaften_grundstueck a, av_avdpool_ch.liegenschaften_liegenschaft b, av_mopublic_meta.completeness_type c, av_avdpool_ch.liegenschaften_lsnachfuehrung d
WHERE a.gem_bfs = 2549 
AND b.gem_bfs = 2549 
AND d.gem_bfs = 2549
AND a.entstehung = d.tid
AND b.liegenschaft_von::text = a.tid::text AND a.vollstaendigkeit::double precision = c.code
) as e
*/

INSERT INTO av_mopublic.liegenschaften__liegenschaftpos(liegenschaftpos_von, nbident, nummer, art, pos, ori, rot, hali, hali_txt, vali, vali_txt, y, x, bfsnr)
SELECT NULL::text as liegenschaftpos_von, a.nbident, a.nummer, a.art_txt as art, b.pos,
        CASE
            WHEN b.ori IS NULL THEN 100::double precision
            ELSE b.ori
        END AS ori, 
        CASE
            WHEN b.ori IS NULL THEN 0::double precision
            ELSE (100::double precision - b.ori) * 0.9::double precision
        END AS rot, b.hali, b.hali_txt, b.vali, b.vali_txt, ST_X(b.pos) AS y, ST_Y(b.pos) AS x, b.gem_bfs AS bfsnr
FROM av_avdpool_ch.liegenschaften_grundstueck a, av_avdpool_ch.liegenschaften_grundstueckpos b
WHERE a.gem_bfs = 2549 
AND b.gem_bfs = 2549 
AND a.tid::text = b.grundstueckpos_von::text;
