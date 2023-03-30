SENAC/RESILIA - Formação em Análise de Dados (FAD)
Projeto individual 2 - Módulo 3 - Banco Resilia
Data de criação: 28/03/2023
Criação e edição: Robson da Silva
Banco de dados utilizado: PostgreSQL


CONTEXTO:


Vocês lembram do nosso modelo de banco para a ResiliaData?
Vamos ajustar nosso modelo e colocar o banco de dados para funcionar.
Veremos a seguir os únicos ajustes que foram solicitados:


O QUE É PARA FAZER?


➔ Criar uma entidade chamada “relatórios”. Essa
entidade vai armazenar a data de compilação dos
dados e garantir um histórico de quais tecnologias as
empresas estavam usando no momento que a Resilia
compilou os dados, ou seja, não vamos mais marcar
as tecnologias diretamente nas empresas, vamos ter
essa tabela de compilado para checar a cada seis
meses como estão as stacks.


➔ Popular esse banco de dados de forma fictícia com
informações de 4 empresas e 2 pesquisas (uma de
1/2022 e outra de 2/2022). Vocês podem pesquisar
algumas empresas (talvez aquela que vocês estão de
olho nas vagas) e preencher essas informações,
mesmo que não sejam 100% exatas.


➔ Após aplicar esses ajustes no nosso modelo, criar o banco de dados,
popular com dados fictícios, vamos pensar nas seguintes queries SQL:
1. Qual empresa utiliza o maior número de tecnologias na última pesquisa
(2/2022)?
2. Qual empresa utilizava o menor número de tecnologias na pesquisa
anterior (1/2022)?
3. Quantas empresas utilizam tecnologias da área de “Dados”
atualmente?
4. Quantas empresas utilizam tecnologias que não são da área de
“Dados” atualmente?

⇨ Entregar três arquivos .SQL em um repositório do Github:
1. O primeiro arquivo deverá conter os comandos para a criação do
banco de dados.
2. O segundo arquivo deverá conter os comandos utilizados para
popular, com dados fictícios, o banco de dados.
3. O terceiro arquivo deverá conter as consultas SQL que respondem a
cada uma das perguntas. 
