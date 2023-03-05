SELECT
	CASE
		WHEN pu.idade <= 30 THEN 'Até 30 anos'
        WHEN pu.idade BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
        ELSE 'Maior de 60 anos'
	END as faixa_etaria,
    COUNT(DISTINCT pu.pessoa_usuaria_id) AS total_pessoas_usuarias,
    COUNT(f.cancao_id) AS total_favoritadas
FROM SpotifyClone.pessoas_usuarias as pu
LEFT JOIN SpotifyClone.favoritas AS f
ON f.pessoa_usuaria_id = pu.pessoa_usuaria_id
GROUP BY faixa_etaria;