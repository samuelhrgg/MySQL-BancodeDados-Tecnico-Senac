/* Where com LIKE */

use universidade_u;
select * from aluno;

select * from aluno where nome = 'Samuel Gurgel';
select * from aluno where nome like 'Samuel Gurgel';
select * from aluno where nome like '%s';
select * from aluno where nome like 's%';
select * from aluno where nome like '%s%';
select * from aluno where nome like 'j%s';

/* like com underline _ define a quantidade */
select * from aluno where nome like 'José _eves';
select * from aluno where nome like 'S_____ _____l';
select * from aluno where nome like '%ç__';

