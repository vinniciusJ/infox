use dbinfox;

create table if not exists tbos(
	os int primary key auto_increment,
    -- para pegar a data e o horario do server
    data_os timestamp default current_timestamp,
    equipamento varchar(150) not null,
    defeito varchar(150) not null,
    servico varchar(150),
    tecnico varchar(30),
    valor decimal(10, 2),
    idcliente int not null,
    foreign key(idcliente) references tbclientes(idcliente)
);

desc tbos;

insert into tbos(equipamento, defeito, servico, tecnico, valor, idcliente)
values ('notebook', 'Não liga', 'Troca da fonte', 'Godofredo', 100.50, 1);

select * from tbos;

-- o código abaixo traz informações de duas tabelas
select 
O.os, equipamento, defeito, servico, valor, 
C.nomecliente, telefonecliente
from tbos as O
inner join tbclientes as C
on (O.idcliente = C.idcliente);
