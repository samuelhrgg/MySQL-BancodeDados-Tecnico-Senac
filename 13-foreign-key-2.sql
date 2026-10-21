use universidade_u;

select idaluno, nome from aluno;
select * from telefone;

/* Vinculando o telefone 11 2222-222 para o aluno com id = 1 */
update telefone set fk_idaluno = 1 where telefone 
	in ('32 9999-9921','21 9999-0121');

/*OUTRA FORMA DE FAZER A LINHA DE CIMA
Atualizando com idtelefone ao invés de número */
update telefone set fk_idaluno = 2 where idtelefone 
	in (1,2);


/* inserindo um telefone e atribuindo à um aluno*/
insert into telefone(numero,tipo,fk_idaluno)
values('21 9999-0121','res',4)



