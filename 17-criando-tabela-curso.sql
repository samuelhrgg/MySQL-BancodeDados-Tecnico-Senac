/* Relembrando as regras de negócio:

Uma das solicitações do cliente foi permitir o armazenamento de mais de um telefone para o mesmo registro de aluno.
Nós identificamos anteriormente na tabela aluno que essa coluna era uma coluna multivalorada então
para atender à primeira forma normal nós transformamos essa coluna múltivalorada em uma nova tabela e 
utilizamos o relacionamento de um pra n entre aluno e telefone.

Cliente também solicitou e-mail e CPF. 

Agora o cliente disse que a universidade ministra cursos a distancia e gostaria de saber quais estados 
tem mais alunos e quais cursos são mais vendidos

*/

USE UNIVERSIDADE_U;

CREATE TABLE curso(
	idCurso int auto_increment primary key,
    descricao varchar(50)
);
select * from curso;
/*Inserindo valores*/
insert into curso(descricao)
values('Técnico em Des. de Sistemas');

insert into curso(descricao)
values('Técnico em Estética');

insert into curso(descricao)
values('Bacharelado em Ciência de Dados');

insert into curso(descricao)
values('Técnologo em ADS');

