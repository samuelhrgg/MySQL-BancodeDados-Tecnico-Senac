USE universidade_u;

select * from aluno;
/*apagando coluna endereço endereço */
ALTER TABLE aluno DROP column endereco;

/*adicionando colunas cidade e estado*/
ALTER TABLE aluno ADD cidade varchar(50) after telefone; 
ALTER TABLE aluno ADD estado char(2) after cidade; 

/* update nos dados adicionando cidade e estado */
update aluno set cidade = 'Muriaé', estado = 'MG' where idaluno = 1;
update aluno set cidade = 'Rio de Janeiro', estado = 'RJ' where idaluno = 2;
update aluno set cidade = 'Miradouro', estado = 'MG' where idaluno = 3;
update aluno set cidade = 'Belisário', estado = 'MG' where idaluno = 4;


