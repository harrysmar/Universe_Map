SELECT TOP 200000
  p.ra, p.dec
FROM
  desi_dr1.target AS t
JOIN
  desi_dr1.photometry AS p ON t.targetid = p.targetid
WHERE
  t.bgs_target > 0

SELECT TOP 200000
  mean_fiber_ra, mean_fiber_dec, z
FROM 
  desi_dr1.zpix AS z
WHERE
  z.bgs_target > 0
  
SELECT TOP 200000
  mean_fiber_ra, mean_fiber_dec, z
FROM 
  desi_dr1.zpix AS z
WHERE
  z.bgs_target > 0
ORDER BY RANDOM() 
  
SELECT TOP 200000
  mean_fiber_ra, mean_fiber_dec, z
FROM 
  desi_dr1.zpix AS z
WHERE
  z.bgs_target > 0 AND RANDOM() < 0.01
  
SELECT TOP 200000
  mean_fiber_ra, mean_fiber_dec, z
FROM 
  desi_dr1.zpix AS z
WHERE
  z.bgs_target > 0 AND healpix = 8875

SELECT
  mean_fiber_ra, mean_fiber_dec, z, SPECTYPE
FROM
  desi_dr1.zpix
WHERE
  bgs_target > 0 AND healpix IN (8000, 8001, 8002, 8003, 8004)
  
SELECT
  mean_fiber_ra, mean_fiber_dec, z, SPECTYPE
FROM
  desi_dr1.zpix
WHERE
  bgs_target > 0 AND healpix BETWEEN 8000 AND 8050

SELECT TOP 1
  t.targetid
FROM
  desi_dr1.target AS t
  JOIN desi_dr1.photometry AS p ON t.targetid = p.targetid
WHERE
  t.bgs_target > 0
  AND p.dec < 0
  
SELECT
  z
FROM
  desi_dr1.zpix
WHERE
  targetid = [TARGETID]

SELECT TOP 500000
  mean_fiber_ra, mean_fiber_dec, z
FROM 
  desi_dr1.zpix AS z
WHERE
  z.bgs_target > 0 AND mean_fiber_dec > 0

SELECT TOP 500000
  mean_fiber_ra, mean_fiber_dec, z
FROM 
  desi_dr1.zpix AS z
WHERE
  z.bgs_target > 0 AND mean_fiber_dec < 0
