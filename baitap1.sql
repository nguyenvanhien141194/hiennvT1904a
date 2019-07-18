CREATE TABLE hang(
	ten_hang varchar(255),
	dia_chi varchar(255),
	ma_so_hang varchar(10),
	sdt int primary key,


);

CREATE TABLE san_pham(
	id int PRIMARY KEY,
	ten_hang VARCHAR(255),
	mo_ta TEXT,
	don_vi VARCHAR(200),
	gia DECIMAL(12,4),
	sdt int FOREIGN KEY REFERENCES hang(sdt), 
);