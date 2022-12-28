/* Quantos sobrenomes únicos nos temos na tabela person.Person? */

SELECT DISTINCT LastName FROM person.Person; /*Posso usar isso e ver a qtd de linhas, ou...*/

SELECT COUNT(DISTINCT LastName) FROM person.Person; /*Posso usar a função COUNT(DISTINCT x), para ver o número de resultados distintos na coluna x.*/

/*Em ambos os casos, cheguei ao número 1206.*/
