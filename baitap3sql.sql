CREATE TABLE bo_phan(
	ma_bp int IDENTITY(1,1) PRIMARY KEY,
	ten_bp varchar (255)
);

CREATE TABLE nhan_vien(
	nv_id INT IDENTITY (1,1) PRIMARY KEY,
	ten_sv VARCHAR(100),
	chuc_vu VARCHAR(250),
	bang VARCHAR (250),
	sdt int,
	dia_chi VARCHAR(255),
	ngay_sinh DATE,
	ma_bp int FOREIGN KEY REFERENCES bo_phan(ma_bp)
);

CREATE TABLE thiet_bi(
	tb_id int identity (1,1) primary key,
	ten_tb varchar (255),
	ma_tb int,
	so_luong int,
	nv_id int foreign key references nhan_vien(nv_id),
);


CREATE TABLE nv_tb(
	nv_id int  FOREIGN KEY REFERENCES nhan_vien(nv_id),
	ma_bp int FOREIGN KEY REFERENCES bo_phan(ma_bp),

);
