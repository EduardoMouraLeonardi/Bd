-- 1) Execute a sequência de comandos
-- Crie um banco de dados chamado bd2exercicios
-- Diga que irá usar este banco de dados

-- 2) Crie uma tabela chamada usuarios que deverá conter os seguintes campos: id, nome, email, senha e perfil. Leve em consideração os dados que serão inseridos no item seguinte.

-- 3) insira os seguintes registros nesta tabela
-- Nome: André Neves
-- Email: andr@andr.com.br
-- senha: 123456789
-- perfil: desenvolvedor

-- Nome: Luciene
-- Email: lu@lu.com.br
-- senha: 987654321
-- perfil: administrador

-- Nome: Ana
-- Email: ana@ana.com.br
-- senha: 989898989
-- perfil: gerente

-- Obs.: Tente colocar a senha criptografada no banco de dados. Consulte a documentação para entender mais sobre criptografia e coloque SHA2 (256)
-- https://dev.mysql.com/doc/refman/8.0/en/encryption-functions.html#function_sha2

-- Criaçãp do Banco de Dados.
create database bd2_exercicios;

-- Seleção do Banco de Dados a ser ultilizado.
use bd2_exercicios;

-- Criação da Tabela no Banco de Dados selecionado.
create table usuarios(
	id int primary key auto_increment,
    nome varchar(50),
    email varchar(200),
    senha int(60),
    perfil varchar(200)
);

-- Inserção de dados na Tabela.
insert into usuarios(nome,email,senha,perfil)
	values('André Neves','andr@andr.com.br',sha2('123456789',256),'desenvolvedor');
insert into usuarios(nome,email,senha,perfil)
	values('Luciene','lu@lu.com.br',sha2('987654321',256),'administrador');
insert into usuarios(nome,email,senha,perfil)
	values('Ana','ana@ana.com.br',sha2('989898989',256),'gerente');

drop table usuarios;
    
-- Selecionar uma tabela
select * from usuarios;