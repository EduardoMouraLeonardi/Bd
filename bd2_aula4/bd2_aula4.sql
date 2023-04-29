-- Restrições de tabelas
create database bd2_edu;
use bd2_edu;

-- Restrição: NOT NULL
-- Restrição pelo metodo de criação.
create table alunos(
	id int primary key auto_increment,
    nome varchar(80) not null
);

-- Força o erro de inserir um valor nulo em um campo que não pode ser nulo (ErrorCode: 1048).
insert into alunos (nome) values (null);

create table funcionario(
	id int primary key auto_increment,
	nome varchar(80)
);

-- Restrição pelo metodo de alteração.
alter table funcionario
	modify nome varchar(80) not null;

-- Força o erro de inserir um valor nulo em um campo que não pode ser nulo (ErrorCode: 1048).
insert into funcionario (nome) values (null);

-- Restrição: UNIQUE
-- Restrição pelo metodo de criação.
create table usuarios(
	id int primary key auto_increment,
    nome varchar(255) not null,
    email varchar(255) not null,
    unique (email)
);

insert into usuarios (nome, email) values ('Eduardo', 'eduardo@eduardo.com');
-- Preencher o campo email com um valor já inserido anteriormente força erro de duplicação de dado no campo (ErrorCode: 1062).
insert into usuarios (nome, email) values ('Eduardo 2', 'eduardo@eduardo.com');
