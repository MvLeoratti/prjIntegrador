use bd_carros;

-- seleciona todos os registros
select * from tb_proprietario;
select * from tb_carros;

-- seleciona apenas colunas informais
SELECT MARCA,MODELO FROM tb_carros;
-- SELECIONA O MAIOR E O MENOR VALOR
SELECT MAX(VALOR) AS 'MAIOR_VALOR' FROM TB_CARROS;
SELECT min(VALOR) AS 'MAIOR_VALOR' FROM TB_CARROS;

SELECT * FROM tb_carros;

-- SELECIONAR UM ELEMENTO ESPECIFICO
SELECT * FROM tb_carros where id = 1;

-- seleciona todos os elementos que tem a mwsma marca
select * from tb_carros where marca = 'Honda';

select * from tb_carros where cor = 'verde';
select count(id) from tb_carros;
select count(marca) from tb_carros;

-- SELECIONA O MAIOR E MENO VALOR REGISTRADO + COLUNAS INFORMADAS
SELECT MARCA,MODELO, ANO, VALOR FROM tb_carros WHERE VALOR = (SELECT MIN(VALOR) FROM tb_carros);

-- soma de valores registrados
Select sum(valor) from tb_carros;

-- selecioa e exibi os registros em ordem cresente e decresente
select * from tb_carros
order by modelo desc;

select * from tb_carros
order by modelo asc;

-- informar a quantidae de um determinado valor entre dois anos
select count(id) as 'Quantidade de Registros', marca, ano from tb_carros where ano between '1990' and '2024' group by marca, ano