insert into loai_tai_khoan (ten_loai_tai_khoan)
values("Customer"),
("Staff"),
("Admin");

insert into bo_phan (ten_bo_phan)
values("Nhân viên"),
("Trưởng phòng"),
("Chủ chung cư");

insert into tai_khoan(ten_tai_khoan,mat_khau,ma_loai_tai_khoan,is_delete)
values("admin123","admin123",3,0),
("nhanvien001","nhanvien001",2,0),
("nhanvien002","nhanvien002",2,0),
("khachhang001","khachhanh001",1,0),
("khachhang002","khachhang002",1,0);

insert into nhan_vien(ho_ten,ngay_sinh,gioi_tinh,so_cmnd,luong,so_dien_thoai,email,dia_chi,ma_bo_phan,ma_tai_khoan,is_delete)
values("Võ Quốc Giàu","1999-01-01",0,"012345678",7000000,"0987654321","vogiau@gmail.com","Cẩm Lệ, Đà Nẵng",1,2,0),
("Nguyễn Trọng Hải","1997-01-01",0,"012345679",10000000,"0982654321","hainguyen@gmail.com","Hải Châu, Đà Nẵng",2,3,0);

insert into khach_hang(ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi,ma_tai_khoan,is_delete)
values("Nguyễn Tất Quyền","2003-02-02",0,"053214567","0852741963","quyennguyen@gmail.com","Hòa Khánh, Đà Nẵng",4,0),
("Nguyễn Đình Thái Bảo","1997-08-29",0,"055214567","0842741963","baonguyen@gmail.com","Ngũ Hành Sơn, Đà Nẵng",5,0);

insert into so_tang(so_tang)
values(1),(2),(3),(4),(5),(6);

insert into kieu_thue(ten_kieu_thue)
values("Ngày"),("Tháng"),("Năm");

insert into loai_can_ho(ten_loai_can_ho)
values("Studio"),("Family"),("Officetel");

insert into can_ho(ten_can_ho,dien_tich,chi_phi_thue,so_nguoi_toi_da,mo_ta_tien_nghi,ma_loai_can_ho,ma_kieu_thue,ma_so_tang,hinh_anh,tinh_trang,is_delete)
values("0101",50,500000,2,"Studio",1,1,1,"aaaa","Chưa có người thuê",0),
("0102",50,5000000,2,"Studio",1,2,1,"aaaa","Chưa có người thuê",0),
("0103",50,52000000,2,"Studio",1,3,1,"aaaa","Chưa có người thuê",0),
("0104",75,800000,6,"Family",2,1,1,"aaaa","Chưa có người thuê",0),
("0105",75,8000000,6,"Family",2,2,1,"aaaa","Chưa có người thuê",0),
("0106",75,80000000,6,"Family",2,3,1,"aaaa","Chưa có người thuê",0),
("0107",125,1000000,10,"Officetel",3,1,1,"aaaa","Chưa có người thuê",0),
("0108",125,10000000,10,"Officetel",3,2,1,"aaaa","Chưa có người thuê",0),
("0109",125,100000000,10,"Officetel",3,3,1,"aaaa","Chưa có người thuê",0),
("0201",50,520000,2,"Studio",1,1,2,"aaaa","Chưa có người thuê",0),
("0202",50,5200000,2,"Studio",1,2,2,"aaaa","Chưa có người thuê",0),
("0203",50,54000000,2,"Studio",1,3,2,"aaaa","Chưa có người thuê",0),
("0204",75,820000,6,"Family",2,1,2,"aaaa","Chưa có người thuê",0),
("0205",75,8200000,6,"Family",2,2,2,"aaaa","Chưa có người thuê",0),
("0206",75,84000000,6,"Family",2,3,2,"aaaa","Chưa có người thuê",0),
("0207",125,1100000,10,"Officetel",3,1,2,"aaaa","Chưa có người thuê",0),
("0208",125,11000000,10,"Officetel",3,2,2,"aaaa","Chưa có người thuê",0),
("0209",125,110000000,10,"Officetel",3,3,2,"aaaa","Chưa có người thuê",0),
("0301",50,530000,2,"Studio",1,1,3,"aaaa","Chưa có người thuê",0),
("0302",50,5300000,2,"Studio",1,2,3,"aaaa","Chưa có người thuê",0),
("0303",50,56000000,2,"Studio",1,3,3,"aaaa","Chưa có người thuê",0),
("0304",75,830000,6,"Family",2,1,3,"aaaa","Chưa có người thuê",0),
("0305",75,8300000,6,"Family",2,2,3,"aaaa","Chưa có người thuê",0),
("0306",75,86000000,6,"Family",2,3,3,"aaaa","Chưa có người thuê",0),
("0307",125,1200000,10,"Officetel",3,1,3,"aaaa","Chưa có người thuê",0),
("0308",125,12000000,10,"Officetel",3,2,3,"aaaa","Chưa có người thuê",0),
("0309",125,120000000,10,"Officetel",3,3,3,"aaaa","Chưa có người thuê",0),
("0401",50,540000,2,"Studio",1,1,4,"aaaa","Chưa có người thuê",0),
("0402",50,5400000,2,"Studio",1,2,4,"aaaa","Chưa có người thuê",0),
("0403",50,57000000,2,"Studio",1,3,4,"aaaa","Chưa có người thuê",0),
("0404",75,840000,6,"Family",2,1,4,"aaaa","Chưa có người thuê",0),
("0405",75,8400000,6,"Family",2,2,4,"aaaa","Chưa có người thuê",0),
("0406",75,87000000,6,"Family",2,3,4,"aaaa","Chưa có người thuê",0),
("0407",125,1400000,10,"Officetel",3,1,4,"aaaa","Chưa có người thuê",0),
("0408",125,14000000,10,"Officetel",3,2,4,"aaaa","Chưa có người thuê",0),
("0409",125,140000000,10,"Officetel",3,3,4,"aaaa","Chưa có người thuê",0),
("0501",50,550000,2,"Studio",1,1,5,"aaaa","Chưa có người thuê",0),
("0502",50,5500000,2,"Studio",1,2,5,"aaaa","Chưa có người thuê",0),
("0503",50,58000000,2,"Studio",1,3,5,"aaaa","Chưa có người thuê",0),
("0504",75,850000,6,"Family",2,1,5,"aaaa","Chưa có người thuê",0),
("0505",75,8500000,6,"Family",2,2,5,"aaaa","Chưa có người thuê",0),
("0506",75,88000000,6,"Family",2,3,5,"aaaa","Chưa có người thuê",0),
("0507",125,1500000,10,"Officetel",3,1,5,"aaaa","Chưa có người thuê",0),
("0508",125,15000000,10,"Officetel",3,2,5,"aaaa","Chưa có người thuê",0),
("0509",125,150000000,10,"Officetel",3,3,5,"aaaa","Chưa có người thuê",0),
("0601",50,560000,2,"Studio",1,1,6,"aaaa","Chưa có người thuê",0),
("0602",50,5600000,2,"Studio",1,2,6,"aaaa","Chưa có người thuê",0),
("0603",50,59000000,2,"Studio",1,3,6,"aaaa","Chưa có người thuê",0),
("0604",75,860000,6,"Family",2,1,6,"aaaa","Chưa có người thuê",0),
("0605",75,8600000,6,"Family",2,2,6,"aaaa","Chưa có người thuê",0),
("0606",75,89000000,6,"Family",2,3,6,"aaaa","Chưa có người thuê",0),
("0607",125,1600000,10,"Officetel",3,1,6,"aaaa","Chưa có người thuê",0),
("0608",125,16000000,10,"Officetel",3,2,6,"aaaa","Chưa có người thuê",0),
("0609",125,160000000,10,"Officetel",3,3,6,"aaaa","Chưa có người thuê",0);

ALTER TABLE `can_ho` MODIFY COLUMN `mo_ta_tien_nghi` VARCHAR(500);

delimiter //
create procedure them_lich_xem(n_ma_can_ho int,n_ten_khach_hang varchar(45),n_so_dien_thoai varchar(45),n_email varchar(45),n_tinh_trang varchar(45))
begin
insert into lich_xem(ma_can_ho,ten_khach_hang,so_dien_thoai,email,tinh_trang)
values(n_ma_can_ho,n_ten_khach_hang,n_so_dien_thoai,n_email,n_tinh_trang);
update can_ho
set tinh_trang = "Đã có lịch xem"
where ma_can_ho = n_ma_can_ho;
end
// delimiter ;

delimiter //
create procedure danh_sach_tai_khoan()
begin
select * from tai_khoan;
end;
// delimiter ;
call danh_sach_tai_khoan();


delimiter //
create procedure them_tai_khoan(n_ten_tai_khoan varchar(45),n_mat_khau varchar(45), n_ma_loai_tai_khoan int)
begin
insert into tai_khoan(ten_tai_khoan,mat_khau, ma_loai_tai_khoan)
values(n_ten_tai_khoan,n_mat_khau, n_ma_loai_tai_khoan);
end;
// delimiter ;

