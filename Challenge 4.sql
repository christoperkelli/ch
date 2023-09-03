#buat database dan tabel
create database kalbe;
show databases;
use kalbe;
create table inventory (item_code int(20),item_name char (40),item_price int(20),item_total int(20));
insert into inventory
values (2341,'Promag Tablet',3000,100);
insert into inventory
values (2342,'Hydro Coco 250ML',7000,20);
insert into inventory
values (2343,'Nutrive Benecol 100ML',20000,30);
insert into inventory
values (2344,'Blackmores Vit C 500Mg',95000,45);
insert into inventory
values (2345,'Entrasol Gold 370G',90000,120);
#update item_price
update inventory set item_price = 90000
#Insert item 2343 lagi
insert into inventory
values (2343,'Nutrive Benecol 50ML',10000,30)
#menghapus item total paling rendah
select *from inventory order by item_total asc limit 1;
delete from inventory where item_total = 20;
