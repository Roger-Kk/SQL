ALTER TABLE [TABELA DE CLIENTE] ALTER COLUMN [CPF] CHAR (11) NOT NULL;

ALTER TABLE [TABELA DE CLIENTE] ADD CONSTRAINT PK_TABELA_DE_CLIENTES
PRIMARY KEY CLUSTERED([CPF]);

INSERT INTO [TABELA DE CLIENTE] 
VALUES(
'00384393431', 'João da Silva', 'Rua Projetada A', 'Número 233', 'Copacabana', 'Rio de Janeiro', 'RJ', '20000000', '1965-05-21', 57, 'M', 200000,3000.30, 1 
);

INSERT INTO [TABELA DE CLIENTE] 
VALUES(
'00285393555', 'Maria Clara', 'Rua da Subida', 'Número 52', 'Favela do rio', 'Rio de Janeiro', 'RJ', '1000000', '1985-05-21', 37, 'F', 100000,50.2, 1 
);

INSERT INTO [TABELA DE CLIENTE] 
VALUES(
'00285393555', 'Maria Clara', 'Rua da Subida', 'Número 52', 'Favela do rio', 'Rio de Janeiro', 'RJ', '1000000', '1985-05-21', 37, 'F', 100000,50.2, 1 
);

SELECT * FROM [TABELA DE CLIENTE];

INSERT INTO [TABELA DE VENDEDORES] 
VALUES (
'00240', 'Marcelo Almeida', '0.07' 
)

SELECT * FROM [TABELA DE VENDEDORES];




