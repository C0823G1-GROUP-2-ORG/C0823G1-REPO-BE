create database view_index_store_procedure;

use view_index_store_procedure;

create table products(
p_id int primary key auto_increment,
p_code varchar(50) unique not null,
p_name varchar(50) unique not null,
p_price long not null,
check (p_price >= 0 and p_price < 1000000000),
p_amount long not null,
check (p_amount >= 0),
p_description varchar(50),
p_status varchar(50),
is_delete bit(1) default 0
);

insert into products (p_code,p_name,p_price,p_amount,p_description,p_status)
values('A001','Tu lanh', 5, 5, 'Cao 2m','Hiện đại'),
('B002','May giat', 6, 4, 'Cao 1m','Tiện nghi'),
('C003','Lò vi sóng', 3, 7, 'Nặng 2kg','Đời mới');

-- Bước 3:
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
-- So sánh câu truy vấn trước và sau khi tạo index
alter table products 
add unique index_code(p_code),
add index index_name_price (p_name(50), p_price(50));

explain select * from products where p_code = 'A001' and is_delete = 0;

select * from products where p_code = 'A001' and is_delete = 0;

explain select * from products where p_name = 'Tu lanh' and p_price = 5 and is_delete = 0;

select * from products where p_name = 'Tu lanh' and p_price = 5 and is_delete = 0;

-- Tốc độ truy vấn gần như bằng 0

-- Bước 4:
-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
-- Tiến hành sửa đổi view
-- Tiến hành xoá view
create view view_products as
select p_code, p_name, p_price, p_status 
from products;

create or replace view view_products as
select p_code, p_name, p_price, p_status, p_amount 
from products;

drop view view_products;

-- Bước 5:
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
-- Tạo store procedure thêm một sản phẩm mới
-- Tạo store procedure sửa thông tin sản phẩm theo id
-- Tạo store procedure xoá sản phẩm theo id
delimiter //
create procedure get_all_products()
begin
select * from products where is_delete = 0;
end;
// delimiter ;
call get_all_products();

delimiter //
create procedure add_products(p_code varchar(50), p_name varchar(50), p_price int, p_amount int, p_description varchar(50), p_status varchar(50))
begin
insert into products (p_code,p_name,p_price,p_amount,p_description,p_status)
values(p_code,p_name,p_price,p_amount,p_description,p_status);
end;
// delimiter ;

call add_products('D004','Ghế',1,2,'Ghế gỗ','Vừa nhập');

delimiter //
create procedure edit_products(input_id int, new_p_name varchar(50))
begin
set sql_safe_updates = 0;
update products 
set p_name = new_p_name
where p_id = input_id  and is_delete = 0;
set sql_safe_updates = 1;
end;
// delimiter ;

call edit_products(1, 'aaa');

delimiter // 
create procedure remove_products(input_id int)
begin
set sql_safe_updates = 0;
update products
set is_delete = 1
where p_id = input_id;
set sql_safe_updates = 1;
end;
// delimiter ;

call remove_products(1);



