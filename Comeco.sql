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
insert into aluno(id,nome,sexo,idade,id_materia,cidade)values(2,'Eduardo Montenegro','M',20,1,'São Paulo');
insert into aluno(id,nome,sexo,idade,id_materia,cidade)values(3,'Amanda Pereira','F',21,1,'Rio de Janeiro');
insert into aluno(id,nome,sexo,idade,id_materia,cidade)values(4,'Amanda Roberta','F',24,1,'Belo Horizonte');
insert into aluno(id,nome,sexo,idade,id_materia,cidade)values(5,'João Pedro','M',28,1,'Manaus');
insert into aluno(id,nome,sexo,idade,id_materia,cidade)values(6,'Rebecca Oliveira','F',23,1,'João Pessoa');
insert into aluno(id,nome,sexo,idade,id_materia,cidade)values(7,'Vinicius Gonçalves','M',21,1,'Porto Alegre');
insert into aluno(id,nome,sexo,idade,id_materia,cidade)values(8,'Sofia Linhares','F',25,1,'Florianópolis');

select * from aluno;

