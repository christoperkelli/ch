use kalbe;
create table customers_order(order_no int(20),purchase_amount int(20),order_data date,customer_id int(20),salesman_id int(20));
insert into customers_order 
values(10001,150,'2022-10-05',2005,3002);
insert into customers_order 
values(10009,279,'2022-09-10',2001,3005);
insert into customers_order 
values(10002,65,'2022-10-05',2002,3001);
insert into customers_order 
values(10004,110,'2022-08-17',2009,3003);
insert into customers_order 
values(10007,948,'2022-09-10',2005,3002);
insert into customers_order 
values(10005,2400,'2022-07-27',2007,3001);
SELECT * 
FROM  customers_order
WHERE(purchase_amount <100 OR 
NOT(order_data>='2022-08-25' 
AND customer_id<2001));
