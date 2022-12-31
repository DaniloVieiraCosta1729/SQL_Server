/*

    Testanto o BETWEEN:

    SELECT TOP 9 Name, ListPrice FROM Production.Product WHERE ListPrice BETWEEN 100 AND 500 ORDER BY ListPrice DESC;

    SELECT Person.Person.FirstName, Person.Person.LastName, HumanResources.Employee.VacationHours
    FROM Person.Person, HumanResources.Employee
    WHERE HumanResources.Employee.VacationHours BETWEEN 10 AND 40 ORDER BY HumanResources.Employee.VacationHours DESC;

    SELECT Name, ListPrice FROM Production.Product WHERE ListPrice NOT BETWEEN 100 AND 800 ORDER BY Name ASC;
        
*/

/*

    Testando o IN: o IN é usado como uma função que, em conjunto com o WHERE, auxilia o SELECT a retornar apenas os valores que pertencem a um certo conjunto específicado. 
    Por exemplo, suponha que você queira encontrar algumas pessoas específicas no banco, você pode simplesmente passar o BusinessEntityID dessas pessoas para uma lista e aplicar o IN. Ou ainda, se você deseja ver apenas os produtos de determinadas cores, você pode fazer o mesmo.

    SELECT FirstName, LastName, BusinessEntityID FROM Person.Person WHERE BusinessEntityID IN (1, 3, 4, 9, 10);

*/

/*

    Testando o LIKE: o like permite que nós pesquisemos apenas os primeiros caracteres daquilo que buscamos. Isso é útil, por exemplo, quando não saber exatamente como é a palavra que buscamos, mas sabemos como essa palavra começa.
    Exemplo:

    SELECT FirstName, LastName, BusinessEntityID FROM Person.Person WHERE FirstName LIKE 'Ca%';

    O sinal de porcentagem significa que após o 'Ca' pode haver qualquer expressão.

    SELECT FirstName, LastName, BusinessEntityID FROM Person.Person WHERE FirstName LIKE 'Al%' AND BusinessEntityID BETWEEN 30 AND 300 ORDER BY LastName ASC;

    Podemos também pesquisar pelo final da expressão, para isso, colocamos o % no inicil da string que estamos pesquisando.

    SELECT FirstName, LastName, BusinessEntityID FROM Person.Person WHERE FirstName LIKE '%TO' AND BusinessEntityID BETWEEN 30 AND 300 ORDER BY FirstName;

    Podemos ainda pesquisar resultados que apresentam uma certa expressão sem especificarmos se tal expressão aparece no inícil, final ou em qualquer outra parte da string pesquisada.
    Para fazer isso, basta colocar a expressão pesquisa entre porcentagens: '%PESQUISA%'

    SELECT FirstName, LastName, BusinessEntityID FROM Person.Person WHERE FirstName LIKE '%en%' AND BusinessEntityID BETWEEN 1 AND 300;

*/

/*
    DESAFIO - Quantos dos produtos cadastrados no sistema custam mais que 1500 reais?
*/

SELECT CONT(Name) FROM Production.Product WHERE ListPrice > 1500;

/*
    DESAFIO - Quantas pessoas, cujo o sobrenome se inicia com a letra P, estão cadatradas em nosso sistema?
*/

SELECT COUNT(BusinessEntityID) FROM Person.Person WHERE LastName LIKE 'P%';

/*
    DESAFIO - Quantas são as cidades onde nossos clientes vivem?
*/

SELECT COUNT(DISTINCT CITY) FROM Person.Address;

/*
    DESAFIO - Quais cidades temos cadastradas em nosso sistema?
*/

SELECT DISTINCT CITY FROM Person.Address;

/*
    DESAFIO - Quantos produtos vermelhos custam entre 500 e 1000 usd?
*/

SELECT COUNT(Name) FROM Production.Product WHERE Color = 'Red' AND ListPrice BETWEEN 500 AND 1000;

/*
    DESAFIO - Quantos produtos têm a expressão 'road' em seu nome?
*/

SELECT COUNT(Name) FROM Production.Product WHERE Name LIKE '%ROAD%';
