use dbinfox;

create table if not exists tbclientes(
	idcliente int primary key auto_increment,
    nomecliente varchar(50) not null,
    enderecocliente varchar(60),
    telefonecliente varchar(50) not null,
    email varchar(50) 
);

desc tbclientes;

insert into tbclientes(nomecliente, enderecocliente, telefonecliente, email)
values ('Linus Torvalds', 'Rua Kernel, 1995', '66666-6666', 'linus@linux.com');

select * from tbclientes;