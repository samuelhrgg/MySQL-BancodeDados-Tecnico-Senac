use universidade_u;
 
select * from aluno;

/*conferindo as colunas à serem apagadas */
select logradouro,numero,complemento,bairro,cidade,estado from aluno;

/* Deletando colunas referentes à endereço da tabela aluno */
alter table aluno drop column logradouro;
alter table aluno drop column numero;
alter table aluno drop column complemento;
alter table aluno drop column bairro;
alter table aluno drop column cidade;
alter table aluno drop column estado;