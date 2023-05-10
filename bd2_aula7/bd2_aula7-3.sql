create database bd2_edu;
use bd2_edu;
drop table alunos;

-- Definindo valores padrão para o caso do campo ser deixado em branco
create table alunos(
	id int primary key auto_increment,
    nome varchar(255) not null,
    cidade varchar(255) not null default 'Rio de Janeiro',
    idade int
);

insert into alunos(nome, cidade, idade) values('Eduardo','Rio de Janeiro',20);
insert into alunos(nome, cidade, idade) values('André','',22);