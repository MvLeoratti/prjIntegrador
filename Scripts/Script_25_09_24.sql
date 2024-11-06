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

-- ADICIONAR UMA COLUNA NA TABEL
 -- ALTER TABLE tb_proprietario ADD idade INT(3) NOT NULL;
use bd_carro;
SELECT * FROM tb_proprietario;

-- EXCLUIR UMA COLUNA
-- ALTER TABLE tb_proprietario DROP column IDADE;


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
