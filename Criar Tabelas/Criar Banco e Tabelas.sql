-- Criar tabela de empresas parceiras
CREATE TABLE empresas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    telefone VARCHAR(20),
    email VARCHAR(50)
);

-- Criar tabela de tecnologias
CREATE TABLE tecnologias (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    area VARCHAR(50)
);
-- Criar tabela de relacionamento entre Empresas e Tecnologias nos relatórios
CREATE TABLE relacao_empresas_tecnologias (
    id SERIAL PRIMARY KEY,
    empresa_id INTEGER NOT NULL,
    tecnologia_id INTEGER NOT NULL,
    relatorio_id INTEGER NOT NULL,
    FOREIGN KEY (empresa_id) REFERENCES empresas(id),
    FOREIGN KEY (tecnologia_id) REFERENCES tecnologias(id),
    FOREIGN KEY (relatorio_id) REFERENCES relatorios(id)
);
-- Criar tabela de Relatórios
CREATE TABLE relatorios (
    id SERIAL PRIMARY KEY,
    data_compilacao DATE NOT NULL
);
