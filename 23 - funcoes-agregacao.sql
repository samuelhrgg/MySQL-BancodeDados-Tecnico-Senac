/*Trabalhando com funções de agregação:
count, max, min, avg e sum*/

-- Count: projeta o total de registros da tabela
-- Max: projeta o maior valor de todos os regitros com base em uma coluna
-- Min: projeta o menor valor de todos os registros com base em uma coluna
-- Avg: projeta a média dos valores de todos os registros de uma coluna
-- Sum: projeta a soma dos valores de uma coluna

use universidade_u;
-- COUNT --
select * from aluno;
select count(*) from aluno;
select count(distinct nome) from aluno; -- não contabiliza valores iguais
-- COUNT(*) Conta todas as linhas
-- COUNT(coluna) conta apenas os valores não nulos da coluna informada.
-- COUNT(1) também conta todas as linhas

-- MAX:
select * from aluno;
select max(valor_pago) from aluno;

-- MIN:
select min(valor_pago) from aluno;

-- AVG:
select avg(valor_pago) from aluno;

-- SUM:
select sum(valor_pago) from aluno;

select 
	max(valor_pago),
    min(valor_pago),
    avg(valor_pago),
    sum(valor_pago)
from aluno;

-- Aplicando filtro com WHERE -- 
select count(*) from aluno where sexo = 'F';

select max(valor_pago) from aluno where sexo = 'M';

select min(valor_pago) from aluno where ativo_sn != 0;

-- Trabalhando com ALIAS (Apelidando Colunas) --
select 
	max(valor_pago) as maior_valor,
    min(valor_pago) as menor_valor,
    avg(valor_pago) as media,
    sum(valor_pago) as soma
from aluno;

-- Descobrindo o maior valor pago e o nome:
SELECT nome,valor_pago FROM aluno WHERE valor_pago = (
	SELECT MAX(valor_pago) FROM aluno);








