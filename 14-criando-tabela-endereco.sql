USE universidade_u;

select * from aluno;
/* criar as colunas que ainda não existem de endereço*/
ALTER TABLE aluno
add column logradouro varchar(150),
add column numero varchar(10),
add column complemento varchar(100),
add column bairro varchar(100);

/*Inserindo registros para essas colunas novas */
UPDATE aluno SET
	logradouro = 'Rua das Flores',
    numero = '120',
    complemento = 'Casa',
    bairro = 'Centro'
WHERE idaluno = 1;

UPDATE aluno SET
	logradouro = 'Avenida Brasil',
    numero = '450',
    complemento = 'Apt 202',
    bairro = 'Copacabana'
WHERE idaluno = 2;

UPDATE aluno SET
	logradouro = 'Rua São José',
    numero = '85',
    complemento = 'Bloco B',
    bairro = 'Santa Rita'
WHERE idaluno = 3;

UPDATE aluno SET
	logradouro = 'Rua dos Ipês',
    numero = '230',
    complemento = 'Fundos',
    bairro = 'São Pedro'
WHERE idaluno = 4;

/*Criando Tabela Endereco */
DESC aluno;
CREATE TABLE ENDERECO(
	iDEndereco int auto_increment primary key,
    logradouro varchar (100),
    numero varchar(12),
    complemento varchar(20),
    bairro varchar(100),
    cidade varchar(50),
    estado char(2),
    fk_idAluno int
);

SELECT * FROM ENDERECO;
/*Vinculando e criando a chave estrangeira idAluno*/
ALTER TABLE ENDERECO ADD CONSTRAINT fk_aluno_endereco
	FOREIGN KEY (fk_idaluno) REFERENCES ALUNO(idAluno);
    
DESC ENDERECO;
