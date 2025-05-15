-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
select DISTINCT 
Country as pais, 
State as estado_sigla, 
case 
  when State = 'SP' then 'São Paulo' 
  when State = 'RJ' then 'rio da janeiro'
  else 'Estado desconhecido'
  end as estado
  from Customers 
  where Country Like 'Brazil';
