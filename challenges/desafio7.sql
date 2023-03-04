SELECT ANY_VALUE(art.artista) AS artista, alb.album AS album, COUNT(*) AS pessoas_seguidoras FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.seguindo AS seg
ON seg.artista_id = art.artista_id
GROUP BY alb.album
ORDER BY pessoas_seguidoras DESC, ANY_VALUE(art.artista), alb.album;