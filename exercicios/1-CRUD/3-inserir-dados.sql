-- Insira 3 classes salariais na tabela salario_classe
INSERT INTO salario_classe(id_salario, salario, nivel)
VALUES
(1, 3500, 'estágiaria'),
(2, 4700, 'iniciante - grade 1'),
(3, 5300, 'iniciante - grade 2');

-- Insira 1 nova classe salarial, sem declarar o atributo id_salario

insert into salario_classe(salario, nivel)
values
(8500, 'gerencia'),
(10700, 'coordenador de área');