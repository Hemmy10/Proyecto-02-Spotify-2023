-- Detectar nombres con caracteres extraños en track_name 

SELECT *
FROM `bright-raceway-469723-g7.spotify_2023.track_in_spotify`
WHERE REGEXP_CONTAINS(track_name, r'[^a-zA-Z0-9\sáéíóúüñ.,!?-]');

-- Detectar nombres con caracteres extraños en artist_name

SELECT *
FROM `bright-raceway-469723-g7.spotify_2023.track_in_spotify`
WHERE REGEXP_CONTAINS(artist_s__name, r'[^a-zA-Z0-9\sáéíóúüñ.,!?-]');


-- Limpiar nombres reemplazando caracteres extraños por espacio en track_name

SELECT
track_id,
track_name AS track_original,
REGEXP_REPLACE(track_name,r'[^a-zA-Z0-9\sáéíóúüñ.,!?-]', ' ') AS track_name_nuevo,
artist_s__name AS artist_s__original,
REGEXP_REPLACE(artist_s__name,r'[^a-zA-Z0-9\sáéíóúüñ.,!?-]', ' ') AS artist_s__name_nuevo
FROM  `bright-raceway-469723-g7.spotify_2023.track_in_spotify`

--Se debe corregir los nombres o solo dejarle el espacio?
