-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
select 
BillingCountry as pais, 
sum(total) as soma_compras,
count(total) as qnt_compras_realizadas,
min(total) as menor_compra,
max(total) as maior_compra, 
round(avg(total), 2) as ticket_medio
from invoices
WHERE
BillingCountry = 'Austria';