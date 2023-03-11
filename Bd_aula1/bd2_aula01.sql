-- Criação do Banco de Dados.
create database bd2_edu;

-- Seleção do banco de dados a ser ultilizado.
use bd2_edu; 

-- Criação da tabela no banco de dados selecionado.
create table clientes(
	id int primary key auto_increment, -- int= inteiro, primary key= define o elemento como chave primaria, auto_increment= adiciona +1 ao valor do elemento
    nome varchar(100), -- varchar(100)= campo do tipo texto com limite de 100 caracteres
    sobrenome varchar(100),
    endereco varchar(255),
    cidade varchar(50),
    uf varchar(2)
);

-- Inserir Valores na Tabela
insert into clientes (nome, sobrenome, endereco, cidade, uf)
	values ('Eduardo','Moura Leonardi','Marte','Artemis1','MT');

insert into clientes (nome, sobrenome, endereco, cidade, uf)
	values ('Eduardo','Moura Leonardi','Marte','Artemis1','MT');

insert into clientes (nome, sobrenome, endereco, cidade, uf)
	values ('Eduardo','Moura Leonardi','Marte','Artemis1','MT');
    
-- Selecionar uma tabela
select * from clientes;