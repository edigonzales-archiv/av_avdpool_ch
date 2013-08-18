/*
DELETE FROM av_mopublic.liegenschaften__grenzpunkt WHERE bfsnr = ?;

INSERT INTO av_mopublic.liegenschaften__grenzpunkt (tid, geometrie, gueltigkeit, lagegen, lagezuv, punktzeichen, stand_am, bfsnr)
SELECT b.tid as tid, b.geometrie as geometrie, c.designation_d as gueltigkeit, b.lagegen as lagegen, d.designation_d as lagezuv, e.designation_d as punktzeichen,
 CASE 
   WHEN a.gueltigereintrag IS NULL THEN to_date(a.datum1, 'YYYYMMDD')
   ELSE to_date(a.gueltigereintrag, 'YYYYMMDD')
 END AS stand_am, 
 b.gem_bfs as bfsnr
FROM av_avdpool_ch.liegenschaften_lsnachfuehrung as a, av_avdpool_ch.liegenschaften_grenzpunkt as b, av_mopublic_meta.validity_type as c, av_mopublic_meta.reliability_type as d, av_mopublic_meta.mark_type as e
WHERE a.gem_bfs = ? AND b.gem_bfs = ?
AND b.entstehung = a.tid
AND a.gueltigkeit = c.code
AND b.lagezuv = d.code
AND b.punktzeichen = e.code;


DELETE FROM av_mopublic.liegenschaften__liegenschaft WHERE bfsnr = ?;

INSERT INTO av_mopublic.liegenschaften__liegenschaft (tid, nbident, nummer, egris_egrid, vollstaendigkeit, flaechenmass, geometrie, stand_am, bfsnr)
SELECT a.tid as tid, a.nbident as nbident, a.nummer as nummer, a.egris_egrid as egris_egrid, c.designation_d as vollstaendigkeit, b.flaechenmass as flaechenmass, b.geometrie as geometrie, 
 CASE 
   WHEN d.gueltigereintrag IS NULL THEN to_date(d.datum1, 'YYYYMMDD')
   ELSE to_date(d.gueltigereintrag, 'YYYYMMDD')
 END AS stand_am, 
 b.gem_bfs as bfsnr
FROM av_avdpool_ch.liegenschaften_lsnachfuehrung as d, av_avdpool_ch.liegenschaften_grundstueck as a, av_avdpool_ch.liegenschaften_liegenschaft as b, av_mopublic_meta.completeness_type as c
WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND d.gem_bfs = ? 
AND b.liegenschaft_von = a.tid
AND a.vollstaendigkeit = c.code
AND d.tid = a.entstehung;


DELETE FROM av_mopublic.liegenschaften__liegenschaftpos WHERE bfsnr = ?;

INSERT INTO av_mopublic.liegenschaften__liegenschaftpos(liegenschaftpos_von, nbident, nummer, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt)
SELECT grundstueckpos_von as liegenschaftpos_von, a.nbident, a.nummer, b.pos,
        CASE
            WHEN b.ori IS NULL THEN 100::double precision
            ELSE b.ori
        END AS ori, 
        b.hali, b.vali, b.gem_bfs AS bfsnr, ST_X(b.pos) AS y, ST_Y(b.pos) AS x, 
        CASE
            WHEN b.ori IS NULL THEN 0::double precision
            ELSE (100::double precision - b.ori) * 0.9::double precision
        END AS rot, 
        b.hali_txt, b.vali_txt
FROM av_avdpool_ch.liegenschaften_grundstueck a, av_avdpool_ch.liegenschaften_grundstueckpos b
WHERE a.gem_bfs = ? 
AND b.gem_bfs = ?
AND a.art = 0
AND a.tid::text = b.grundstueckpos_von::text;


DELETE FROM av_mopublic.liegenschaften__selbstrecht_bergwerk WHERE bfsnr = ?;

INSERT INTO av_mopublic.liegenschaften__selbstrecht_bergwerk (tid, nbident, nummer, egris_egrid, vollstaendigkeit, grundstuecksart, flaechenmass, geometrie, stand_am, bfsnr)
SELECT a.tid as tid, a.nbident as nbident, a.nummer as nummer, a.egris_egrid as egris_egrid, c.designation_d as vollstaendigkeit, e.designation_d as grundstuecksart, b.flaechenmass as flaechenmass, b.geometrie as geometrie, 
 CASE 
   WHEN d.gueltigereintrag IS NULL THEN to_date(d.datum1, 'YYYYMMDD')
   ELSE to_date(d.gueltigereintrag, 'YYYYMMDD')
 END AS stand_am, 
 b.gem_bfs as bfsnr
FROM av_avdpool_ch.liegenschaften_lsnachfuehrung as d, av_avdpool_ch.liegenschaften_grundstueck as a, av_avdpool_ch.liegenschaften_selbstrecht as b, av_mopublic_meta.completeness_type as c,av_mopublic_meta.realestate_type as e
WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND d.gem_bfs = ? 
AND b.selbstrecht_von = a.tid
AND a.vollstaendigkeit = c.code
AND d.tid = a.entstehung
AND (a.art - 1) = e.code
   UNION
SELECT a.tid as tid, a.nbident as nbident, a.nummer as nummer, a.egris_egrid as egris_egrid, c.designation_d as vollstaendigkeit, e.designation_d as grundstuecksart, b.flaechenmass as flaechenmass, b.geometrie as geometrie, 
 CASE 
   WHEN d.gueltigereintrag IS NULL THEN to_date(d.datum1, 'YYYYMMDD')
   ELSE to_date(d.gueltigereintrag, 'YYYYMMDD')
 END AS stand_am, 
 b.gem_bfs as bfsnr
FROM av_avdpool_ch.liegenschaften_lsnachfuehrung as d, av_avdpool_ch.liegenschaften_grundstueck as a, av_avdpool_ch.liegenschaften_bergwerk as b, av_mopublic_meta.completeness_type as c,av_mopublic_meta.realestate_type as e
WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND d.gem_bfs = ? 
AND b.bergwerk_von = a.tid
AND a.vollstaendigkeit = c.code
AND d.tid = a.entstehung
AND (a.art - 1) = e.code;



DELETE FROM av_mopublic.liegenschaften__selbstrecht_bergwerkpos WHERE bfsnr = ?;

INSERT INTO av_mopublic.liegenschaften__selbstrecht_bergwerkpos(selbstrecht_bergwerkpos_von, nbident, nummer, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt)
SELECT grundstueckpos_von as selbstrecht_bergwerkpos_von, a.nbident, a.nummer, b.pos,
        CASE
            WHEN b.ori IS NULL THEN 100::double precision
            ELSE b.ori
        END AS ori, 
        b.hali, b.vali, b.gem_bfs AS bfsnr, ST_X(b.pos) AS y, ST_Y(b.pos) AS x, 
        CASE
            WHEN b.ori IS NULL THEN 0::double precision
            ELSE (100::double precision - b.ori) * 0.9::double precision
        END AS rot, 
        b.hali_txt, b.vali_txt
FROM av_avdpool_ch.liegenschaften_grundstueck a, av_avdpool_ch.liegenschaften_grundstueckpos b
WHERE a.gem_bfs = ? 
AND b.gem_bfs = ?
AND a.art > 0
AND a.tid::text = b.grundstueckpos_von::text;


DELETE FROM av_mopublic.liegenschaften__projliegenschaft WHERE bfsnr = ?;

INSERT INTO av_mopublic.liegenschaften__projliegenschaft (tid, nbident, nummer, egris_egrid, vollstaendigkeit, flaechenmass, geometrie, stand_am, bfsnr)
SELECT a.tid as tid, a.nbident as nbident, a.nummer as nummer, a.egris_egrid as egris_egrid, c.designation_d as vollstaendigkeit, b.flaechenmass as flaechenmass, b.geometrie as geometrie, 
 CASE 
   WHEN d.gueltigereintrag IS NULL THEN to_date(d.datum1, 'YYYYMMDD')
   ELSE to_date(d.gueltigereintrag, 'YYYYMMDD')
 END AS stand_am, 
 b.gem_bfs as bfsnr
FROM av_avdpool_ch.liegenschaften_lsnachfuehrung as d, av_avdpool_ch.liegenschaften_projgrundstueck as a, av_avdpool_ch.liegenschaften_projliegenschaft as b, av_mopublic_meta.completeness_type as c
WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND d.gem_bfs = ? 
AND b.projliegenschaft_von = a.tid
AND a.vollstaendigkeit = c.code
AND d.tid = a.entstehung;


DELETE FROM av_mopublic.liegenschaften__projliegenschaftpos WHERE bfsnr = ?;

INSERT INTO av_mopublic.liegenschaften__projliegenschaftpos(projliegenschaftpos_von, nbident, nummer, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt)
SELECT projgrundstueckpos_von as projliegenschaftpos_von, a.nbident, a.nummer, b.pos,
        CASE
            WHEN b.ori IS NULL THEN 100::double precision
            ELSE b.ori
        END AS ori, 
        b.hali, b.vali, b.gem_bfs AS bfsnr, ST_X(b.pos) AS y, ST_Y(b.pos) AS x, 
        CASE
            WHEN b.ori IS NULL THEN 0::double precision
            ELSE (100::double precision - b.ori) * 0.9::double precision
        END AS rot, 
        b.hali_txt, b.vali_txt
FROM av_avdpool_ch.liegenschaften_projgrundstueck a, av_avdpool_ch.liegenschaften_projgrundstueckpos b
WHERE a.gem_bfs = ? 
AND b.gem_bfs = ?
AND a.art = 0
AND a.tid::text = b.projgrundstueckpos_von::text;


DELETE FROM av_mopublic.liegenschaften__projselbstrecht_bergwerk WHERE bfsnr = ?;

INSERT INTO av_mopublic.liegenschaften__projselbstrecht_bergwerk (tid, nbident, nummer, egris_egrid, vollstaendigkeit, grundstuecksart, flaechenmass, geometrie, stand_am, bfsnr)
SELECT a.tid as tid, a.nbident as nbident, a.nummer as nummer, a.egris_egrid as egris_egrid, c.designation_d as vollstaendigkeit, e.designation_d as grundstuecksart, b.flaechenmass as flaechenmass, b.geometrie as geometrie, 
 CASE 
   WHEN d.gueltigereintrag IS NULL THEN to_date(d.datum1, 'YYYYMMDD')
   ELSE to_date(d.gueltigereintrag, 'YYYYMMDD')
 END AS stand_am, 
 b.gem_bfs as bfsnr
FROM av_avdpool_ch.liegenschaften_lsnachfuehrung as d, av_avdpool_ch.liegenschaften_projgrundstueck as a, av_avdpool_ch.liegenschaften_projselbstrecht as b, av_mopublic_meta.completeness_type as c,av_mopublic_meta.realestate_type as e
WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND d.gem_bfs = ? 
AND b.projselbstrecht_von = a.tid
AND a.vollstaendigkeit = c.code
AND d.tid = a.entstehung
AND (a.art - 1) = e.code
   UNION
SELECT a.tid as tid, a.nbident as nbident, a.nummer as nummer, a.egris_egrid as egris_egrid, c.designation_d as vollstaendigkeit, e.designation_d as grundstuecksart, b.flaechenmass as flaechenmass, b.geometrie as geometrie, 
 CASE 
   WHEN d.gueltigereintrag IS NULL THEN to_date(d.datum1, 'YYYYMMDD')
   ELSE to_date(d.gueltigereintrag, 'YYYYMMDD')
 END AS stand_am, 
 b.gem_bfs as bfsnr
FROM av_avdpool_ch.liegenschaften_lsnachfuehrung as d, av_avdpool_ch.liegenschaften_projgrundstueck as a, av_avdpool_ch.liegenschaften_projbergwerk as b, av_mopublic_meta.completeness_type as c,av_mopublic_meta.realestate_type as e
WHERE a.gem_bfs = ? AND b.gem_bfs = ? AND d.gem_bfs = ? 
AND b.projbergwerk_von = a.tid
AND a.vollstaendigkeit = c.code
AND d.tid = a.entstehung
AND (a.art - 1) = e.code;
*/


DELETE FROM av_mopublic.liegenschaften__projselbstrecht_bergwerkpos WHERE bfsnr = ?;

INSERT INTO av_mopublic.liegenschaften__projselbstrecht_bergwerkpos(selbstrecht_bergwerkpos_von, nbident, nummer, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt)
SELECT projgrundstueckpos_von as projselbstrecht_bergwerkpos_von, a.nbident, a.nummer, b.pos,
        CASE
            WHEN b.ori IS NULL THEN 100::double precision
            ELSE b.ori
        END AS ori, 
        b.hali, b.vali, b.gem_bfs AS bfsnr, ST_X(b.pos) AS y, ST_Y(b.pos) AS x, 
        CASE
            WHEN b.ori IS NULL THEN 0::double precision
            ELSE (100::double precision - b.ori) * 0.9::double precision
        END AS rot, 
        b.hali_txt, b.vali_txt
FROM av_avdpool_ch.liegenschaften_projgrundstueck a, av_avdpool_ch.liegenschaften_projgrundstueckpos b
WHERE a.gem_bfs = ? 
AND b.gem_bfs = ?
AND a.art > 0
AND a.tid::text = b.projgrundstueckpos_von::text;



DELETE FROM av_mopublic.fixpunktekategorie__lfp




