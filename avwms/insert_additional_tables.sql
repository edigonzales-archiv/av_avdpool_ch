DELETE FROM av_avwms.osnr WHERE bfsnr = ?;

INSERT INTO av_avwms.osnr (nbident, nummer, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt, art )
SELECT nbident, nummer, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt, art 
FROM
(
  SELECT nbident, nummer, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt, 1 as art FROM av_mopublic.liegenschaften__selbstrecht_bergwerkpos
  WHERE bfsnr = ?
  UNION
  SELECT nbident, nummer, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt, 0 as art FROM av_mopublic.liegenschaften__liegenschaftpos
  WHERE bfsnr = ?
) as a;


DELETE FROM av_avwms.osnrproj WHERE bfsnr = ?;

INSERT INTO av_avwms.osnrproj (nbident, nummer, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt, art )
SELECT nbident, nummer, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt, art 
FROM
(
  SELECT nbident, nummer, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt, 1 as art FROM av_mopublic.liegenschaften__projselbstrecht_bergwerkpos
  WHERE bfsnr = ?
  UNION
  SELECT nbident, nummer, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt, 0 as art FROM av_mopublic.liegenschaften__projliegenschaftpos 
  WHERE bfsnr = ?
) as a;


DELETE FROM av_avwms.soobj WHERE bfsnr = ?;

INSERT INTO av_avwms.soobj (typ, nummer_name, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt)
SELECT typ, nummer_name, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt 
FROM
(
 SELECT typ, nummer_name, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt FROM av_mopublic.einzelobjekte__flaechenelementtext
 WHERE bfsnr = ?
 UNION
 SELECT typ, nummer_name, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt FROM av_mopublic.einzelobjekte__linienelementtext
 WHERE bfsnr = ?
 UNION
 SELECT typ, nummer_name, pos, ori, hali, vali, bfsnr, y, x, rot, hali_txt, vali_txt FROM av_mopublic.einzelobjekte__punktelementtext 
 WHERE bfsnr = ? 
) as a;
