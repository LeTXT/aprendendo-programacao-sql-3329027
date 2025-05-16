-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente
select 
cus.CustomerId as id_cliente, 
cus.FirstName as nome, 
SUM(inv.Total) as total_gasto
from 
invoices as inv 
inner join customers as cus on inv.CustomerId = cus.CustomerId
GROUP BY id_cliente;

-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30
select 
cus.CustomerId as id_cliente, 
cus.FirstName as nome, 
SUM(inv.Total) as total_gasto,
COUNT(inv.Total) as qnt_compras
from 
invoices as inv 
inner join customers as cus on inv.CustomerId = cus.CustomerId
GROUP BY id_cliente
having SUM(inv.Total) > 30;


-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente
select 
cus.CustomerId as id_cliente, 
cus.FirstName as nome, 
SUM(inv.Total) as total_gasto,
COUNT(inv.Total) as qnt_compras,
MAX(inv.Total) as maior_compra
from 
invoices as inv 
inner join customers as cus on inv.CustomerId = cus.CustomerId
GROUP BY id_cliente
having SUM(inv.Total) > 30;