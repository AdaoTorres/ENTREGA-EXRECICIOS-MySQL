CREATE DATABASE  db_farmacia_bem_estar;

USE  db_farmacia_bem_estar;

CREATE TABLE tb_categoria(
	id BIGINT auto_increment,
    nome_categoria VARCHAR(255),
    
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
	id BIGINT auto_increment,
    nome VARCHAR(255),
    quantidade INT,
    valor INT,
    tipo VARCHAR(255),
	categoria_id BIGINT,
    
    PRIMARY KEY(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria(nome_categoria)
VALUES("Rémedio");

INSERT INTO tb_categoria(nome_categoria)
VALUES("Produtos Capilares");

INSERT INTO tb_categoria(nome_categoria)
VALUES("Higiene Pessoal");

INSERT INTO tb_categoria(nome_categoria)
VALUES("Suplementos Alimentares");

INSERT INTO tb_categoria(nome_categoria)
VALUES("Bebidas");

SELECT * FROM tb_categoria;

INSERT INTO tb_produtos(nome, quantidade, valor, tipo, categoria_id)
VALUES("Diclofenaco",2,11,"Anti-inflamatório",1);

INSERT INTO tb_produtos(nome, quantidade, valor, tipo, categoria_id)
VALUES("Dipirona",1,7.99,"Analgésico",1);

INSERT INTO tb_produtos(nome, quantidade, valor, tipo, categoria_id)
VALUES("Shampoo",4,19.90,"Cuidado com o cabelo",4);

INSERT INTO tb_produtos(nome, quantidade, valor, tipo, categoria_id)
VALUES("Multivitamínico",2,79,"Imunidade",2);

INSERT INTO tb_produtos(nome, quantidade, valor, tipo, categoria_id)
VALUES("Fluoxetina",6,129,"Antidepressivo",1);

INSERT INTO tb_produtos(nome, quantidade, valor, tipo, categoria_id)
VALUES("Água",1,1.99,"Hidratação",5);

INSERT INTO tb_produtos(nome, quantidade, valor, tipo, categoria_id)
VALUES("Franol",10,5,"Bronquiodilatador",1);

INSERT INTO tb_produtos(nome, quantidade, valor, tipo, categoria_id)
VALUES("Desodorante",1,16,"Antitraspirante",3);


SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE  valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%'; 

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_categoria.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_categoria.id = tb_produtos.categoria_id 
WHERE nome_categoria LIKE "%rémedio%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_categoria.id = tb_produtos.categoria_id 
WHERE tb_categoria.id = 3;