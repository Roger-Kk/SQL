
SELECT * FROM tabela_de_produtos;

#CASE para classificar produtos:
SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA,
CASE 
	WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
    WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRECO EM CONTA'
    ELSE 'PRODUTO BARATO'
END AS STATUS FROM TABELA_DE_PRODUTOS;

SELECT NOME,
CASE WHEN YEAR(data_de_nascimento) < 1990 THEN 'Velho'
WHEN YEAR(data_de_nascimento) >= 1990 AND
YEAR(data_de_nascimento) <= 1995 THEN 'Jovens' 
ELSE 'Crianças' 
END  AS "CLASSIFICAÇÃO POR IDADE"
FROM tabela_de_clientes;

















