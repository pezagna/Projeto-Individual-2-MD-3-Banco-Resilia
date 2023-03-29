CREATE TABLE empresas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE tecnologias (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    area VARCHAR(255) NOT NULL
);

CREATE TABLE relatorios (
    id SERIAL PRIMARY KEY,
    data_compilacao DATE NOT NULL
);

CREATE TABLE empresas_tecnologias (
    id SERIAL PRIMARY KEY,
    empresa_id INTEGER NOT NULL,
    tecnologia_id INTEGER NOT NULL,
    relatorio_id INTEGER NOT NULL,
    semestre INTEGER NOT NULL,
    FOREIGN KEY (empresa_id) REFERENCES empresas(id),
    FOREIGN KEY (tecnologia_id) REFERENCES tecnologias(id),
    FOREIGN KEY (relatorio_id) REFERENCES relatorios(id)
);

INSERT INTO empresas (nome) VALUES
    ('Empresa A'),
    ('Empresa B'),
    ('Empresa C'),
    ('Empresa D');

INSERT INTO tecnologias (nome, area) VALUES
    ('Python', 'Dados'),
    ('Java', 'Webdev'),
    ('SQL', 'Dados'),
    ('JavaScript', 'Webdev'),
    ('R', 'Dados'),
    ('PHP', 'Webdev');

INSERT INTO relatorios (data_compilacao) VALUES
    ('2022-06-30'),
    ('2023-01-01');

INSERT INTO empresas_tecnologias (empresa_id, tecnologia_id, relatorio_id, semestre) VALUES
    (1, 1, 1, 1),
    (1, 2, 1, 1),
    (1, 3, 1, 1),
    (1, 4, 1, 1),
    (1, 5, 1, 1),
    (2, 2, 1, 1),
    (2, 4, 1, 1),
    (3, 1, 1, 1),
    (3, 3, 1, 1),
    (3, 5, 1, 1),
    (3, 6, 1, 1),
    (4, 2, 1, 1),
    (4, 4, 1, 1),
    (1, 1, 2, 2),
    (1, 2, 2, 2),
    (1, 3, 2, 2),
    (1, 4, 2, 2),
    (1, 5, 2, 2),
    (2, 2, 2, 2),
    (3, 1, 2, 2),
    (3, 3, 2, 2),
    (3, 5, 2, 2),
    (4, 2, 2, 2),
    (4, 4, 2, 2),
    (4, 6, 2, 2);
	
--Qual empresa utiliza o maior número de tecnologias no segundo semestre?	
SELECT empresas.nome, COUNT(*) as num_tecnologias
FROM empresas_tecnologias
JOIN empresas ON empresas.id = empresas_tecnologias.empresa_id
JOIN relatorios ON relatorios.id = empresas_tecnologias.relatorio_id
WHERE relatorios.data_compilacao = '2023-01-01' AND empresas_tecnologias.semestre = 2
GROUP BY empresas.id
ORDER BY num_tecnologias DESC
LIMIT 1;

-- Qual empresa utilizava o menor número de tecnologias no primeiro semestre?
SELECT empresas.nome, COUNT(*) as num_tecnologias
FROM empresas_tecnologias
JOIN empresas ON empresas.id = empresas_tecnologias.empresa_id
JOIN relatorios ON relatorios.id = empresas_tecnologias.relatorio_id
WHERE relatorios.data_compilacao = '2022-06-30' AND empresas_tecnologias.semestre = 1
GROUP BY empresas.id
ORDER BY num_tecnologias ASC
LIMIT 1;

-- Quantas empresas utilizam tecnologias da área de “Dados” atualmente ?

SELECT COUNT(DISTINCT empresas.id) as num_empresas
FROM empresas_tecnologias
JOIN empresas ON empresas.id = empresas_tecnologias.empresa_id
JOIN tecnologias ON tecnologias.id = empresas_tecnologias.tecnologia_id
JOIN relatorios ON relatorios.id = empresas_tecnologias.relatorio_id
WHERE tecnologias.area = 'Dados' AND empresas_tecnologias.semestre = 2 

--Quantas empresas utilizam tecnologias que não são da área de “Dados” ?
SELECT COUNT(DISTINCT empresas.id) as num_empresas
FROM empresas_tecnologias
JOIN empresas ON empresas.id = empresas_tecnologias.empresa_id
JOIN tecnologias ON tecnologias.id = empresas_tecnologias.tecnologia_id
JOIN relatorios ON relatorios.id = empresas_tecnologias.relatorio_id
WHERE tecnologias.area != 'Dados' AND empresas_tecnologias.semestre = 2

CREATE TABLE tecnologias2 (
    id funPRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    area VARCHAR(50)
);
