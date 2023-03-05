SELECT
	a.artista AS artista,
    CASE
		WHEN COUNT(f.cancao_id) >= 5 THEN 'A'
        WHEN COUNT(f.cancao_id) BETWEEN 3 AND 4 THEN 'B'
        WHEN COUNT(f.cancao_id) BETWEEN 1 AND 2 THEN 'C'
        ELSE '-'
	END AS ranking
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.cancoes AS c
ON c.artista_id = a.artista_id
LEFT JOIN SpotifyClone.favoritas AS f
ON f.cancao_id = c.cancao_id
GROUP BY artista
ORDER BY COUNT(f.cancao_id) DESC, artista;