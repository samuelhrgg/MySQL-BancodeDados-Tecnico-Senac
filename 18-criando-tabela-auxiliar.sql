/*Criando tabela auxiliar aluno_curso*/

USE universidade_u;

CREATE TABLE aluno_curso(
	idAlunoCurso int auto_increment PRIMARY KEY,
    fk_idaluno int,
    fk_idcurso int
);

SELECT * FROM aluno_Curso;

/*Criando as chaves estrangeiras*/
ALTER TABLE aluno_curso ADD CONSTRAINT fk_aluno_curso
	FOREIGN KEY(fk_idaluno) references aluno(idAluno);

ALTER TABLE aluno_curso ADD CONSTRAINT fk_curso_aluno
	FOREIGN KEY(fk_idcurso) references curso(idCurso);

DESC aluno_curso;


