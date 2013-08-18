-- DROP TABLE av_mopublic.metadaten__metadaten;
INSERT INTO av_mopublic.metadaten__metadaten (generiert_von, generiert_von_basismodell, generiert_datum, weitere_metadaten_information)
SELECT 'Amt für Geoinformation' as generiert_von, 'DM01AVCH24D' as generiert_von_basismodell, current_timestamp as generiert_datum, 'http://www.geometa.ch' as weitere_metadaten_information 



