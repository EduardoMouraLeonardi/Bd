create database bd2_edu;
use bd2_edu;
drop table alunos;

-- Ultilização do CHECK ao Alterar a tabela.
create table alunos(
	id int primary key auto_increment,
    nome varchar(255) not null,
    cidade varchar(255) not null,
    idade int
);

-- Checa se os valores que estão entrando na tabela correspondem com valores pre definidos.
alter table alunos
	add constraint chk_alunos check(idade >= 18 and cidade = 'Rio de Janeiro');
    
-- Deletando a constraint
alter table alunos
	drop constraint chk_alunos;