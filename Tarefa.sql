-- create database clinica;
/*

create table tb_veterinarios(
id_veterinario Int(10),
nome varchar(100),
especialidade varchar(150),
telefone varchar(100),
primary key (id_veterinario)
);

create table tb_clientes(
id_cliente Int(10),
nome varchar(100),
endereco varchar(150),
telefone varchar(20),
primary key (id_cliente)
);

create table tb_Pets(
id_pet Int(10),
nome varchar(100),
tipo varchar(100),
raca varchar(100),
id_cliente Int(10),
data_nascimento date,
primary key(id_pet),
foreign key (id_cliente) references tb_clientes(id_cliente)
);

create table tb_atendimentos(
id_atendimento Int(10),
id_pet Int(10),
id_veterinario Int(10),
data_atendimento date,
descricao varchar(100),
primary key (id_atendimento),
foreign key (id_pet) references tb_Pets(id_pet),
foreign key (id_veterinario) references tb_veterinarios(id_veterinario)
);
*/

insert into tb_veterinarios values('1', 'Luciana', 'clinica','11-9689-7547');
insert into tb_veterinarios values('2', 'Fernanda', 'Cirugiã','11-96745-7517');
insert into tb_veterinarios values('3', 'Sandra', 'Raio-X','11-9645-4152');
select * from tb_veterinarios;

insert into tb_clientes values('1', 'Roberto', 'Rua Chamanta, 459', '11-2966-7896');
insert into tb_clientes values('2', 'Alessnadra', 'Rua Enta, 144', '11-2854-7896');
insert into tb_clientes values('3', 'Flavia', 'Rua Enta, 244', '11-2854-7896');
select * from tb_clientes;


insert into tb_Pets values('1', 'Julie', 'cachorra', 'Pastor alemao','1','2019-05-15');
insert into tb_Pets values('2', 'Fionna', 'cachorra', 'Labrador','3','2020-03-25');
insert into tb_Pets values('3', 'Thor', 'cachorro', 'Golden Retriver','2','2018-02-15');
select * from tb_Pets;



