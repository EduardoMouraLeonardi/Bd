create database bd2_edu;

use bd2_edu;

create table categorias(
	id int(11) primary key not null auto_increment,
    nome varchar(200) not null
);

create table produtos(
	id int(11) primary key not null auto_increment,
    nome varchar(80) not null,
    valor float not null,
    categoria_id int(11) not null,
    -- Define o campo categoria_id como chave esrtangeira, recebendo a chave primaria id da tabela categorias.
    foreign key(categoria_id) references categorias(id)
);

show columns from categorias;
