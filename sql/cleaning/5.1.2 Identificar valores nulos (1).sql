## 01. IDENTIFICAR NULOS - track_tecnical_info

--Identificar cuantos valores nulos hay en cada columna
SELECT
COUNTIF(track_id IS NULL) AS null_track_id,
COUNTIF(bpm IS NULL) AS null_bpm,
COUNTIF(`key` IS NULL) AS null_key,
COUNTIF(mode IS NULL) AS null_mode,
COUNTIF(`danceability_%` IS NULL)AS null_danceability ,
COUNTIF(`valence_%` IS NULL) AS null_valence ,
COUNTIF(`energy_%`IS NULL) AS null_energy ,
COUNTIF(`acousticness_%` IS NULL) AS null_acousticness ,
COUNTIF(`instrumentalness_%` IS NULL) AS null_instrumentalness ,
COUNTIF(`liveness_%` IS NULL) AS null_liveness ,
COUNTIF(`speechiness_%` IS NULL) AS null_speechiness ,
FROM `bright-raceway-469723-g7.spotify_2023.track_technical_info`;


--95 valores nulos en key
SELECT *
FROM `bright-raceway-469723-g7.spotify_2023.track_technical_info`
WHERE `key` IS NULL;


--Porcentaje de nulos respecto al total= 9.97%
SELECT
COUNTIF(`key` IS NULL) * 100.0/COUNT(*)AS pct_null_key
FROM `bright-raceway-469723-g7.spotify_2023.track_technical_info`;

--Tratamiento
---Se mantendrá los 95 valores nulos de KEY, pero se consignaran como "DESCONOCIDO"

----------------------------------------------------------------------------------------------------------------------

## 02. IDENTIFICAR NULOS - track_in_competition

--Identificar cuantos valores nulos hay en cada columna
SELECT
 COUNTIF(track_id IS NULL) AS null_track_id,
 COUNTIF(in_apple_playlists IS NULL) AS null_in_apple_playlists,
 COUNTIF(in_apple_charts IS NULL) AS null_in_apple_charts,
 COUNTIF(in_deezer_playlists IS NULL) AS null_in_deezer_playlists,
 COUNTIF(in_deezer_charts IS NULL) AS null_in_deezer_charts,
 COUNTIF(in_shazam_charts IS NULL) AS null_in_shazam_charts,
FROM `bright-raceway-469723-g7.spotify_2023.track_in_competition`;


--50 Valores nulos en columna shazam_charts
SELECT *
FROM `bright-raceway-469723-g7.spotify_2023.track_in_competition`
WHERE in_shazam_charts IS NULL;


--Porcentaje de nulos respecto al total 5.25%
SELECT
 COUNTIF( in_shazam_charts IS NULL) * 100.0/COUNT(*)AS pct_null_shazam_charts
FROM `bright-raceway-469723-g7.spotify_2023.track_in_competition`;

--Tratamiento
---Se mantendrá los 50 valores nulos de IN_SHAZAM_CHARTS, pero se consignaran como "0"

----------------------------------------------------------------------------------------------------------------------

## 03. IDENTIFICAR NULOS - track_in_spotify

--No se identificaron valores nulos en ninguna columna de track_in_spotify
SELECT
 COUNTIF(track_id IS NULL) AS null_track_id,
 COUNTIF(track_name IS NULL) AS null_track_name,
 COUNTIF(artist_s__name IS NULL) AS null_artist_name,
 COUNTIF(artist_count IS NULL) AS null_artist_count,
 COUNTIF(released_year IS NULL) AS null_released_year,
 COUNTIF(released_month IS NULL) AS null_released_month,
 COUNTIF(released_day IS NULL) AS null_released_day,
 COUNTIF(in_spotify_playlists IS NULL) AS null_in_spotify_playlists,
 COUNTIF(in_spotify_charts IS NULL) AS null_in_spotify_charts,
 COUNTIF(streams IS NULL) AS null_streams
FROM `bright-raceway-469723-g7.spotify_2023.track_in_spotify`;
