-- create database clinica;
/*

create table tb_veterinarios(
id_veterinario Int(10) not null,
nome varchar(100)not null,
especialidade varchar(150) not null,
telefone varchar(100) not null,
primary key (id_veterinario)
);

create table tb_clientes(
id_cliente Int(10) not null,
nome varchar(100) not null,
endereco varchar(150) not null,
telefone varchar(20) not null,
primary key (id_cliente)
);

create table tb_Pets(
id_pet Int(10) not null,
nome varchar(100) not null,
tipo varchar(100) not null,
raca varchar(100) not null,
id_cliente Int(10) not null,
data_nascimento date not null,
primary key(id_pet) not null,
foreign key (id_cliente) references tb_clientes(id_cliente)
);

create table tb_atendimentos(
id_atendimento Int(10) not null,
id_pet Int(10) not null,
id_veterinario Int(10) not null,
data_atendimento date not null,
descricao varchar(100) not null,
primary key (id_atendimento) not null,
foreign key (id_pet) references tb_Pets(id_pet),
foreign key (id_veterinario) references tb_veterinarios(id_veterinario)
);
*/
-- Exercicio -3
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


insert into tb_atendimentos values('1','2','2','2024-04-01', 'CLiente Novo');
insert into tb_atendimentos values('2','1','3','2024-03-15', 'Cadrastro Novo');
insert into tb_atendimentos values('3','3','1','2024-01-17', 'Retorno Cliente');
select * from tb_atendimentos;

-- EXERCICIO 4. Realize as seguintes consultas:
-- a. O pet com a data de nascimento mais antigo
select min(data_nascimento) from tb_Pets;

-- b. O pet com a data de nascimento mais recente
select max(data_nascimento) from tb_Pets;

-- c. A quantidade de pets cadastrados no banco de dados
select count(id_pet) from tb_pets;

-- d. Ordene o nome dos pets em ordem crescente
select * from tb_pets order by nome asc;

-- e. Ordene o nome dos pets em ordem decrescente
select * from tb_pets order by nome desc;

-- f. Ordene o nome dos veterinários em ordem crescente
select * from tb_veterinarios order by nome asc;

-- g. Ordene o nome dos veterinários em ordem decrescente
select * from tb_veterinarios order by nome desc;

-- h. A data de atendimento mais antiga
select min(data_atendimento) from tb_atendimentos;

-- i. A data de atendimento mais recente
select max(data_atendimento) from tb_atendimentos;

