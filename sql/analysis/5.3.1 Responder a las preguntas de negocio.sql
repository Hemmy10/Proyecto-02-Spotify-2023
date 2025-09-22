--PREGUNTA NEGOCIO: ¿Canciones con mayor BPM tienen más streams?

--Correlación BPMS y streams
WITH base AS (
 SELECT
   streams AS streams_num,
   bpm AS bpm_num
 FROM `bright-raceway-469723-g7.spotify_2023.resumen_final_spotify`
 WHERE streams IS NOT NULL AND bpm IS NOT NULL
)
SELECT
 CORR(streams_num, bpm_num)                AS r,
 POW(CORR(streams_num, bpm_num), 2)        AS r2,
 COUNT(*)                                  AS n,
 AVG(streams_num)                          AS media_streams,
 AVG(bpm_num)                              AS media_bpm
FROM base;

--resultado: no hay correlacion


WITH base AS (
  SELECT
    track_id,
    streams,
    bpm,
    CASE
      WHEN bpm < 80 THEN '<80'
      WHEN bpm BETWEEN 80 AND 100 THEN '80-100'
      WHEN bpm BETWEEN 101 AND 120 THEN '101-120'
      WHEN bpm BETWEEN 121 AND 140 THEN '121-140'
      ELSE '>140'
    END AS bpm_range
  FROM `bright-raceway-469723-g7.spotify_2023.resumen_final_spotify`
  WHERE streams IS NOT NULL
    AND bpm IS NOT NULL
)
SELECT
  bpm_range,
  CORR(streams_num, bpm_num)                AS r,
 POW(CORR(streams_num, bpm_num), 2)        AS r2,
 AVG(streams) AS avg_streams,
  COUNT(*)     AS num_tracks
FROM base
GROUP BY bpm_range
ORDER BY bpm_range;