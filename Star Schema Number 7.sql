use kalbe;
create table company_benefit (Funding int(20)primary key auto_increment,customers_order int(20),inventory  int (40),loss  int(20),transport  int(20), salary int (20));
create table inventory (item_code int(20),item_name char (40),item_price int(20),item_total int(20)primary key auto_increment);
create table Salary (Kerja_perjam int(20)primary key auto_increment);
create table loss (error_product int(20)primary key auto_increment,not_sold int (20));
create table customers_order(order_no int(20),purchase_amount int(20) primary key auto_increment ,order_data date,customer_id int(20),salesman_id int(20));
create table Transport (GAS int(20),Long_Route int(20)primary key auto_increment);
