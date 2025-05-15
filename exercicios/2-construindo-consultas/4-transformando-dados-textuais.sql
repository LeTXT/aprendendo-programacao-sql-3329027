-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
select DISTINCT 
CustomerId as id, 
FirstName as Nome, 
LastName as Sobrenome, 
Address as Endereço
from customers
where Country Like 'bra%';

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
select DISTINCT 
CustomerId as id, 
FirstName as Nome, 
upper(LastName) as Sobrenome, 
Address as Endereço
from customers
where Country Like 'bra%';

-- Na consulta anterior, converta o nome para letras minúsculas
select DISTINCT 
CustomerId as id, 
lower(FirstName) as Nome, 
upper(LastName) as Sobrenome, 
Address as Endereço
from customers
where Country Like 'bra%';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
select DISTINCT 
CustomerId as id, 
lower(FirstName) as Nome, 
upper(LastName) as Sobrenome, 
FirstName || ' ' || LastName as nome_completo,
Address as Endereço
from customers
where Country Like 'bra%';

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
select DISTINCT 
CustomerId as id, 
lower(FirstName) as Nome, 
upper(LastName) as Sobrenome, 
FirstName || ' ' || LastName as nome_completo,
Replace(Address, 'Av. ', 'Avenida') as Endereco
from customers
where Country Like 'bra%';

-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
select DISTINCT 
CustomerId as id, 
lower(FirstName) as Nome, 
upper(LastName) as Sobrenome, 
FirstName || ' ' || LastName as nome_completo,
Replace(Address, 'Av. ', 'Avenida') as Endereco
from customers
where Country Like 'bra%';