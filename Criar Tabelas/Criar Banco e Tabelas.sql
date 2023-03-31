-- Comando para criar a tabela de empresas parceiras
CREATE TABLE empresas (
    id SERIAL PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(200),
    Cnpj VARCHAR(14),
	Telefone VARCHAR(20),
    Email VARCHAR(50)
);

-- Comando para criar a tabela de tecnologias
CREATE TABLE tecnologias (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    area VARCHAR(50)
);
-- Comando para criar a tabela de relacionamento entre Empresas e Tecnologias que irão se relacionar com a tabela Relatórios
CREATE TABLE relacao_empresas_tecnologias (
    id SERIAL PRIMARY KEY,
    empresa_id INTEGER NOT NULL,
    tecnologia_id INTEGER NOT NULL,
    relatorio_id INTEGER NOT NULL,
    FOREIGN KEY (empresa_id) REFERENCES empresas(id),
    FOREIGN KEY (tecnologia_id) REFERENCES tecnologias(id),
    FOREIGN KEY (relatorio_id) REFERENCES relatorios(id)
);
-- Comando para criar a tabela de Relatórios
CREATE TABLE relatorios (
    id SERIAL PRIMARY KEY,
    data_do_relatorio DATE NOT NULL
);
