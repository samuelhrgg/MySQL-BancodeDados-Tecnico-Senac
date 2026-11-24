/* NULL E NOT NULL*/
-- NULL: Indica que as colunas podem aceitar valores nulos(padrão)
-- NOT NULL: Indique uma restrição que impede a atribuição de valores nulos
-- Tanto para o processo de UPDATE como de INSERT

USE universidade_u;
DESC  telefone;
-- Inserindo um registro vazio
INSERT INTO telefone(numero,tipo,fk_idaluno) values(null,null,null);
SELECT * FROM TELEFONE;

-- Modificando a coluna número para NOT NULL (VAI DAR ERRO)
ALTER TABLE telefone MODIFY COLUMN numero varchar(20) not null;

SELECT * FROM telefone WHERE numero IS NULL;
SELECT * FROM telefone WHERE idtelefone = 4;
DELETE FROM telefone WHERE idtelefone = 4;

-- Tentando rodar esse comando novamente
ALTER TABLE telefone MODIFY COLUMN numero varchar(20) not null;
ALTER TABLE telefone MODIFY COLUMN tipo enum('res','com','wpp') not null;
ALTER TABLE telefone MODIFY COLUMN fk_idaluno int not null;
DESC telefone;




