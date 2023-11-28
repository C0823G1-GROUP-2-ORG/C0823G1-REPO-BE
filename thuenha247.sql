create database thuenha247;

use thuenha247;

create table vi_tri(
ma_vi_tri int primary key auto_increment,
ten_vi_tri varchar(45)
);

create table bo_phan(
ma_bo_phan int primary key auto_increment,
ten_bo_phan varchar(45)
);

create table trinh_do(
ma_trinh_do int primary key auto_increment,
ten_trinh_do varchar(45)
);

create table nhan_vien(
ma_nhan_vien int primary key auto_increment,
ho_ten varchar(45) not null,
ngay_sinh date not null,
so_cmnd varchar(45) unique not null,
luong double not null,
so_dien_thoai varchar(45) unique not null,
email varchar(45) unique not null,
dia_chi varchar(45),
ma_vi_tri int not null,
ma_bo_phan int not null,
ma_trinh_do int not null,
foreign key(ma_vi_tri) references vi_tri(ma_vi_tri),
foreign key(ma_bo_phan) references bo_phan(ma_bo_phan),
foreign key(ma_trinh_do) references trinh_do(ma_trinh_do),
is_delete bit(1) default 0
);

create table loai_khach(
ma_loai_khach int primary key auto_increment,
ten_loai_khach varchar(45)
);

create table khach_hang(
ma_khach_hang int primary key auto_increment,
ma_loai_khach int not null,
foreign key(ma_loai_khach) references loai_khach(ma_loai_khach),
ho_ten varchar(45) not null,
ngay_sinh date not null,
gioi_tinh bit(1) not null,
so_cmnd varchar(45) unique not null,
so_dien_thoai varchar(45) unique not null,
email varchar(45) unique not null,
dia_chi varchar(45),
is_delete bit(1) default 0
);

create table loai_tai_khoan(
ma_loai_tai_khoan int primary key auto_increment,
ten_loai_tai_khoan varchar(45) unique not null
);

create table tai_khoan(
ma_tai_khoan int primary key auto_increment,
ten_tai_khoan varchar(45) unique not null,
mat_khau varchar(45) not null,
ma_loai_tai_khoan int not null,
foreign key(ma_loai_tai_khoan) references loai_tai_khoan(ma_loai_tai_khoan),
ma_khach_hang int not null,
foreign key(ma_khach_hang) references khach_hang(ma_khach_hang),
is_delete bit(1) default 0
);

create table loai_dich_vu(
ma_loai_dich_vu int primary key auto_increment,
ten_loai_dich_vu varchar(45) unique not null
);

create table kieu_thue(
ma_kieu_thue int primary key auto_increment,
ten_kieu_thue varchar(45) unique not null
);

create table dich_vu(
ma_dich_vu int primary key auto_increment,
ten_dich_vu varchar(45) unique not null,
dien_tich double not null,
check(dien_tich > 0),
chi_phi_thue double not null,
check(chi_phi_thue > 0),
so_nguoi_toi_da int,
tieu_chuan varchar(45),
mo_ta_tien_nghi varchar(45),
ma_loai_dich_vu int not null,
foreign key(ma_loai_dich_vu) references loai_dich_vu(ma_loai_dich_vu),
ma_kieu_thue int not null,
foreign key(ma_kieu_thue) references kieu_thue(ma_kieu_thue),
is_delete bit(1) default 0
);

create table hop_dong(
ma_hop_dong int primary key auto_increment,
ngay_lam_hop_dong date not null,
ngay_ket_thuc date not null,
tien_dat_coc double not null,
check(tien_dat_coc > 0),
ma_nhan_vien int not null,
ma_tai_khoan int not null,
ma_dich_vu int not null,
foreign key(ma_nhan_vien) references nhan_vien(ma_nhan_vien),
foreign key(ma_dich_vu) references dich_vu(ma_dich_vu),
foreign key(ma_tai_khoan) references tai_khoan(ma_tai_khoan),
is_delete bit(1) default 0
);

create table uu_dai(
ma_uu_dai int primary key auto_increment,
ten_uu_dai varchar(45) unique not null,
phan_tram int not null,
check(phan_tram between 0 and 100)
);

create table hop_dong_chi_tiet(
ma_hop_dong_chi_tiet int primary key auto_increment,
ma_uu_dai int not null,
ma_hop_dong int not null,
foreign key(ma_uu_dai) references uu_dai(ma_uu_dai),
foreign key(ma_hop_dong) references hop_dong(ma_hop_dong),
unique(ma_uu_dai, ma_hop_dong),
is_delete bit(1) default 0
);