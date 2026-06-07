SELECT
  CASE "reg"
    WHEN 1  THEN 'FR-GP'
    WHEN 2  THEN 'FR-MQ'
    WHEN 3  THEN 'FR-GF'
    WHEN 4  THEN 'FR-RE'
    WHEN 6  THEN 'FR-YT'
    WHEN 11 THEN 'FR-IDF'
    WHEN 24 THEN 'FR-CVL'
    WHEN 27 THEN 'FR-BFC'
    WHEN 28 THEN 'FR-NOR'
    WHEN 32 THEN 'FR-HDF'
    WHEN 44 THEN 'FR-GES'
    WHEN 52 THEN 'FR-PDL'
    WHEN 53 THEN 'FR-BRE'
    WHEN 75 THEN 'FR-NAQ'
    WHEN 76 THEN 'FR-OCC'
    WHEN 84 THEN 'FR-ARA'
    WHEN 93 THEN 'FR-PAC'
    WHEN 94 THEN 'FR-20R'
  END AS iso_code,
  SUM("incid_hosp") AS total_incidents
FROM "covid_france_full"
WHERE "reg" is not NULL
GROUP BY "reg"
