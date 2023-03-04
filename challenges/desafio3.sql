SELECT pu.nome_pessoa_usuaria AS pessoa_usuaria, COUNT(*) AS musicas_ouvidas, ROUND(SUM(c.duracao_segundos) / 60, 2) AS total_minutos FROM SpotifyClone.pessoas_usuarias AS pu
INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
ON hr.pessoa_usuaria_id = pu.pessoa_usuaria_id
INNER JOIN SpotifyClone.cancoes AS c
ON c.cancao_id = hr.cancao_id
GROUP BY pu.nome_pessoa_usuaria
ORDER BY pu.nome_pessoa_usuaria;