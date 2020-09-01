--ESTES SÃO DADOS DE DATA DEFINITION LANGUAGE --DDL 

create database bancodedados;

use bancodedados;

create table aluno(
id int primary key not null,
nome varchar (60) not null,
sexo char(1),
idade int not null,
id_materia int,
cidade varchar (15)
);

create table professor(
id_prof int primary key not null,
nome_prof varchar (60) not null,
sexo_prof char(1),
idade int
materia_prof varchar (10),
cidade_prof varchar (15),
materia_id int,
);

insert into aluno(id,nome,sexo,idade,id_materia,cidade)values(1,'Vitor Duarte','M',21,1,'São Paulo');
insert into aluno(id,nome,sexo,idade,id_materia,cidade)values(2,'Eduardo Montenegro','M',20,2,'São Paulo');
insert into aluno(id,nome,sexo,idade,id_materia,cidade)values(3,'Amanda Pereira','F',21,4,'Rio de Janeiro');
insert into aluno(id,nome,sexo,idade,id_materia,cidade)values(4,'Amanda Roberta','F',24,4,'Belo Horizonte');
insert into aluno(id,nome,sexo,idade,id_materia,cidade)values(5,'João Pedro','M',28,3,'Manaus');
insert into aluno(id,nome,sexo,idade,id_materia,cidade)values(6,'Rebecca Oliveira','F',23,1,'João Pessoa');
insert into aluno(id,nome,sexo,idade,id_materia,cidade)values(7,'Vinicius Gonçalves','M',21,2,'Porto Alegre');
insert into aluno(id,nome,sexo,idade,id_materia,cidade)values(8,'Sofia Linhares','F',25,3,'Florianópolis');

select * from aluno;

--1 PROGRAMAÇÃO
--2 BANCO DE DADOS
--3 MACHINE LEARNING
--4 ESTATÍSTICA

insert into professor(id_prof,nome_prof,sexo_prof,idade,materia_prof,cidade_prof,materia_id)values(1,'Rogerio','M',35,'Programação','Belo Horizonte',1);
insert into professor(id_prof,nome_prof,sexo_prof,idade,materia_prof,cidade_prof,materia_id)values(2,'Ricardo','M',40,'Machine Learning','São Paulo',3);
insert into professor(id_prof,nome_prof,sexo_prof,idade,materia_prof,cidade_prof,materia_id)values(3,'Kenia','F',37,'Banco de dados','Rio de Janeiro',2);
insert into professor(id_prof,nome_prof,sexo_prof,idade,materia_prof,cidade_prof,materia_id)values(4,'Marcia','F',36,'Estatística','São Paulo',4);
insert into professor(id_prof,nome_prof,sexo_prof,idade,materia_prof,cidade_prof,materia_id)values(5,'Mariana','F',51,'Programação','São Paulo',1);
insert into professor(id_prof,nome_prof,sexo_prof,idade,materia_prof,cidade_prof,materia_id)values(6,'Edson','M',42,'Banco de dados','São Paulo',2);
insert into professor(id_prof,nome_prof,sexo_prof,idade,materia_prof,cidade_prof,materia_id)values(7,'Tatiana','F',44,'Estatística','Porto Alegre',4);
insert into professor(id_prof,nome_prof,sexo_prof,idade,materia_prof,cidade_prof,materia_id)values(8,'Gilson','M',39,'Machine Learning','São Paulo',3);

select * from professor;

select * from aluno as a inner join professor as p where a.id = p.id_prof;


