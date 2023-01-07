/* Descobrindo como dividir os resultados das minhas queries em diferentes grupos usando o GROUP BY. */

/*

    A sintaxe é
    SELECT Coluna1, FunçãoDeAgragação(Coluna2) FROM TabelaX GROUP BY Coluna1;

    Exemplo: Quantos trabalhadores são homens e quantas são mulheres?

    SELECT HumanResources.Employee.Gender, COUNT (Person.Person.FirstName) AS "Quantidade"
    FROM HumanResources.Employee, Person.Person
    WHERE HumanResources.Employee.BusinessEntityID = Person.Person.BusinessEntityID
    GROUP BY HumanResources.Employee.Gender;

*/

/* Qual é o total de vendas de cada produto? */

SELECT ProductID, COUNT(SalesOrderDetailID) AS "Qtd. Vendidos" 
FROM Sales.SalesOrderDetail
GROUP by ProductID;

/*Mostre quais são os nomes registrados em nosso sistema e retorne a quantidade de pessoas que possuem o mesmo nome.*/

SELECT FirstName, COUNT(FirstName) FROM Person.Person GROUP BY FirstName;

/*Ordene a tabela em ordem de nome mais comum para menos comum.*/

SELECT FirstName, COUNT(FirstName) AS "Quantity" FROM Person.Person GROUP BY FirstName ORDER BY Quantity DESC;

/*Qual é a média de preços para produtos de uma mesma cor.*/

SELECT Color, AVG(ListPrice) AS "Média de Preços" FROM Production.Product GROUP BY Color;

/*Mostrar a média, apenas para produtos prateados*/

SELECT Color, AVG(ListPrice) AS "Média de preços" FROM Production.Product WHERE Color = 'Silver' GROUP BY COLOR;

/*Desafio - Quantas pessoas têm o mesmo nome do meio?*/

SELECT MiddleName, COUNT(MiddleName) AS 'Quantidade' FROM Person.Person GROUP BY MiddleName ORDER BY Quantidade DESC;

/* Total Unidades vendidas de cada produto. */
SELECT Production.Product.ProductID, Production.Product.Name, SUM(Sales.SalesOrderDetail.OrderQty) AS 'TotalUnidVendidas' 
FROM Sales.SalesOrderDetail, Production.Product 
WHERE Production.Product.ProductID = Sales.SalesOrderDetail.ProductID
GROUP BY Production.Product.ProductID, Production.Product.Name ORDER BY TotalUnidVendidas DESC;

/*Selecione os dez produtos que proporcionaram as melhores vendas.*/

SELECT TOP 10 Production.Product.Name, Sales.SalesOrderDetail.ProductID, SUM(Sales.SalesOrderDetail.LineTotal) AS "TOTAL" 
FROM Sales.SalesOrderDetail, Production.Product
WHERE Sales.SalesOrderDetail.ProductID = Production.Product.ProductID
GROUP BY Production.Product.Name, Sales.SalesOrderDetail.ProductID, Sales.SalesOrderDetail.LineTotal
ORDER BY Sales.SalesOrderDetail.LineTotal DESC;

