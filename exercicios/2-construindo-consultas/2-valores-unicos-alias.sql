-- Para a tabela "customers" crie uma consulta que retorne apenas os valores únicos da coluna Country
select distinct Country from customers;

-- Na consulta anterior, adicione a coluna Company para verificar as combinações únicas entre empresas e países
select distinct Country, Company from customers;

-- Nesta mesma consulta, atribua um alias com título em português para cada coluna
select distinct Country as Pais, Company as Empresa from customers;