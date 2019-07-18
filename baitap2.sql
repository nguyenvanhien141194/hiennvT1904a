CREATE TABLE nguoi(
	ten VARCHAR (255),
	dia_chi VARCHAR (255),
	ngay_sinh DATE,
	cmtnd INT PRIMARY KEY,
);

CREATE TABLE sdt(
	sdt_id int PRIMARY KEY,
	cmtnd int FOREIGN KEY REFERENCES nguoi(cmtnd)

);