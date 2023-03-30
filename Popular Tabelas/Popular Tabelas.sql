-- Popular tabela de Empresas
INSERT INTO empresas (nome, endereco, telefone, email)
VALUES
    ('Resilia', 'Rua R, 123', 2112345678,'resilia@email.com'),
    ('Senac', 'Rua S, 321', 2187654321,'senac@email.com'),
    ('Cursos Gratis', 'Rua C, 100', 2188888888,'cursos_gratis@email.com'),
    ('Escola Tekno', 'Rua T, 200', 2177777777,'escola_tekno@email.com');

-- Popular tabela de Tecnologias
INSERT INTO tecnologias (nome, area)
VALUES
    
    ('Python', 'Ciência de Dados'),
    ('Java', 'Desenvolvimento Web'),
    ('SQL', 'Ciência de Dados'),
    ('JavaScript', 'Desenvolvimento Web'),
    ('Machine Learning', 'Ciência de Dados'),
    ('React', 'Desenvolvimento Web');

-- Popular tabela Relatórios
INSERT INTO relatorios (data_compilacao) VALUES
    ('2022-07-30'),
    ('2023-01-01');
-- Popular tabela de relacao_empresas_tecnologias
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
