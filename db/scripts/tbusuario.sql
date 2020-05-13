-- a linha abaixo cria um banco de dados
create database dbinfox;
-- a linha abaixo seleciona o banco de dados a ser utilizado
use dbinfox;
-- o bloco a seguir cria uma tabela
create table if not exists tbusuarios(
	iduser int primary key auto_increment,
    usario varchar(50) not null,
    telefone varchar(15),
    login varchar(15) not null unique,
    senha varchar(15) not null
); 
alter table tbusuarios change usario usuario varchar(30);

desc tbusuarios;

insert into tbusuarios(iduser, usuario, telefone, login, senha)
values (2, 'Maria de Assis', '88888-8888', 'mariaassis', '654321'),
(3, 'Administrador', '00000-0000', 'admin', 'admin');

select * from tbusuarios;

update tbusuarios set iduser=2 where iduser=3;

delete from tbusuarios where iduser=2;

