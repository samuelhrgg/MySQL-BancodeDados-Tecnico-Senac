/* Between para valores números e data, 
para intervalos = de/até */
use universidade_u;
select * from aluno;

/* sem between */
select * from aluno
where valor_pago > 600 and valor_pago <=1000;

/* com between */
select * from aluno
where valor_pago between 600 and 1000;

/* sem between analisando datas */
select * from aluno 
where data_inscricao >= '2020-01-01' and data_inscricao <= '2024-12-31';

/* com between analisando datas */
select * from aluno
where data_inscricao between '2020-01-01' and '2024-12-31';


