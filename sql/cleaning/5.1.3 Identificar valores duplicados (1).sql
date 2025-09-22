#DUPICADOS EN TRACK_TECHNICAL ###################################

## NO HAY DUPLICADOS DE ID
SELECT
track_id,
COUNT(*) AS CANTIDAD,
FROM `bright-raceway-469723-g7.spotify_2023.track_technical_info`
GROUP BY track_id
HAVING COUNT (*) > 1

#DUPICADOS EN TRACK_IN_SPOTIFY ###################################


SELECT
track_name,
artist_s__name,
COUNT(*) AS CANTIDAD,
FROM `bright-raceway-469723-g7.spotify_2023.track_in_spotify`
GROUP BY track_name,artist_s__name
HAVING COUNT (*) > 1


SELECT *
FROM `bright-raceway-469723-g7.spotify_2023.track_in_spotify` 
WHERE track_id = '0:00';


