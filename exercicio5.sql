/*
    Apenas testando:

    SELECT TOP 10 Person.Person.FirstName, HumanResources.Employee.JobTitle, HumanResources.Employee.VacationHours
    FROM HumanResources.Employee, Person.Person
    WHERE HumanResources.Employee.BusinessEntityID = Person.Person.BusinessEntityID
    ORDER BY HumanResources.Employee.VacationHours DESC;

    SELECT TOP 10 Name, Color, ListPrice FROM Production.Product 
    WHERE ListPrice > 200 AND ListPrice < 500 ORDER BY ListPrice DESC;

*/

/*

    Obter o ProductID dos 10 produtos mais caros, listando-os do mais caro para o mais barato.

*/

SELECT TOP 10 ProductID, Name, ListPrice FROM Production.Product ORDER BY ListPrice DESC;

/*

    Obter o Nome e o número dos produtos que tem ProductID entre 1 e 4. 

*/

SELECT Name, ProductNumber, ProductID FROM Production.Product WHERE ProductID >= 1 AND ProductID <= 4;

/*Outra forma possível, fazendo uso da unicidade do ProductID, é:*/

SELECT TOP 4 Name, ProductNumber, ProductID FROM Production.Product ORDER BY ProductID ASC;
