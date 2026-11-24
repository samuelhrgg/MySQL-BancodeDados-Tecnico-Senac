-- Trabalhando com tipo de dado ENUM -- 
/* Permite definir um conjunto fixo de dados possíveis para 
serem utilizados como valor de um registro em uma coluna. 
Permite inclusão de apenas um único dado dentre as opções
possíveis*/

-- Utilizamos para fixar possíveis valores para uma coluna
USE universidade_u;

SELECT * FROM TELEFONE;
ALTER TABLE TELEFONE MODIFY COLUMN tipo enum('res','com','cel');
DESC Telefone;
-- OBS: Adptar o ID 2 para o ID correspondente à 'cel' no seu banco
UPDATE telefone set tipo = 'res' where idtelefone = 2;
ALTER TABLE TELEFONE MODIFY COLUMN tipo enum('res','com','wpp');
UPDATE telefone set tipo = 'wpp' where idtelefone = 2;


