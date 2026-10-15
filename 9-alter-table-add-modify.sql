use universidade_u;

select * from aluno;
/*Descrevendo a tabela aluno */
desc aluno;

/*Adicionando campos */
alter table aluno add cpf varchar(11);
alter table aluno add email varchar(150) after nome;

/*Modificando colunas das tabelas */
alter table aluno modify column cpf varchar(14);
alter table aluno modify cpf varchar(14) after nome;
alter table aluno modify cpf varchar(14) first;
alter table aluno modify ativo_sn int;

