#--MYSQL SYNTAX--Opções para mostrar datas:

select curdate() as Data_Atual;
select curtime() as Hora_Atual;
select date_add(curdate(), interval 3 day) as data_vencimento;
select date_sub(curdate(),interval 10 day)as data_pedido;
select date_format(curdate(),'%d/%m/%y') as Data_Brasil;
