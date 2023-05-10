-- Testando a chave estrangeira.
use bd2_edu;

-- Selecionar todos os dados das tabelas categorias e produtos
select * from categorias;
select * from produtos;

-- inner join de duas tabelas. inner join: estabelece uma relação entre campos de 2 tabelas ultilizando a chave estrangeira
select categorias.nome, produtos.nome, produtos.valor
	from produtos
    inner join categorias on produtos.categoria_id = categorias.id;