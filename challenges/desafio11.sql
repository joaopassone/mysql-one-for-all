SELECT a.album AS album, COUNT(*) AS favoritadas FROM SpotifyClone.albuns AS a
INNER JOIN SpotifyClone.cancoes AS c
ON c.album_id = a.album_id
INNER JOIN SpotifyClone.favoritas AS f
ON f.cancao_id = c.cancao_id
GROUP BY a.album
ORDER BY favoritadas DESC, a.album
LIMIT 3;