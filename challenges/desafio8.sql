SELECT ANY_VALUE(art.artista) AS artista, alb.album AS album FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON alb.artista_id = art.artista_id
WHERE art.artista = 'Elis Regina'
GROUP BY alb.album
ORDER BY ANY_VALUE(art.artista), alb.album;