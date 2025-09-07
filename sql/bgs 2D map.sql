SELECT TOP 200000
  p.ra,
  p.dec
FROM
  desi_dr1.target AS t
JOIN
  desi_dr1.photometry AS p ON t.targetid = p.targetid
WHERE
  t.bgs_target > 0
