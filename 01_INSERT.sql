INSERT INTO [TABELA DE PRODUTOS](
 [CODIGO DO PRODUTO],
 [NOME DO PRODUTO],
 [EMBALAGEM],
 [TAMANHO],
 [SABOR],
 [PRECO]
)
VALUES (
'1040107',
'Light - 350 ml - Melância',
'Lata',
'350 ml',
'Melância',
4.56
);

SELECT * FROM [TABELA DE PRODUTOS];

INSERT INTO [TABELA DE VENDEDORES](
[MATRICULA],
[NOME],
[PERCENTUAL COMISSAO]
)
VALUES(
'00235',
'Márcio Almeida Silva',
0.08
);

SELECT * FROM [TABELA DE VENDEDORES];

INSERT INTO [TABELA DE PRODUTOS](
 [CODIGO DO PRODUTO],
 [NOME DO PRODUTO],
 [EMBALAGEM],
 [TAMANHO],
 [SABOR],
 [PRECO]
)
VALUES (
'103977',
'Clean - 2 L - Laranja',
'Pet',
'2 L',
'Laranja',
16.01
);

INSERT INTO [TABELA DE PRODUTOS](
 [CODIGO DO PRODUTO],
 [NOME DO PRODUTO],
 [EMBALAGEM],
 [TAMANHO],
 [SABOR],
 [PRECO]
)
VALUES (
'10000889',
'Sabor da Montanha - 700 ml- Uva',
'Garrafa',
'700 ml',
'Uva',
6.31
);

SELECT * FROM [TABELA DE PRODUTOS];

INSERT INTO [TABELA DE PRODUTOS]
VALUES (
'1004327',
'Videira do Campo - 1,5 L- Melância',
'Pet',
'1,5 L',
'Melância',
19.51
);

SELECT * FROM [TABELA DE PRODUTOS];

INSERT INTO [TABELA DE PRODUTOS]
VALUES (
'1008126',
'Linha Citros - 1 L- Limão',
'Pet',
'1 L',
'Limão',
7),
('544931', 
'Frescor do Verão - 350ml - Limão', 
'Lata',
'350ml', 
'Limão',
2.46
);

SELECT * FROM [TABELA DE PRODUTOS];


INSERT INTO [TABELA DE VENDEDORES]
VALUES(
'00236',
'Cláudia Morais',
0.08),
(
'00237',
'Marcela Ferreira', 
0.09);

SELECT * FROM [TABELA DE VENDEDORES];


/*-----------------------------------------------*/
/*-------FORMA MAIS SIMPLES ESCRITA CÓDIGO-------*/
/*-----------------------------------------------*/

/*Insert apontando os campos*/
INSERT INTO PRODUTOS ( CODIGO, SABOR, DESCRICAO, TAMANHO, EMBALAGEM, PRECO_LISTA)
VALUES ('codigo', 'sabor', 'descricao', 'tamanho', 'embalagem', 'preco_lista');

/*Insert sem a lista de campos*/
/*Só pode ser usado quando a ordem dos valores respeita a ordem dos campos da lista*/
INSERT INTO PRODUTOS
VALUES ('codigo', 'sabor', 'descricao', 'tamanho', 'embalagem', 'preco_lista');

/*Insert de várias linhas*/
INSERT INTO PRODUTOS
VALUES ('codigo', 'sabor', 'descricao', 'tamanho', 'embalagem', 'preco_lista'),
('codigo', 'sabor', 'descricao', 'tamanho', 'embalagem', 'preco_lista'), 
('codigo', 'sabor', 'descricao', 'tamanho', 'embalagem', 'preco_lista');

/*INSERT DE SELECT DE UMA TABELA PARA OUTRA*/
INSERT INTO CLIENTES
SELECT CPF, NOME, ENDERECO_1 AS ENDERECO, BAIRRO, CIDADE, ESTADO, CEP, 
DATA_DE_NASCIMENTO AS DATA_NASCIMENTO, IDADE, SEXO, LIMITE_DE_CREDITO AS LIMITE_CREDITO, 
VOLUME_DE_COMPRA AS VOLUME_COMPRA, PRIMEIRA_COMPRA FROM sucos_vendas.tabela_de_clientes 
WHERE CPF NOT IN (SELECT CPF FROM CLIENTES);
/*Para esse INSERT funcionar é necessário que o SELECT com os campos da tabela de origem
estejam com o mesmo nome, ou alias da tabela de destino*/


