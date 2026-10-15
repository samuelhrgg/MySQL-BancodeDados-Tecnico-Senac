use universidade_u;

select * from aluno;

desc aluno;
/* Excluindo coluna CPF pois está como chave primária */
ALTER TABLE aluno drop cpf;

/* Recriando coluna CPF */
alter table aluno add column cpf varchar(14) after nome;
update aluno set cpf = '111.111.111-11' where nome = 'Samuel Gurgel';
update aluno set cpf = '222.222.222-22' where nome = 'Maria das Graças';
update aluno set cpf = '333.333.333-33' where nome = 'Luciana Rodrigues';
update aluno set cpf = '444.444.444-44' where nome = 'José Neves'; 

/* Criando a chave primária artificial (id) */
alter table aluno add idaluno int primary key auto_increment;
alter table aluno modify idaluno int FIRST;

select * from aluno where idaluno = 2;