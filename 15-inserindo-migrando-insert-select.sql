/*Migrando as informaç~es de endereço da tabela aluno
para tabela endereco*/

USE universidade_u;
SELECT * FROM ALUNO;
SELECT * FROM ENDERECO;

/*Consultando os dados de endeço na tabela aluno*/
select logradouro,numero,complemento,bairro,cidade,estado
	from aluno;
    
/*Inserindos os dados com insert/select */
 insert into endereco(logradouro,numero,complemento,bairro,cidade,
	estado, fk_idaluno)
    select logradouro,numero,complemento,bairro,cidade,estado,idaluno
    from aluno;

SELECT * FROM ENDERECO;

SELECT * FROM ALUNO;

/*Deletando colunas referentes à endereço da tabela aluno */

alter table aluno drop column logradouro;




