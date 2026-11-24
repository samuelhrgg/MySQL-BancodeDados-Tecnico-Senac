use universidade_u;

~ 
 select * from aluno;
 select * from curso;
 select * from aluno_curso;
 
 /*fazendo inserção desses elementos */
insert into aluno_curso(fk_idaluno,fk_idcurso) values(1,3); #inserido ao aluno 1 o registro do curso id 3
insert into aluno_curso(fk_idaluno,fk_idcurso) values(1,4); #inserido ao aluno 1 o registro do curso id 4
insert into aluno_curso(fk_idaluno,fk_idcurso) values(2,2); #inserido ao aluno 2 o registro do curso id 2
insert into aluno_curso(fk_idaluno,fk_idcurso) values(3,1); #aluno 3 curso 1
insert into aluno_curso(fk_idaluno,fk_idcurso) values(3,2); 
insert into aluno_curso(fk_idaluno,fk_idcurso) values(3,3); 
insert into aluno_curso(fk_idaluno,fk_idcurso) values(3,4); 
insert into aluno_curso(fk_idaluno,fk_idcurso) values(4,1); #idaluno 4 ao idcurso 1 

