SELECT c.cancao, COUNT(*) AS reproducoes FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
ON c.cancao_id = hr.cancao_id
GROUP BY c.cancao
ORDER BY reproducoes DESC, c.cancao
LIMIT 2;