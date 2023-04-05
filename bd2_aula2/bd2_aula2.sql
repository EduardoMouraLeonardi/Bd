-- Criação do Banco de Dados.
create database bd2_edu;

-- Seleção do banco de dados a ser ultilizado.
use bd2_edu; 

-- Criação da tabela no banco de dados selecionado.
create table produtos(
	id int primary key auto_increment, -- int= inteiro, primary key= define o elemento como chave primaria, auto_increment= adiciona +1 ao valor do elemento
    nome varchar(100)  -- varchar(100)= campo do tipo texto com limite de 100 caracteres
);

-- Inserir colunas em uma tabela ja criada.
alter table produtos
	add descrição text;
alter table produtos
	add valor float;

-- Inserir Valores na Tabela
insert into produtos (nome)
	values ('Pedra');
insert into produtos (nome)
	values ('Agua');
insert into produtos (nome)
	values ('Fogo');

-- Deleta uma coluna em uma tabela.
alter table produtos
	drop column descrição;
    
-- Modifica uma coluna em uma tabela.
alter table produtos
	modify column descrição varchar(255);

-- Selecionar uma tabela
select * from produtos;

-- Mosta as colunas e seus tipos de uma tabela. 
show columns from produtos;