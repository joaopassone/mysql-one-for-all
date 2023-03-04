SELECT pu.nome_pessoa_usuaria AS pessoa_usuaria,
IF(MAX(hr.data_reproducao) > '2020-12-31', 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM SpotifyClone.pessoas_usuarias AS pu
INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
ON hr.pessoa_usuaria_id = pu.pessoa_usuaria_id
GROUP BY pu.nome_pessoa_usuaria
ORDER BY pu.nome_pessoa_usuaria;