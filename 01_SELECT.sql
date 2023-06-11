
SELECT [CPF], [NOME], [ENDERECO1], [ENDERECO2], [BAIRRO], [CIDADE], [ESTADO], [CEP],
[DATA DE NASCIMENTO], [IDADE], [GENERO],[LIMITE DE CREDITO], [PRIMEIRA COMPRA]
FROM [TABELA DE CLIENTES];

--Usando um Alias 'nome fantasia': 
SELECT [NOME] AS [NOME DO CLIENTE], [CPF] AS [IDENTIFICADOR] 
FROM [TABELA DE CLIENTES];

--FILTRO no DELETE: 
DELETE FROM [TABELA DE PRODUTOS] WHERE [CODIGO DO PRODUTO] = 'XXXXX';

--FILTRO NO UPDATE:
--Aumentando em 10% o valor dos produtos que sejam em lata: 
UPDATE [TABELA DE PRODUTOS] 
SET	[PRECO DE LISTA] = [PRECO DE LISTA]*1.1
WHERE EMBALAGEM = 'LATA';

--Uso do WHERE (FILTRO): 
SELECT * FROM [TABELA DE PRODUTOS] WHERE [CODIGO DO PRODUTO] = '1000889';
SELECT * FROM [TABELA DE PRODUTOS] WHERE SABOR = 'Uva';
SELECT * FROM [TABELA DE PRODUTOS] WHERE SABOR = 'LIM�O';
SELECT * FROM [TABELA DE PRODUTOS] WHERE EMBALAGEM = 'LATA';

-- Para Vendedores com dependentes aumentar a comiss�o em 0.01:
UPDATE [TABELA DE VENDEDORES] SET [PERCENTUAL COMISSAO] = [PERCENTUAL COMISSAO]+0.01 
WHERE [TEM DEPENDENTE] = 1;

SELECT * FROM [TABELA DE VENDEDORES];

--Operadores no filtro: 
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] > 5.016;
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] < 5.016;
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] <> 5.016;
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] >= 5.016;
SELECT * FROM [TABELA DE PRODUTOS] WHERE [PRECO DE LISTA] <= 5.016;

--EX: Operadores no filtro em campo texto: 
SELECT * FROM [TABELA DE PRODUTOS] WHERE [EMBALAGEM] >= 'LATA';
-- Aplic�vel para cortes respeitando a ordem alfab�ticas dos textos

-- Operadores no filtro em datas: 
SELECT * FROM [TABELA DE VENDEDORES] WHERE [DATA INICIO] >= '01-01-2020';
SELECT * FROM [TABELA DE VENDEDORES] WHERE [DATA INICIO] <= '01-01-2020';
SELECT * FROM  [TABELA DE CLIENTES] WHERE YEAR ([DATA DE NASCIMENTO]) = 1995;

SELECT [NOME], [ESTADO], [DATA DE NASCIMENTO], 
YEAR([DATA DE NASCIMENTO]) AS ANO,
MONTH([DATA DE NASCIMENTO]) AS MES,
DAY([DATA DE NASCIMENTO]) AS DIA
FROM [TABELA DE CLIENTES];

SELECT * FROM [TABELA DE VENDEDORES] WHERE YEAR([DATA INICIO]) <= 2020

--FILTROS COMPOSTOS: 
-- AND  e OR

SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 12
AND [BAIRRO] = 'TIJUCA'; 

SELECT * FROM [TABELA DE CLIENTES] WHERE [BAIRRO] = 'Jardins' 
OR [BAIRRO] = 'TIJUCA';




