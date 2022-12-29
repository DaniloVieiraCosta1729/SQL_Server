/*
A produção precisa do nome de todas as peças que pesam mais de 500 kg, mas não mais que 700 kg.
*/

SELECT Name, Weight FROM Production.Product WHERE Weight > 500 AND Weight <= 700;

/*
Além do pedido da produção, foi pedido pelo o marketing uma lista que contenha os trabalhadores que são assalariados e, ao mesmo tempo, casados.
*/

SELECT BusinessEntityID, JobTitle, MartialStatus, SalariedFlag FROM HumanResources.Employee WHERE MartialStatus = 'M' AND SalariedFlag = 1;

/*Outra forma de resolver - uma melhor - é pesquisando em multiplas tabelas. Isso nos permitirá mostrar uma tabela que reuna o nome, o BusinessEntityID e os status solicitados.*/

SELECT Person.Person.FirstName, HumanResources.Employee.BusinessEntityID, HumanResources.Employee.JobTitle, HumanResources.Employee.MarItalStatus, HumanResources.Employee.SalariedFlag
FROM Person.Person, HumanResources.Employee
WHERE HumanResources.Employee.MaritalStatus = 'M' AND HumanResources.Employee.SalariedFlag = 1 AND Person.Person.BusinessEntityID = HumanResources.Employee.BusinessEntityID;

/*
O financeiro requisitou o email do usuário Peter Krebs para que possa ser enviada a cobrança.
*/

SELECT Person.Person.FirstName, Person.Person.LastName, HumanResources.Employee.JobTitle, Person.EmailAddress.EmailAddress
FROM Person.Person, HumanResources.Employee, Person.EmailAddress
WHERE Person.Person.BusinessEntityID = HumanResources.Employee.BusinessEntityID AND Person.Person.BusinessEntityID = Person.EmailAddress.BusinessEntityID;