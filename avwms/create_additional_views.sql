/*
CREATE OR REPLACE VIEW av_avwms.soobj AS 

SELECT ROW_NUMBER() OVER (ORDER BY ogc_fid ASC) AS row_num, * 
FROM
(
 SELECT * FROM av_mopublic.einzelobjekte__flaechenelementtext
 UNION
 SELECT * FROM av_mopublic.einzelobjekte__linienelementtext
 UNION
 SELECT * FROM av_mopublic.einzelobjekte__punktelementtext 
) as a;

ALTER TABLE av_avwms.soobj OWNER TO stefan;
GRANT ALL ON TABLE av_avwms.soobj TO stefan;
GRANT SELECT ON TABLE av_avwms.soobj TO mspublic;
*/
/*
CREATE OR REPLACE VIEW av_avwms.osnr_v AS 

SELECT ROW_NUMBER() OVER (ORDER BY ogc_fid ASC) AS row_num, * 
FROM
(

  SELECT ogc_fid, nbident, nummer, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt, art 
  FROM
  (
    SELECT ogc_fid, nbident, nummer, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt, 1 as art FROM av_mopublic.liegenschaften__selbstrecht_bergwerkpos
    UNION
    SELECT ogc_fid, nbident, nummer, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt, 0 as art FROM av_mopublic.liegenschaften__liegenschaftpos
  ) as a
) as b;

ALTER TABLE av_avwms.soobj OWNER TO stefan;
GRANT ALL ON TABLE av_avwms.soobj TO stefan;
GRANT SELECT ON TABLE av_avwms.soobj TO mspublic;
*/

CREATE OR REPLACE VIEW av_avwms.cppt AS 

SELECT *, round(ST_X(geometrie)::numeric,3) || ' / ' || round(ST_Y(geometrie)::numeric, 3) as koordinate  
FROM av_mopublic.fixpunktekategorie__lfp

ALTER TABLE av_avwms.cppt OWNER TO stefan;
GRANT ALL ON TABLE av_avwms.cppt TO stefan;
GRANT SELECT ON TABLE av_avwms.cppt TO mspublic;


