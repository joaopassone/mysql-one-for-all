SELECT CAST(MIN(p.valor_plano) AS DECIMAL(3,2)) AS faturamento_minimo,
CAST(MAX(p.valor_plano) AS DECIMAL(4,2)) AS faturamento_maximo,
CAST(AVG(p.valor_plano) AS DECIMAL(4,2)) AS faturamento_medio,
CAST(SUM(p.valor_plano) AS DECIMAL(4,2)) AS faturamento_total
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.pessoas_usuarias AS pu
ON pu.plano_id = p.plano_id;