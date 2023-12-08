create database apartment_management;

use apartment_management;

create table bo_phan(
ma_bo_phan int primary key auto_increment,
ten_bo_phan varchar(45)
);

create table nhan_vien(
ma_nhan_vien int primary key auto_increment,
ho_ten varchar(45) not null,
ngay_sinh date not null,
gioi_tinh bit(1) not null,
so_cmnd varchar(45) unique not null,
luong double not null,
so_dien_thoai varchar(45) unique not null,
email varchar(45) unique not null,
dia_chi varchar(45),
ma_bo_phan int not null,
foreign key(ma_bo_phan) references bo_phan(ma_bo_phan),
ma_tai_khoan int not null,
foreign key(ma_tai_khoan) references tai_khoan(ma_tai_khoan),
is_delete bit(1) default 0
);

create table loai_tai_khoan(
ma_loai_tai_khoan int primary key auto_increment,
ten_loai_tai_khoan varchar(45)
);

create table tai_khoan(
ma_tai_khoan int primary key auto_increment,
ten_tai_khoan varchar(45) unique not null,
mat_khau varchar(45) not null,
ma_loai_tai_khoan int not null,
foreign key(ma_loai_tai_khoan) references loai_tai_khoan(ma_loai_tai_khoan),
is_delete bit(1) default 0
);

create table khach_hang(
ma_khach_hang int primary key auto_increment,
ho_ten varchar(45) not null,
ngay_sinh date not null,
gioi_tinh bit(1) not null,
so_cmnd varchar(45) unique not null,
so_dien_thoai varchar(45) unique not null,
email varchar(45) unique not null,
dia_chi varchar(45),
ma_tai_khoan int not null,
foreign key(ma_tai_khoan) references tai_khoan(ma_tai_khoan),
is_delete bit(1) default 0
);

create table loai_can_ho(
ma_loai_can_ho int primary key auto_increment,
ten_loai_can_ho varchar(45) unique not null
);

create table kieu_thue(
ma_kieu_thue int primary key auto_increment,
ten_kieu_thue varchar(45) unique not null
);

create table so_tang(
ma_so_tang int primary key auto_increment,
so_tang int unique not null,
check(so_tang > 0)
);

create table can_ho(
ma_can_ho int primary key auto_increment,
ten_can_ho varchar(45) unique not null,
dien_tich double not null,
check(dien_tich > 0),
chi_phi_thue double not null,
check(chi_phi_thue > 0),
so_nguoi_toi_da int,
mo_ta_tien_nghi varchar(255),
ma_loai_can_ho int not null,
foreign key(ma_loai_can_ho) references loai_can_ho(ma_loai_can_ho),
ma_kieu_thue int not null,
foreign key(ma_kieu_thue) references kieu_thue(ma_kieu_thue),
ma_so_tang int not null,
foreign key(ma_so_tang) references so_tang(ma_so_tang),
hinh_anh varchar(255) not null,
tinh_trang varchar(45) not null,
is_delete bit(1) default 0
);

create table lich_xem(
ma_lich_xem int primary key auto_increment,
ma_can_ho int not null,
foreign key(ma_can_ho) references can_ho(ma_can_ho),
ten_khach_hang varchar(45) not null,
so_dien_thoai varchar(45) not null,
email varchar(45) not null,
ngay_xem_can_ho date,
tinh_trang varchar(45),
is_delete bit(1) default 0
);

create table hop_dong(
ma_hop_dong int primary key auto_increment,
ngay_lam_hop_dong date not null,
ngay_ket_thuc date not null,
tien_dat_coc double not null,
check(tien_dat_coc > 0),
ma_khach_hang int not null,
ma_nhan_vien int not null,
ma_can_ho int not null,
foreign key(ma_khach_hang) references khach_hang(ma_khach_hang),
foreign key(ma_nhan_vien) references nhan_vien(ma_nhan_vien),
foreign key(ma_can_ho) references can_ho(ma_can_ho),
is_delete bit(1) default 0
);