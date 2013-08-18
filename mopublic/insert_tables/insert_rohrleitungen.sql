/*
DELETE FROM av_mopublic.rohrleitungen__linienelement WHERE bfsnr = ?;

INSERT INTO av_mopublic.rohrleitungen__linienelement (tid, betreiber, art, geometrie, gueltigkeit, stand_am, bfsnr)
SELECT b.tid as tid, a.betreiber as betreiber, d.designation_d as art, b.geometrie as geometrie, e.designation_d as gueltigkeit, 
 CASE 
   WHEN c.gueltigereintrag IS NULL THEN to_date(c.datum1, 'YYYYMMDD')
   ELSE to_date(c.gueltigereintrag, 'YYYYMMDD')
 END AS stand_am, 
 b.gem_bfs as bfsnr
FROM av_avdpool_ch.rohrleitungen_leitungsobjekt as a, av_avdpool_ch.rohrleitungen_linienelement as b, av_avdpool_ch.rohrleitungen_rlnachfuehrung as c, av_mopublic_meta.fluid_type as d, av_mopublic_meta.validity_type as e
WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND c.gem_bfs = ? 
AND b.linienelement_von = a.tid
AND a.entstehung = c.tid
AND a.art = d.code
AND c.gueltigkeit = e.code;
*/

DELETE FROM av_mopublic.rohrleitungen__linienelementnamepos WHERE bfsnr = ?;

INSERT INTO av_mopublic.rohrleitungen__linienelementnamepos (tid, linienelementnamepos_von, betreiber, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt)
SELECT DISTINCT ON (b.ogc_fid) b.tid as tid, a.tid as linienelementnamepos_von, a.betreiber as betreiber, b.pos as pos, b.ori as ori, b.hali, b.vali, b.gem_bfs as bfsnr, ST_X(pos) AS y, ST_Y(pos) AS x, (100::double precision - ori) * 0.9::double precision AS rot, hali_txt, vali_txt  
FROM
  (
    SELECT DISTINCT b.linienelement_von, b.tid, a.betreiber, a.gem_bfs
    FROM  av_avdpool_ch.rohrleitungen_leitungsobjekt as a, av_avdpool_ch.rohrleitungen_linienelement as b
    WHERE a.gem_bfs = ? AND b.gem_bfs = ? 
    AND a.tid = b.linienelement_von
  ) AS a, av_avdpool_ch.rohrleitungen_leitungsobjektpos as b
WHERE a.gem_bfs = ? AND b.gem_bfs = ?
AND a.linienelement_von = b.leitungsobjektpos_von;