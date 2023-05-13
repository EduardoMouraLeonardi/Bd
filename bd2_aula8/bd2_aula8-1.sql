create database bd2_edu;

use bd2_edu;
-- Ultilização do default now()
create table inscricoes(
	id int(11) primary key auto_increment,
    nome varchar(255) not null,
    data datetime not null default now() -- entra a data e hora atual como valor padrão do campo
);

insert into inscricoes (nome) values ('Eduardo');
insert into inscricoes (nome) values ('Andre');
insert into inscricoes (nome) values ('Lucas');

select * from inscricoes;