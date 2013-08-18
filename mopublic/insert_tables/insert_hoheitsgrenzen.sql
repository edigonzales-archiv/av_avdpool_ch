
DELETE FROM av_mopublic.hoheitsgrenzen__hoheitsgrenzpunkt WHERE bfsnr = ?;

INSERT INTO av_mopublic.hoheitsgrenzen__hoheitsgrenzpunkt (tid, geometrie, gueltigkeit, lagegen, lagezuv, punktzeichen, stand_am, bfsnr)
SELECT b.tid as tid, b.geometrie as geometrie, c.designation_d as gueltigkeit, b.lagegen as lagegen, d.designation_d as lagezuv, e.designation_d as punktzeichen, 
 CASE 
   WHEN a.gueltigereintrag IS NULL THEN to_date(a.datum1, 'YYYYMMDD')
   ELSE to_date(a.gueltigereintrag, 'YYYYMMDD')
 END AS stand_am, 
 b.gem_bfs as bfsnr
FROM av_avdpool_ch.gemeindegrenzen_gemnachfuehrung as a, av_avdpool_ch.gemeindegrenzen_hoheitsgrenzpunkt as b, av_mopublic_meta.validity_type as c, av_mopublic_meta.reliability_type as d, av_mopublic_meta.mark_type as e
WHERE a.gem_bfs = ? AND b.gem_bfs = ?
AND b.entstehung = a.tid
AND a.gueltigkeit = c.code
AND b.lagezuv = d.code
AND b.punktzeichen = e.code;


INSERT INTO av_mopublic.hoheitsgrenzen__gemeindegrenze (tid, "name", geometrie, stand_am, bfsnr)
SELECT b.tid as tid, a.name as "name", b.geometrie as geometrie, 
 CASE 
   WHEN c.gueltigereintrag IS NULL THEN to_date(c.datum1, 'YYYYMMDD')
   ELSE to_date(c.gueltigereintrag, 'YYYYMMDD')
 END AS stand_am, 
 b.gem_bfs as bfsnr
FROM av_avdpool_ch.gemeindegrenzen_gemeinde as a, av_avdpool_ch.gemeindegrenzen_gemeindegrenze as b, av_avdpool_ch.gemeindegrenzen_gemnachfuehrung as c
WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND c.gem_bfs = ?
AND b.gemeindegrenze_von = a.tid
AND c.tid = b.entstehung;


INSERT INTO av_mopublic.hoheitsgrenzen__projgemeindegrenze (tid, "name", geometrie, stand_am, bfsnr)
SELECT b.tid as tid, a.name as "name", b.geometrie as geometrie, 
 CASE 
   WHEN c.gueltigereintrag IS NULL THEN to_date(c.datum1, 'YYYYMMDD')
   ELSE to_date(c.gueltigereintrag, 'YYYYMMDD')
 END AS stand_am, 
 b.gem_bfs as bfsnr
FROM av_avdpool_ch.gemeindegrenzen_gemeinde as a, av_avdpool_ch.gemeindegrenzen_projgemeindegrenze as b, av_avdpool_ch.gemeindegrenzen_gemnachfuehrung as c
WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND c.gem_bfs = ?
AND b.projgemeindegrenze_von = a.tid
AND c.tid = b.entstehung;



DELETE FROM av_mopublic.hoheitsgrenzen__uebrigehoheitsgrenzen WHERE bfsnr = ?;

INSERT INTO av_mopublic.hoheitsgrenzen__uebrigehoheitsgrenzen (tid, typ, geometrie, gueltigkeit, bfsnr)
SELECT tid, type as typ, geometry as geometrie, bound_validity_type as gueltigkeit, fosnr as bfsnr
FROM (
  SELECT a.ogc_fid, a.tid, b.designation_d as type, a.geometrie as geometry, c.designation_d as bound_validity_type, a.gem_bfs as fosnr
  FROM av_avdpool_ch.bezirksgrenzen_bezirksgrenzabschnitt as a, av_mopublic_meta.other_territorial_bound_type as b, av_mopublic_meta.bound_validity_type as c
  WHERE a.gem_bfs = ? 
  AND 0 = b.code
  AND a.gueltigkeit = c.code
UNION
  SELECT a.ogc_fid, a.tid, b.designation_d as type, a.geometrie as geometry, c.designation_d as bound_validity_type, a.gem_bfs as fosnr
  FROM av_avdpool_ch.kantonsgrenzen_kantonsgrenzabschnitt as a, av_mopublic_meta.other_territorial_bound_type as b, av_mopublic_meta.bound_validity_type as c
  WHERE a.gem_bfs = ? 
  AND 1 = b.code
  AND a.gueltigkeit = c.code
UNION
  SELECT a.ogc_fid, a.tid, b.designation_d as type, a.geometrie as geometry, c.designation_d as bound_validity_type, a.gem_bfs as fosnr
  FROM av_avdpool_ch.landesgrenzen_landesgrenzabschnitt as a, av_mopublic_meta.other_territorial_bound_type as b, av_mopublic_meta.bound_validity_type as c
  WHERE a.gem_bfs = ? 
  AND 2 = b.code
  AND a.gueltigkeit = c.code
) as a;