-- Desenvolva uma consulta para a tabela "customers" que retorne apenas 10 linhas
select 
customerId as id, 
FirstName as nome, 
Country as pais
from customers
limit 10;

-- Usando a consulta anterior, ordene a coluna "Country" de forma crescente e "FirstName" de forma decrescente
select 
customerId as id, 
FirstName as nome, 
Country as pais
from customers
order by 
pais asc,
nome desc
limit 10;

-- Continue usando a consulta anterior, dessa vez retorne 10 resultados, no entando ignore as 3 primeiras linhas
select 
customerId as id, 
FirstName as nome, 
Country as pais
from customers
order by 
pais asc,
nome desc
limit 10 offset 3;