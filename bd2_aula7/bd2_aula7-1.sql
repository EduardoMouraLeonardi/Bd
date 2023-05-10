create database bd2_edu;
use bd2_edu;

-- Ultilização do CHECK ao Criar a tabela.

create table alunos(
	id int primary key auto_increment,
    nome varchar(255) not null,
    cidade varchar(255) not null,
    idade int,
-- Checa se os valores que estão entrando na tabela correspondem com valores pre definidos.
    constraint chk_alunos check(idade>=18 and cidade = 'Rio de Janeiro')
);

insert into alunos(nome, cidade, idade) values('Eduardo','Rio de Janeiro',20);
insert into alunos(nome, cidade, idade) values('André','São Paulo',15);