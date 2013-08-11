-- Mit Hilfe von ili2pg 2.0.3 beta


CREATE SCHEMA av_mopublic
  AUTHORIZATION stefan;
GRANT ALL ON SCHEMA av_mopublic TO stefan;
GRANT USAGE ON SCHEMA av_mopublic TO mspublic;


-- DROP TABLE av_mopublic.control_points__control_point;
CREATE TABLE av_mopublic.control_points__control_point  
(
  ogc_fid serial PRIMARY KEY,
  category integer NOT NULL,
  identND varchar(12) NOT NULL,
  "number" varchar(12) NOT NULL,
  "geometry" geometry(POINT, 21781),
  plan_accuracy decimal(5,1) NULL,
  geom_alt decimal(8,3) NULL,
  alt_accuracy decimal(5,1) NULL,
  mark integer NOT NULL,
  state_of date NULL,
  fosnr integer NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.control_points__control_point OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.control_points__control_point TO stefan;
GRANT SELECT ON TABLE av_mopublic.control_points__control_point TO mspublic;

-- DROP TABLE av_mopublic.land_cover__lcsurface;
CREATE TABLE av_mopublic.land_cover__lcsurface (
  ogc_fid serial PRIMARY KEY,
  "geometry" geometry(POLYGON, 21781),
  quality integer NOT NULL,
  "type" integer NOT NULL,
  regbl_egid integer NULL,
  state_of date NULL,
  fosnr integer NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.land_cover__lcsurface OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.land_cover__lcsurface TO stefan;
GRANT SELECT ON TABLE av_mopublic.land_cover__lcsurface TO mspublic;


-- DROP TABLE av_mopublic.ownership__realestate;
CREATE TABLE av_mopublic.ownership__realestate (
  ogc_fid serial PRIMARY KEY,
  identnd varchar(12) NOT NULL,
  "number" varchar(15) NOT NULL,
  egris_egrid varchar(14) NULL,
  completeness integer NOT NULL,
  "area" integer NOT NULL,
  "geometry" geometry(POLYGON, 21781),
  state_of date NULL,
  fosnr integer NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.ownership__realestate OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.ownership__realestate TO stefan;
GRANT SELECT ON TABLE av_mopublic.ownership__realestate TO mspublic;

-- DROP TABLE av_mopublic.ownership__realestate_posnumber;
CREATE TABLE av_mopublic.ownership__realestate_posnumber (
  ogc_fid serial PRIMARY KEY,
  posnumber_of integer NULL,
  identnd varchar(12) NOT NULL,
  "number" varchar(15) NOT NULL,
  pos geometry(POINT, 21781),
  ori decimal(5,1) NOT NULL,
  hali integer NOT NULL,
  hali_txt varchar(255) NOT NULL,
  vali integer NOT NULL,
  vali_txt varchar(255) NOT NULL,
  fosnr integer NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE av_mopublic.ownership__realestate_posnumber OWNER TO stefan;
GRANT ALL ON TABLE av_mopublic.ownership__realestate_posnumber TO stefan;
GRANT SELECT ON TABLE av_mopublic.ownership__realestate_posnumber TO mspublic;
