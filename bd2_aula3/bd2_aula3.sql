create database bd2_edu;

use bd2_edu;

create table teste(
	id int,
    nome varchar(80) not null
);

-- Adiciona a Condição de Chave Primaria a Coluna id.
alter table teste
	add constraint primary key (id);

-- Altera a Coluna id e adiciona as caracteristicas de not null(Não pode ser deixada em branco), 
-- auto_increment(Incrementa altomaticamente o valor do campo) e first(inicia o valor da coluna como 1) Pode estar depreciado  
alter table teste
	modify column id int(11) not null auto_increment first;   
    