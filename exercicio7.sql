/*Aprendendo sobre MAX, MIN, SUM e AVG*/

/*SUM*/

SELECT SUM(LineTotal) FROM Sales.SalesOrderDetail WHERE SalesOrderDetailID BETWEEN 1 AND 10; /*Mostra a soma dos valores das 10 primeiras vendas.*/

/*MAX e MIN*/

SELECT MAX(LineTotal) FROM SalesOrderDetail WHERE SalesOrderDetailID BETWEEN 1 AND 10; /*Máximo e mínimo. Nome autoexplicativo.*/

/*AVG*/

SELECT AVG(LineTotal) FROM SalesOrderDetail WHERE SalesOrderDetailID BETWEEN 1 AND 10; /*Average, ou seja, é a média.*/

