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
