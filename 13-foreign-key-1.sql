use universidade_u;

select * from aluno;
select idaluno, nome from aluno;
select * from telefone;

/*Adicionar a coluna FK*/
alter table telefone add column fk_idaluno int;

/*Adicionar a constraint fk_aluno_telefone transformar
essa coluna em uma chave estrangeira */
alter table telefone add constraint fk_aluno_telefone
	foreign key(fk_idaluno) references aluno(idaluno);
    
desc telefone;