INSERT INTO [TABELA DE PRODUTOS]
VALUES (
'1078680',
'Frescor do Ver�o - 470 ml- Manga',
'Garrafa',
'470 ml',
'Manga',
6.99
);

SELECT * FROM [TABELA DE PRODUTOS];

DELETE FROM [TABELA DE PRODUTOS]
WHERE [CODIGO DO PRODUTO] = '1078680';

-- Alterando a estrutura da tabela e adicionando primary key

ALTER TABLE [TABELA DE PRODUTOS] ADD CONSTRAINT PK_TABELA_DE_PRODUTOS
PRIMARY KEY CLUSTERED ([CODIGO DO PRODUTO]);

-- Deu mensagem de erro: 
-- N�o foi poss�vel criar a restri��o ou o �ndice. Consulte os erros anteriores.
-- N�o � poss�vel definir a restri��o PRIMARY KEY em coluna anul�vel na tabela 'TABELA DE PRODUTOS'.

-- Alterando o tipo de campo antes de setar a primary key:
ALTER TABLE [TABELA DE PRODUTOS] ALTER COLUMN [CODIGO DO PRODUTO] VARCHAR(20) NOT NULL;

SELECT * FROM [TABELA DE VENDEDORES];

ALTER TABLE [TABELA DE VENDEDORES] ALTER COLUMN [MATRICULA] VARCHAR(05) NOT NULL;

ALTER TABLE [TABELA DE VENDEDORES] ADD CONSTRAINT PK_TABELA_DE_VENDEDORES 
PRIMARY KEY CLUSTERED ([MATRICULA]);