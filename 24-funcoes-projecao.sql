/* Trabalhando com Funções de Projeção:
Ceil, Floor, Truncate e Round 

Ceil: Retorna o menor valor inteiro ou igual ao valor em questão
Floor: Retorna o maior valor inteiro menor ou igual ao valor em questão
Truncate: Trunca a fração de valores númericos
Round: Retornar o valor arredondado para Cima ou para baixo dependendo da
fração de valor

*/

-- CEIL: Arredonda o valor para cima
select 17.4 as valor;
select ceil(17.4) as valor;

-- Floor: Arredonda o valor para baixo
select floor(19.555) as valor;

-- Trucate - Trunca a fração
select truncate(22.757, 1) as valor;
select truncate(75.679, 2) as valor;

-- Round - arredondamento para cima ou baixo
select round(55.7) as valor;
select round(55.5) as valor;
select round(55.4) as valor;
select round(55.757 , 2) as valor;

use universidade_i;

select nome, ceil(valor_pago) from aluno where idaluno in (1,4,5);
-- Média dos 3 regístros (↑) com valor arredondado (↓):
select round(avg(valor_pago),2) as media from aluno where idaluno in(1,4,5);

