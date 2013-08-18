/*
DELETE FROM av_mopublic.nomenklatur__namen WHERE bfsnr = ?;

INSERT INTO av_mopublic.nomenklatur__namen (tid, kategorie, "name", geometrie, typ, stand_am, bfsnr)
SELECT tid, category as kategorie, name as "name", geometry as geometrie, type as typ, to_date(stand_am, 'YYYYMMDD') as stand_am, fosnr as bfsnr 
FROM 
(
  SELECT a.ogc_fid, a.tid, b.designation_d as category, name, geometrie as geometry, NULL::varchar as type, 
                 CASE 
                    WHEN c.gueltigereintrag IS NULL THEN c.datum1
		    ELSE c.gueltigereintrag
                END AS stand_am,
                a.gem_bfs as fosnr
  FROM av_avdpool_ch.nomenklatur_flurname as a, av_mopublic_meta.local_names_type as b, av_avdpool_ch.nomenklatur_nknachfuehrung as c
  WHERE a.gem_bfs = ? AND c.gem_bfs = ?
  AND c.tid = a.entstehung
  AND 0 = b.code
  
UNION
  SELECT a.ogc_fid, a.tid, b.designation_d as category, name, geometrie as geometry, NULL::varchar as type, 
                 CASE 
                    WHEN c.gueltigereintrag IS NULL THEN c.datum1
		    ELSE c.gueltigereintrag
                END AS stand_am,
                a.gem_bfs as fosnr
  FROM av_avdpool_ch.nomenklatur_ortsname as a, av_mopublic_meta.local_names_type as b, av_avdpool_ch.nomenklatur_nknachfuehrung as c
  WHERE a.gem_bfs = ? AND c.gem_bfs = ?
  AND c.tid = a.entstehung
  AND 1 = b.code
) as a;
*/

DELETE FROM av_mopublic.nomenklatur__namenpos WHERE bfsnr = ?;

INSERT INTO av_mopublic.nomenklatur__namenpos (tid, namenpos_von, kategorie, "name", pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt)
SELECT tid, posname_of as namenpos_von, category as kategorie, name as "name", pos as pos, ori as ori, hali, vali, fosnr as bfsnr, ST_X(pos) AS y, ST_Y(pos) AS x, (100::double precision - ori) * 0.9::double precision AS rot, hali_txt, vali_txt  
FROM (
  SELECT a.ogc_fid, a.tid, a.flurnamepos_von as posname_of, c.designation_d as category, b.name, a.pos, CASE WHEN a.ori IS NULL THEN 100 ELSE a.ori END as ori, a.hali, a.hali_txt, a.vali, a.vali_txt, a.gem_bfs as fosnr
  FROM av_avdpool_ch.nomenklatur_flurnamepos as a, av_avdpool_ch.nomenklatur_flurname as b, av_mopublic_meta.local_names_type as c
  WHERE a.gem_bfs = ? AND b.gem_bfs = ? 
  AND b.tid = a.flurnamepos_von
  AND 0 = c.code 
UNION
  SELECT a.ogc_fid, a.tid, a.ortsnamepos_von as posname_of, c.designation_d as category, b.name, a.pos, CASE WHEN a.ori IS NULL THEN 100 ELSE a.ori END as ori, a.hali, a.hali_txt, a.vali, a.vali_txt, a.gem_bfs as fosnr
  FROM av_avdpool_ch.nomenklatur_ortsnamepos as a, av_avdpool_ch.nomenklatur_ortsname as b, av_mopublic_meta.local_names_type as c
  WHERE a.gem_bfs = ? AND b.gem_bfs = ? 
  AND b.tid = a.ortsnamepos_von
  AND 1 = c.code   
UNION
  SELECT a.ogc_fid, a.tid, NULL::varchar as posname_of, c.designation_d as category, b.name, a.pos, CASE WHEN a.ori IS NULL THEN 100 ELSE a.ori END as ori, a.hali, a.hali_txt, a.vali, a.vali_txt, a.gem_bfs as fosnr
  FROM av_avdpool_ch.nomenklatur_gelaendenamepos as a, av_avdpool_ch.nomenklatur_gelaendename as b, av_mopublic_meta.local_names_type as c
  WHERE a.gem_bfs = ? AND b.gem_bfs = ? 
  AND b.tid = a.gelaendenamepos_von
  AND 2 = c.code 
) as a;