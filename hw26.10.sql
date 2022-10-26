/*-- Домашка:
-- Создайте таблицу goods:
id первичный ключ автоинкремент
title строка 128
quantity строка 128
price целое число*/

use group_35_36_1;
drop table goods;
create table goods (
	id integer primary key auto_increment,
  	title varchar(128),
  	quantity varchar(128),
  	price numeric  	
);
-- Добавьте 10 строк
set sql_safe_updates = 0;
insert into goods (title,quantity,price) values('Ski',20,600);
insert into goods (title,quantity,price) values('blade',30,200);
insert into goods (title,quantity,price) values('Roller',20,300);
insert into goods (title,quantity,price) values('Ball',20,20);
insert into goods (title,quantity,price) values('Rope',10,15);
insert into goods (title,quantity,price) values('dumbbell',60,50);
insert into goods (title,quantity,price) values('Bike',20,3000);
insert into goods (title,quantity,price) values('Snowbike',40,1020);
insert into goods (title,quantity,price) values('Ring',100,10);
insert into goods (title,quantity,price) values('Bote',1,11020);
insert into goods (title,quantity,price) values('Avto',1,21020);
-- Проверьте содержимое таблицы
select * from goods;
-- Найдите товары дешевле 1000
select 
* 
from goods
where price <1000;
-- Найдите товары, начинающиеся на А
select 
* 
from goods
where title like 'A%';
-- Удалите товары дороже 1000
delete from goods
where price >1000;
-- Очистите таблицу так, чтобы при повторном заполнении автоинкремент добавлял айдишники с 1
truncate goods;
select 
* 
from goods;