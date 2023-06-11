SELECT DISTINCT BAIRRO FROM tabela_de_clientes;
SELECT distinct BAIRRO FROM tabela_de_vendedores;


SELECT DISTINCT BAIRRO, NOME, 'CLIENTE' AS TIPO FROM tabela_de_clientes
UNION 
SELECT distinct BAIRRO, NOME, 'VENDEDOR' AS TIPO FROM tabela_de_vendedores;


SELECT DISTINCT BAIRRO, NOME, 'CLIENTE' AS TIPO_CLIENTE FROM tabela_de_clientes
UNION 
SELECT distinct BAIRRO, NOME, 'VENDEDOR' AS TIPO_VENDEDOR FROM tabela_de_vendedores;

-- Full join com union
SELECT V.BAIRRO, 
V.NOME AS VENDEDOR, DE_FERIAS, 
C.BAIRRO, 
C.NOME AS NOME_CLIENTE FROM tabela_de_vendedores V
LEFT JOIN tabela_de_clientes C
ON V.BAIRRO = C.BAIRRO
union
SELECT V.BAIRRO, 
V.NOME AS VENDEDOR, DE_FERIAS, 
C.BAIRRO, 
C.NOME AS NOME_CLIENTE FROM tabela_de_vendedores V
RIGHT JOIN tabela_de_clientes C
ON V.BAIRRO = C.BAIRRO;

-- Sub-select: 

SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;

SELECT * FROM TABELA_DE_CLIENTES WHERE BAIRRO IN (SELECT DISTINCT BAIRRO FROM tabela_de_vendedores);


SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO 
FROM tabela_de_produtos
GROUP BY EMBALAGEM) X;

SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO 
FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.PRECO_MAXIMO >= 10;

  SELECT CPF, COUNT(*) FROM notas_fiscais
  WHERE YEAR(DATA_VENDA) = 2016
  GROUP BY CPF
  HAVING COUNT(*) > 2000;














