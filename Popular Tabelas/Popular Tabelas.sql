
-- Inserir dados na tabela de Empresas
INSERT INTO empresas (Nome, Endereco,Cnpj, Telefone, Email)
VALUES
    ('Resilia', 'Rua Resilia, 123',97473050000128, 2112345678,'resilia@email.com'),
    ('Senac', 'Rua Senac Rio, 321',18747799000140, 2187654321,'senac@email.com'),
    ('Cursos Gratis', 'Rua das Gracas, 100',64007263000105, 2188888888,'cursos_gratis@email.com'),
    ('Escola Tekno', 'Rua dos teknicos, 200',75978781000192, 2177777777,'escola_tekno@email.com');

-- Inserir dados na tabela de Tecnologias
INSERT INTO tecnologias (nome, area)
VALUES
    
    ('Python', 'Ciência de Dados'),
    ('Java', 'Desenvolvimento Web'),
    ('SQL', 'Ciência de Dados'),
    ('JavaScript', 'Desenvolvimento Web'),
    ('Machine Learning', 'Ciência de Dados'),
    ('React', 'Desenvolvimento Web');

-- Inserir dados na tabela Relatórios
INSERT INTO relatorios (data_do_relatorio) VALUES
    ('2021-12-31'),
    ('2022-07-01');
    
-- Inserir dados na tabela de relacao_empresas_tecnologias
INSERT INTO relacao_empresas_tecnologias (empresa_id, tecnologia_id, relatorio_id) VALUES
    (1, 1, 1),
    (1, 2, 1),
    (1, 3, 1),
    (1, 4, 1),
    (1, 5, 1),
    (2, 3, 1),
    (2, 4, 1),
    (3, 2, 1),
    (3, 4, 1),
    (3, 6, 1),
    (4, 2, 1),
    (4, 4, 1),
    (1, 1, 2),
    (1, 2, 2),
    (1, 3, 2),
    (1, 4, 2),
    (1, 5, 2),
    (2, 2, 2),
    (3, 4, 2),
    (3, 6, 2),
    (3, 2, 2),
    (4, 2, 2),
    (4, 4, 2),
    (4, 6, 2);
