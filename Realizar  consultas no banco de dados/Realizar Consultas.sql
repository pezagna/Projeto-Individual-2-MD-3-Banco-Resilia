-- 1. Qual empresa utiliza o maior número de tecnologias na última pesquisa (2/2022)?	
SELECT empresas.nome, COUNT(*) as num_tecnologias
FROM relacao_empresas_tecnologias
JOIN empresas ON empresas.id = relacao_empresas_tecnologias.empresa_id
JOIN relatorios ON relatorios.id = relacao_empresas_tecnologias.relatorio_id
WHERE relatorios.data_compilacao = '2023-01-01' AND relacao_empresas_tecnologias.semestre = 2
GROUP BY empresas.id
ORDER BY num_tecnologias DESC
LIMIT 1;

-- 2. Qual empresa utilizava o menor número de tecnologias na pesquisaanterior (1/2022)?
SELECT empresas.nome, COUNT(*) as num_tecnologias
FROM relacao_empresas_tecnologias
JOIN empresas ON empresas.id = relacao_empresas_tecnologias.empresa_id
JOIN relatorios ON relatorios.id = relacao_empresas_tecnologias.relatorio_id
WHERE relatorios.data_compilacao = '2022-06-30' AND relacao_empresas_tecnologias.semestre = 1
GROUP BY empresas.id
ORDER BY num_tecnologias ASC
LIMIT 1;

-- 3. Quantas empresas utilizam tecnologias da área de “Dados” atualmente? 
SELECT COUNT(DISTINCT empresas.id) as num_empresas
FROM relacao_empresas_tecnologias
JOIN empresas ON empresas.id = relacao_empresas_tecnologias.empresa_id
JOIN tecnologias ON tecnologias.id = relacao_empresas_tecnologias.tecnologia_id
JOIN relatorios ON relatorios.id = relacao_empresas_tecnologias.relatorio_id
WHERE tecnologias.area = 'Ciência de Dados' AND relacao_empresas_tecnologias.semestre = 2 

-- 4. Quantas empresas utilizam tecnologias que não são da área de “Dados” atualmente?
SELECT COUNT(DISTINCT empresas.id) as num_empresas
FROM relacao_empresas_tecnologias
JOIN empresas ON empresas.id = relacao_empresas_tecnologias.empresa_id
JOIN tecnologias ON tecnologias.id = relacao_empresas_tecnologias.tecnologia_id
JOIN relatorios ON relatorios.id = relacao_empresas_tecnologias.relatorio_id
WHERE tecnologias.area != 'Ciência de Dados' AND relacao_empresas_tecnologias.semestre = 2
