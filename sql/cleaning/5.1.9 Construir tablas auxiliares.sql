-- LEFT JOINS
CREATE OR REPLACE VIEW `bright-raceway-469723-g7.spotify_2023.resumen_spotify` AS
SELECT 
  t.*,
  c.* EXCEPT(track_id),
  te.* EXCEPT(track_id),
  r.* EXCEPT(track_id),
  tp.* EXCEPT(track_id)
FROM `bright-raceway-469723-g7.spotify_2023.v_spotify_clean` AS t
LEFT JOIN `bright-raceway-469723-g7.spotify_2023.v_competition_clean` AS c
  ON t.track_id = c.track_id
LEFT JOIN `bright-raceway-469723-g7.spotify_2023.v_technical_clean` AS te
  ON t.track_id = te.track_id
LEFT JOIN `bright-raceway-469723-g7.spotify_2023.v_released_date` AS r
  ON t.track_id = r.track_id
LEFT JOIN `bright-raceway-469723-g7.spotify_2023.v_total_playlists` AS tp
  ON t.track_id = tp.track_id;  
