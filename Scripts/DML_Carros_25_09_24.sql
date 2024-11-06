-- Criar a base de dados
-- CREATE DATABASE bd_carro;
-- Acessar a base de dados
use bd_carro;
-- Para Apagar a Base
-- DROP DATABASE bd_carro;
-- criar uma tabela
/*CREATE TABLE tb_carros(
	id INT(10) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    cor VARCHAR(50) NOT NULL,
    numero_vendas INT(10) NOT NULL,
    ano INT(5) NOT NULL,
    primary key(id)
);*/


-- NOT NULL -> CAMPO OBRIGATORIO

-- SELECT * FROM TB_CARRO;
/*
CREATE TABLE tb_proprietario(
id INT(10) NOT NULL,
nome VARCHAR(100) NOT NULL,
id_carro int(10) NOT NULL,





primary key(id),

foreign key (id_carro) references tb_carros(id)
);*/

select * from tb_proprietario;
/*
CREATE TABLE historico_preco(
id Int(10) not null auto_increment,
data_modificacao DATETIME,
valor DECIMAL(10,2),
valor_novo DECIMAL(10,2),
id_carro Int(10) NOT NULL,
primary key(id),
foreign key (id_carro) references tb_carros(id)
);
*/
SELECT * FROM HISTORICO_PRECO;

use bd_carro;
INSERT INTO tb_carros VALUES('1', 'FIAT', 'UNO', '5000.00', 'VERDE', '1','1997'); 
insert INTO tb_carros VALUES('2', 'VOLKWAGEN', 'VARIANTE', '66000.00', 'BRNACA', '4','1979'); 
insert into tb_carros (id, marca, modelo, valor, cor, numero_vendas, ano) values('3', 'Honda','WRV', '130000.00', 'BRANCA','45','2024');

insert into tb_carros (id, marca, modelo, valor, cor, numero_vendas, ano) values('4', 'TOYOTA','RAV4', '500000', 'BRANCA','89','2025');
insert into tb_carros (id, marca, modelo, valor, cor, numero_vendas, ano) values('5', 'FIAT','TOURO', '800000', 'PLATA','22','2023');
insert into tb_carros (id, marca, modelo, valor, cor, numero_vendas, ano) values('6', 'RENAULT','CRICKS', '4500000', 'AMARELO','882','2025');
insert into tb_carros (id, marca, modelo, valor, cor, numero_vendas, ano) values('7', 'TOYOTA','SEDAN', '850000', 'VERMELHO','854','2023');
insert into tb_carros (id, marca, modelo, valor, cor, numero_vendas, ano) values('8', 'FORDT','F1000', '4500000', 'PLATA','82','2025');
insert into tb_carros (id, marca, modelo, valor, cor, numero_vendas, ano) values('9', 'VOLKSWAGEN','FUSCA', '6985.00', 'CINZA','45','2023');
insert into tb_carros (id, marca, modelo, valor, cor, numero_vendas, ano) values('10', 'TOYOTA','YARIS', '150099.00', 'VERMELHO','500','2024');
insert into tb_carros (id, marca, modelo, valor, cor, numero_vendas, ano) values('11', 'HONDA','CITY', '169519.00', 'PLATA','900','2023');



INSERT INTO tb_proprietario (id, nome, id_carro, idade) values('1','MARCELLO', '1',55);
INSERT INTO tb_proprietario (id, nome, id_carro, idade) values('2','LUIS', '2',45);
INSERT INTO tb_proprietario (id, nome, id_carro, idade) values('3','CELIA','3', 25);
INSERT INTO tb_proprietario (id, nome, id_carro, idade) values('4','CARLA','5', 29);
INSERT INTO tb_proprietario (id, nome, id_carro, idade) values('5','LUCELIA','6', 29);
INSERT INTO tb_proprietario (id, nome, id_carro, idade) values('6','Francisco','8', 31);
INSERT INTO tb_proprietario (id, nome, id_carro, idade) values('7','Sergio','9', 44);
INSERT INTO tb_proprietario (id, nome, id_carro, idade) values('8','ALESSANDRO','10', 56);
INSERT INTO tb_proprietario (id, nome, id_carro, idade) values('9','VALDIR','11', 18);
INSERT INTO tb_proprietario (id, nome, id_carro, idade) values('10','ELAINE','7', 22);
INSERT INTO tb_proprietario (id, nome, id_carro,idade) values('11','ROBERTA','3', 23);

SELECT * FROM tb_carros;

update tb_carros set valor = 85200.00 where  id = 7;

delete from tb_proprietario where id =3;


