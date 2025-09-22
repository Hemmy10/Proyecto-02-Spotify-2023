SELECT
  COUNT(track_id) AS n_canciones,
  AVG(streams) AS media_streams,
  APPROX_QUANTILES(streams, 100)[OFFSET(50)] AS mediana_streams,
  STDDEV(streams) AS desviacion_muestral,
  STDDEV_POP(streams) AS desviacion_poblacional,
  VARIANCE(streams) AS varianza_muestral,
  VAR_POP(streams) AS varianza_poblacional,
  MIN(streams) AS minimo,
  MAX(streams) AS maximo
FROM `bright-raceway-469723-g7.spotify_2023.resumen_final_spotify`;

