-- 4) Altere o nome da tabela para 'carros'

-- 5) Altere o campo valor para float

-- 6) Retire da estrutura da tabela o campo 'endereco'

-- 7) Insira o campo 'observacao' que deve ser do tipo TEXT

use bd2_exercicios;

create table carro (
  id int(11) primary key auto_increment,
  nome varchar(200) not null,
  valor int(11),
  endereco varchar(255)
);

-- 4)
rename table carro to carros;

-- 5)
alter table carros
	modify column valor float;
    
-- 6)
alter table carros
	drop column endereco;
    
-- 7)
alter table carros
	add column observacao text; 
