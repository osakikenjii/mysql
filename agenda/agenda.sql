/**
 Agenda de contatos
 @author Victor kenji osaki figueiredo
*/

-- exibir bancos de dados do servidor
show databases;
-- criar um novo banco de dados
create database dbagenda;
create database dbteste;

-- excluir um banco de dados
drop database dbteste;

-- selecionar o banco de dados
use dbagenda;

-- verificar tabelas existentes
show tables;

-- criando uma tabela

-- Toda tabela precisa ter uma chave primária (PK)
-- int (tipos de dados) -> numeros iteirios
-- primary key -> transforma este campo em chave primaria 
-- auto_increment -> numeração automatica
-- varchar -> tipo de dados  equivalente a string (50) numero maximo de caracteres
-- not null -> preenchimento obrigtorio
-- unique -> não permite valores duplicados na tebala

create table contatos(
	id int primary key auto_increment,
    nome varchar(50) not null,
    fone varchar(15) not null,
    email varchar(50) unique
);
-- descrição da tabela
describe contatos;

-- alterar o nome do campo na atabela
alter table contatos change nome contato varchar(50) not null;

-- adicionar um novo campo (coluna) na tabela
alter table contatos add column obs varchar (250);

-- adicionar um novo campo (coluna) em um local especifico da tabela 
alter table contatos add column fone2 varchar(15) after fone;

-- modificar o tipo de dado e/ou validação na coluna 
alter table contatos modify column fone2 int;
alter table contatos modify column email varchar (100) not null;

-- excliuir uma coluna da tabela
alter table contatos drop column obs;

-- excluir a tebela 
-- drop table contatos;


-- CRUD (create read update delete)
-- opereação básica do banco de addos

-- CRUD create 
insert into contatos(nome,fone,email)
values ('Victor','99999-9999,','v@gmail.com');

insert into contatos(nome,fone,email)
values ('pedro','999999-9999,','p@gmail.com');

insert into contatos(nome,fone,email)
values ('daniel','999999-9999,','d@gmail.com');

insert into contatos(nome,fone,email)
values ('gabriel','999999-9999,','g@gmail.com');

insert into contatos(nome,fone,email)
values ('henrique','999999-9999,','h@gmail.com');

insert into contatos(nome,fone)
values ('rafael','999999-9999');

-- selecionsr colunas especificas da tabela
select nome, fone from contatos;

-- CRUD read
-- selecionar todos os dados resgitro da tabela
select * from contatos;

-- dia 05/10/2021 --------------------------------------------

-- selecionar colunas em ordem crescente e decrescente(asc desc)
select * from contatos order by nome;
select id,nome from contatos order by id desc;

-- uso de filtros
select * from contatos where id = 7;
select * from contatos where nome = 'pedro';
select * from contatos where nome like 'B%';

-- CRUD update 
update contatos set email='r@gmail.com' where id = 7;
update contatos set nome = 'lucas' where id = 8;
update contatos set nome = 'osvaldo' where id = 9;
update contatos set email ='l@gmail.com'  where id  = 8;
update contatos set email = 'o@gmail.com' where id = 9;
update contatos set nome = 'heder', fone = '888888-8888',  email = 'heder@gmail.com' where id=9;

-- CRUD delete 
delete from contatos where id=9;






show tables;