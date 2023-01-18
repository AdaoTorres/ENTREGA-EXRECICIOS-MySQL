CREATE DATABASE rhh;
USE rhh;

CREATE TABLE colaboradores (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
data_nascimento DATE NOT NULL,
salario DECIMAL(10, 2) NOT NULL,
cargo VARCHAR(255) NOT NULL,
departamento VARCHAR(255) NOT NULL
);

INSERT INTO colaboradores (nome, data_nascimento, salario, cargo, departamento)
VALUES ("João Silva", "1990-01-01", 2500, "Gerente", "Financeiro"),
("Maria Santos", "1995-02-15", 1500, "Assistente", "Recursos Humanos"),
("Carlos Rodrigues", "1985-03-20", 3000, "Diretor", "Marketing"),
("Ana Paula", "1980-04-25", 2000, "Analista", "TI"),
("Lucas Oliveira", "1987-05-30", 1700, "Assistente", "Comercial");


SELECT nome, salario FROM colaboradores WHERE salario > 2000;

SELECT nome, salario FROM colaboradores WHERE salario <= 2000;
 
 SET SQL_SAFE_UPDATES =0;
 