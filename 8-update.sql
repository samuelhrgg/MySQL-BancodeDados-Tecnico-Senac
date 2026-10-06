/* UPDATE PARA ALTERAÇÕES DA DADOS */
use universidade_u;
select * from aluno;

UPDATE aluno SET ativo_sn = 0 where nome = 'Samuel Gurgel';

select * from aluno where nome = 'José Neves';
UPDATE aluno SET ativo_sn = 0, valor_pago = 400 where nome = 'José Neves';

UPDATE aluno 
SET telefone = '31999652101' where telefone = '339992120212';
