-- MYSQL SYNTAX ! --

--tabelas do arquivo comeco.sql
--usando selects - DQL

use bancovitor;

--EXEMPLOS DE SELECT
select * from aluno as a inner join professor as p where a.id = p.id_prof;

select a.nome, a.id_materia, p.nome_prof, p.materia_id,p.materia_prof from aluno as a inner join professor as p on a.id_materia =4 and p.materia_id =4 ;

select * from aluno where nome like '%negro%'; --Algum nome com 'negro' no meio da string na tabela aluno?
select * from aluno where nome like 'Amanda%'; --Algum nome começa com 'Amanda'?
select * from aluno where nome like '%arte'; --Algum nome termina com a string 'arte'?

select round(avg(idade),0)as media_idade_aluno from aluno; --Verificando a media de idades dos alunos.

select cidade, count(idade) quantidade_idade from aluno group by cidade; --Selecionando cidade e contando quantas vezes elas aparecem.
select cidade, count(cidade) as quantidade_alunos  from aluno group by cidade having count(cidade) > 1; --Selecionando somente as cidades que aparecem mais de uma vez.
select idade, count(idade) quantidade_idade from aluno group by idade;

select nome_prof, max(idade) from professor group by nome_prof having max(idade) > 39;
select nome_prof, min(idade) from professor group by nome_prof having max(idade) < 39;

select nome,max(idade) from aluno group by nome having max(idade)> 25;

#SUBSELECT!!!!--Selects como condição: 

select id,nome,cidade from aluno where cidade in (select cidade from aluno where cidade = 'São Paulo');
select nome_prof,materia_prof,idade from professor where idade in(select idade from professor where idade =  40);

select materia_prof,count(materia_prof) from professor group by materia_prof;

select SalesOrderID, datepart(month,OrderDate) from Sales.SalesOrderHeader

#TRABALHANDO COM DATAS
select avg(Total),datepart(month,Date) as mes from Sales
group by  datepart(month,Date) order by mes



