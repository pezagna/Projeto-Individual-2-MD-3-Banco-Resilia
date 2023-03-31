-- 1. Qual empresa utiliza o maior número de tecnologias na última pesquisa(2/2022)?
SELECT empresas.nome, COUNT(DISTINCT tecnologias.id) AS num_tecnologias
FROM empresas
JOIN relacao_empresas_tecnologias ON empresas.id = relacao_empresas_tecnologias.empresa_id
JOIN tecnologias ON relacao_empresas_tecnologias.tecnologia_id = tecnologias.id
JOIN relatorios ON relatorios.id = relacao_empresas_tecnologias.relatorio_id
WHERE relatorios.data_do_relatorio = '2022-07-01' AND relatorios.data_do_relatorio <= '2023-12-31'
GROUP BY empresas.id
ORDER BY num_tecnologias DESC
LIMIT 1;

-- 2. Qual empresa utilizava o menor número de tecnologias na pesquisa anterior (1/2022)?
SELECT empresas.nome, COUNT(*) as num_tecnologias
FROM relacao_empresas_tecnologias
JOIN empresas ON empresas.id = relacao_empresas_tecnologias.empresa_id
JOIN relatorios ON relatorios.id = relacao_empresas_tecnologias.relatorio_id
WHERE relatorios.data_do_relatorio >= '2021-12-31' AND relatorios.data_do_relatorio <= '2022-07-01'
GROUP BY empresas.id
ORDER BY num_tecnologias ASC
LIMIT 1;

-- Quantas empresas utilizam tecnologias da área de “Dados” atualmente?
SELECT COUNT(DISTINCT empresas.id) as numero_de_empresas
FROM relacao_empresas_tecnologias
JOIN empresas ON empresas.id = relacao_empresas_tecnologias.empresa_id
JOIN tecnologias ON tecnologias.id = relacao_empresas_tecnologias.tecnologia_id
JOIN relatorios ON relatorios.id = relacao_empresas_tecnologias.relatorio_id
WHERE tecnologias.area = 'Ciência de Dados'

-- Quantas empresas utilizam tecnologias que não são da área de “Dados” atualmente?
SELECT COUNT(DISTINCT empresa_id) AS quantidade_de_empresas
FROM relacao_empresas_tecnologias
WHERE relatorio_id = (SELECT id FROM relatorios WHERE data_do_relatorio = '2022-07-01')
AND empresa_id NOT IN (
    SELECT empresa_id FROM relacao_empresas_tecnologias
    INNER JOIN tecnologias ON relacao_empresas_tecnologias.tecnologia_id = tecnologias.id
    WHERE tecnologias.area = 'Ciência de Dados'
);
