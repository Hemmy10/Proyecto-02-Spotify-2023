
## 01. IDENTIFICAR VALORES ATIPICOS - track_tecnical_info


WITH unpivoted AS (
  SELECT * 
  FROM `bright-raceway-469723-g7.spotify_2023.track_technical_info`
  UNPIVOT(val FOR metric IN (bpm, `danceability_%`, `valence_%`, `energy_%`, `acousticness_%`, `instrumentalness_%`, `liveness_%`, `speechiness_%`))
)

SELECT
  metric,
  MIN(val) AS min_value,
  MAX(val) AS max_value,
  AVG(val) AS avg_value
FROM unpivoted
GROUP BY metric;


## 03. IDENTIFICAR VALORES ATIPICOS - track_tecnical_info