CREATE DATABASE universidade_u;

USE universidade_u;

/* Criando tabela aluno novamente */
CREATE TABLE aluno(
	nome varchar(25),
    sexo char(1),
    endereco text,
    telefone varchar(20),
    valor_pago float(10,2),
    ativo_sn int,
    data_inscricao date
);