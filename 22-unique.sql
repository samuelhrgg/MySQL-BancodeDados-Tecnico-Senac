-- Unique Constraint
/* Indica que os valores de uma determianda coluna devem
ser únicos para todos os registros, semelhantes à chave primária

A diferença é que a Unique pode ser aplicado à várias colunas de
uma tabela enquanto a chave primária serve como uma coluna identificadora.*/

use universidade_u;
select * from aluno;

alter table aluno add constraint uc_aluno_cpf unique(cpf);

select * from aluno where cpf = '444.444.444-44';
update aluno set cpf = '444.444.444-20' where idaluno = 4;
desc aluno;

insert into aluno(
	nome,email,sexo,valor_pago,ativo_sn,data_inscricao,cpf)
values
('Fernando Silva','ismael.silva@gmail.com', 'm', 650 , 1, '2025-01-05','332.253.444-63');

desc aluno;

/* ------------------   ERRO DE AUTO_INCREMENTO NA COLUNA ID ALUNO --------------------------- */
ALTER TABLE aluno_curso DROP foreign key fk_aluno_curso;
ALTER TABLE endereco DROP foreign key fk_aluno_endereco;
ALTER TABLE telefone DROP foreign key fk_aluno_telefone;

desc telefone;
ALTER TABLE aluno modify column idaluno int not null auto_increment;

 -- MÉTODO ALTERNATIVO --
SET FOREIGN_KEY_CHECKS = 0; -- Desativando temporariamente as chaves do MYSQL
ALTER TABLE aluno modify column idaluno int not null auto_increment;
SET FOREIGN_KEY_CHECKS = 1; -- Ativando temporariamente as chaves do MYSQL

-- Recriando as chaves estrangeiras
ALTER TABLE aluno_curso ADD CONSTRAINT fk_aluno_curso FOREIGN KEY(fk_idaluno)
REFERENCES aluno(idaluno);

ALTER TABLE endereco ADD CONSTRAINT fk_aluno_endereco FOREIGN KEY(fk_idaluno)
REFERENCES aluno(idaluno);

ALTER TABLE telefone ADD CONSTRAINT fk_aluno_telefone FOREIGN KEY(fk_idaluno)
REFERENCES aluno(idaluno);

desc telefone;
desc endereco;
desc aluno_curso;

SHOW INDEX FROM endereco;
-- Removendo temporariamente a chave estrangeira:
ALTER TABLE endereco DROP FOREIGN KEY fk_aluno_endereco;

-- Removendo o índice UNIQUE:
ALTER TABLE endereco DROP INDEX uc_endereco_fkidaluno;

-- Criando um índice comum:
ALTER TABLE endereco ADD INDEX (fk_idAluno);

-- Recriando a chave estrangeira:
ALTER TABLE endereco ADD CONSTRAINT fk_aluno_endereco
FOREIGN KEY (fk_idAluno) REFERENCES aluno(idaluno);

SHOW CREATE TABLE endereco;