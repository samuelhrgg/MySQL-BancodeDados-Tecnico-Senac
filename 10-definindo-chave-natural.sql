use universidade_u;

select * from aluno;

update aluno set cpf = '111.111.111-11' where nome = 'Samuel Gurgel';
update aluno set cpf = '222.222.222-22' where nome = 'Maria das Graças';
update aluno set cpf = '333.333.333-33' where nome = 'Luciana Rodrigues';
update aluno set cpf = '444.444.444-44' where nome = 'José Neves'; 

select * from aluno where cpf = '111.111.111-11';

/*Alterando o nome do dono do CPF '111.111.111-11' para José Neves */
update aluno set nome = 'José Neves' where cpf = '111.111.111-11';

select * from aluno where nome = 'José Neves';

/*Transformando CPF para PRIMARY KEY*/
DESC aluno;
alter table aluno modify cpf varchar(14) primary key;



