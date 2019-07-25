CREATE TABLE lop(
	lop_id int IDENTITY (1,1) PRIMARY KEY,
	ten_lop VARCHAR(255) NOT NULL,
	ma_lop int NOT NULL,
);

CREATE TABLE diem(
	diem_id int IDENTITY(1,1) PRIMARY KEY,
	diem_thi DECIMAL NOT NULL,
	ket_qua DECIMAL NOT NULL,	
	
);


CREATE TABLE sinh_vien(
	sv_id int IDENTITY PRIMARY KEY,
	ten_sv VARCHAR NOT NULL,
	ns DATE NOT NULL,
	ma_sv int NOT NULL,
	lop_id int NOT NULL FOREIGN KEY REFERENCES lop(lop_id),
	diem_id int NOT NULL FOREIGN KEY REFERENCES diem(diem_id)
);

CREATE TABLE mon(
	mon_id inT IDENTITY (1,1) PRIMARY KEY,
	ten_mon VARCHAR(255) NOT NULL,
	ma_mon int NOT NULL,
	sv_id int NOT NULL FOREIGN KEY REFERENCES sinh_vien(sv_id),
	diem_id int NOT NULL FOREIGN KEY REFERENCES diem (diem_id),
);

CREATE TABLE sinhvien_mon (
	sv_id int NOT NULL FOREIGN KEY REFERENCES sinh_vien(sv_id),
	diem_id int NOT NULL FOREIGN KEY REFERENCES diem(diem_id)
);