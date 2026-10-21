/* Verificando a tabela */

USE universidade_u;
/* Inserir dados na tabela aluno */

/*insert into aluno(colunas)(valores); */
INSERT INTO aluno(
	nome, sexo, endereco,telefone, valor_pago,
    ativo_sn, data_inscricao
)VALUES(
	'Samuel Gurgel', 'M', 'Muriaé-MG', '32984241973',
    650.20, 1 ,'2019-01-03'
);

/* Segundo Registro */
INSERT INTO aluno(
	nome, sexo, endereco,telefone, valor_pago,
    ativo_sn, data_inscricao
)VALUES(
	'Maria das Graças', 'F', 'Itaperuna-RJ', '33999212012',
    1600.20, 1 ,'2020-02-13'
);

/* Terceiro Registro */
INSERT INTO aluno(
	nome, sexo, endereco,telefone, valor_pago,
    ativo_sn, data_inscricao
)VALUES(
	'José Neves', 'M', 'Fervedouro-MG', '31992912233',
    750, 1 ,'2017-05-01'
);

/* Quarto Registro */
INSERT INTO aluno(
	nome, sexo, endereco,telefone, valor_pago,
    ativo_sn, data_inscricao
)VALUES(
	'Luciana Rodrigues', 'F', 'São-Paulo', '31223115123',
    950.10, 1 ,'2025-01-07'
);



