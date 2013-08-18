/*
DELETE FROM av_mopublic.gebaeudeadressen__lokalisationsname WHERE bfsnr = ?;

INSERT INTO av_mopublic.gebaeudeadressen__lokalisationsname (tid, geometrie, lokalisationsname, istoffiziellebezeichnung, stand_am, bfsnr)
SELECT DISTINCT ON (a.ogc_fid) a.tid, NULL::geometry as geometrie, b.text as lokalisationsname, c.designation_d as istoffiziellebezeichnung, a.stand_am, a.gem_bfs as bfsnr
FROM 
(
  SELECT a.ogc_fid, a.tid, 
    CASE 
      WHEN a.istoffiziellebezeichnung = 0 THEN 1 
      ELSE 0 
    END as istoffiziellebezeichnung, 
    to_date(b.gueltigereintrag, 'YYYYMMDD') stand_am, 
    a.gem_bfs 
  FROM av_avdpool_ch.gebaeudeadressen_lokalisation as a, av_avdpool_ch.gebaeudeadressen_gebnachfuehrung as b 
  WHERE a.gem_bfs = ? AND b.gem_bfs = ?
  AND b.tid = a.entstehung
) as a, 
av_avdpool_ch.gebaeudeadressen_lokalisationsname as b, 
av_mopublic_meta.boolean_type as c
WHERE a.gem_bfs = ? AND b.gem_bfs = ? 
AND b.benannte = a.tid
AND a.istoffiziellebezeichnung = c.code;

DELETE FROM av_mopublic.gebaeudeadressen__lokalisationsnamepos WHERE bfsnr = ?;

INSERT INTO av_mopublic.gebaeudeadressen__lokalisationsnamepos (tid, lokalisationsnamepos_von, lokalisationsname, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt)
SELECT b.tid as tid, a.tid as lokalisationsnamepos_von, a.text as lokalisationsname, b.pos as pos, 
  CASE WHEN b.ori IS NULL THEN 100 ELSE b.ori END as ori, 
  b.hali, b.vali, a.gem_bfs as bfsnr, 
  ST_X(b.pos) AS y, ST_Y(b.pos) AS x, 
  CASE WHEN b.ori IS NULL THEN 0 ELSE (100::double precision - ori) * 0.9::double precision END as rot, 
  b.hali_txt, b.vali_txt  
FROM av_avdpool_ch.gebaeudeadressen_lokalisationsname as a, av_avdpool_ch.gebaeudeadressen_lokalisationsnamepos as b
WHERE a.gem_bfs = ? AND b.gem_bfs = ?
AND b.lokalisationsnamepos_von = a.tid;


DELETE FROM av_mopublic.gebaeudeadressen__gebaeudeeingang WHERE bfsnr = ?;

INSERT INTO av_mopublic.gebaeudeadressen__gebaeudeeingang (tid, gebaeudeeingang_von, gueltigkeit, lage, istoffiziellebezeichnung, hoehenlage, hausnummer, gebaeudename, gwr_egid, gwr_edid, lokalisationsname, plz, zusatzziffern, ortschaftsname, stand_am, bfsnr) 
SELECT c.tid as tid, a.tid as gebaeudeeingang_von, d.designation_d as gueltigkeit, 
       c.lage as lage, e.designation_d as istoffiziellebezeichnung, 
       c.hoehenlage as hoehenlage, c.hausnummer as hausnummer, NULL::varchar as gebaeudename,
       c.gwr_egid::INTEGER as gwr_egid, c.gwr_edid as gwr_edid, 
       b.text as lokalisationsname, NULL::INTEGER as plz, NULL::INTEGER as zusatzziffern, NULL::VARCHAR as ortschaftsname,
       to_date(f.gueltigereintrag, 'YYYYMMDD')as stand_am,
       a.gem_bfs as bfsnr
FROM av_avdpool_ch.gebaeudeadressen_lokalisation as a,
  av_avdpool_ch.gebaeudeadressen_lokalisationsname as b, 
  (
    SELECT ogc_fid, tid, entstehung, gebaeudeeingang_von, CASE WHEN status IS NULL THEN 1 WHEN status = 0 THEN 0 ELSE 1 END as status, inaenderung, attributeprovisorisch, CASE WHEN istoffiziellebezeichnung = 0 THEN 1 ELSE 0 END as istoffiziellebezeichnung, lage, hoehenlage, hausnummer, im_gebaeude, gwr_egid, gwr_edid, gem_bfs, los, lieferdatum 
    FROM av_avdpool_ch.gebaeudeadressen_gebaeudeeingang
  ) as c,
  av_mopublic_meta.validity_type as d,
  av_mopublic_meta.boolean_type as e,
  av_avdpool_ch.gebaeudeadressen_gebnachfuehrung as f
WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND c.gem_bfs = ? AND f.gem_bfs = ?
AND c.gebaeudeeingang_von = a.tid
AND b.benannte = a.tid
AND c.status = d.code
AND c.istoffiziellebezeichnung = e.code
AND c.entstehung = f.tid;
*/

DELETE FROM av_mopublic.gebaeudeadressen__hausnummerpos WHERE bfsnr = ?;

INSERT INTO av_mopublic.gebaeudeadressen__hausnummerpos (tid, hausnummerpos_von, typ, nummer_name, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt)
SELECT b.tid, a.tid as hausnummerpos_von, c.designation_d as typ, a.hausnummer as nummer_name, b.pos as pos, CASE WHEN b.ori IS NULL THEN 100 ELSE b.ori END as ori, b.hali, b.vali, b.gem_bfs as bfsnr,
  ST_X(b.pos) AS y, ST_Y(b.pos) AS x, 
  CASE WHEN b.ori IS NULL THEN 0 ELSE (100::double precision - ori) * 0.9::double precision END as rot, 
  b.hali_txt, b.vali_txt  
FROM av_avdpool_ch.gebaeudeadressen_gebaeudeeingang as a, av_avdpool_ch.gebaeudeadressen_hausnummerpos as b, av_mopublic_meta.text_type as c
WHERE a.gem_bfs = ? AND b.gem_bfs = ?
AND b.hausnummerpos_von = a.tid
AND 0 = c.code;


limit 10

