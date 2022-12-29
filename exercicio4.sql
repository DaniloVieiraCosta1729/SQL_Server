/*Temos quantos produtos cadastrados?*/

SELECT COUNT(DISTINCT Name) FROM Production.Product;

/*Quantos tamanho distintos de produtos estão cadastrados?*/

SELECT COUNT(DISTINCT Size) FROM Production.Product;