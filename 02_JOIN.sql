SELECT * FROM tabela_de_vendedores;
SELECT * FROM notas_fiscais;

SELECT * FROM tabela_de_vendedores A 
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA;

SELECT A.MATRICULA, A.NOME, COUNT(*) FROM tabela_de_vendedores A
INNER JOIN NOTAS_FISCAIS B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.MATRICULA, A.NOME;

-- Left join: 

SELECT COUNT(*) FROM tabela_de_clientes;

SELECT CPF, COUNT(*) FROM notas_fiscais GROUP BY CPF; 

-- SELECIONANDO CLIENTES QUE NUNCA COMPRARAM: 
SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B
ON A.CPF = B.CPF
WHERE B.CPF IS NULL;

-- SELECIONANDO CLIENTES QUE NUNCA COMPRARAM EM 2015: 
SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B
ON A.CPF = B.CPF
WHERE B.CPF IS NULL AND YEAR(B.DATA_VENDA) = 2015;

-- Cross join: 
SELECT *  FROM tabela_de_vendedores;
SELECT * FROM tabela_de_clientes;

SELECT * FROM tabela_de_vendedores INNER JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO; 

SELECT tabela_de_vendedores.BAIRRO, 
tabela_de_vendedores.NOME, DE_FERIAS, 
tabela_de_clientes.BAIRRO, 
tabela_de_clientes.NOME FROM tabela_de_vendedores 
INNER JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT V.BAIRRO, 
V.NOME AS VENDEDOR, DE_FERIAS, 
C.BAIRRO, 
C.NOME AS NOME_CLIENTE FROM tabela_de_vendedores V
LEFT JOIN tabela_de_clientes C
ON V.BAIRRO = C.BAIRRO;


