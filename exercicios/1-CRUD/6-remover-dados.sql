-- Da tabela invoice, remova o invoice cujo o InvoiceID corresponda ao valor 33
delete from invoices where InvoiceId = 33;

-- Da tabela invoice, remova todos os invoices cujo o Total seja menor do que 1
delete from invoices where Total < 1;