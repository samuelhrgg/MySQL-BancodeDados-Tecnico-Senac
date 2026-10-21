/* Where utilizando IN e NOT IN */

use universidade_u;
select * from aluno;

/* Buscando nomes sem IN */
select * from aluno where nome = 'Samuel Gurgel' or 
nome = 'José Neves' or nome = 'Maria das Graças';

/*Buscando nomes com IN */
select * from aluno where nome in ('Samuel Gurgel','José Neves');

/*Buscando nomes com NOT IN */
select * from aluno where nome not in('Samuel Gurgel', 'José Neves');