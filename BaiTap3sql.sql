CREATE TABLE kho(
	ma_kho int PRIMARY KEY,
	ten_kho varchar(150) NOT NULL,
	dia_chi varchar(150) NOT NULL,
);
CREATE TABLE ke_sach(
	ma_ke varchar(50) PRIMARY KEY,
	ten_ke varchar(150) NOT NULL,
	vi_tri varchar (150) NOT NULL,
	ma_kho int FOREIGN KEY REFERENCES kho(ma_kho)
);
CREATE TABLE nha_xuat_ban(
	ma_nxb int PRIMARY KEY,
	ten_nxb varchar (150) NOT NULL,
	dia_chi varchar(250) NOT NULL,
	thong_tin text
);
CREATE TABLE loai_sach (
	ma_loai varchar(50) PRIMARY KEY,
	ten_loai varchar(150) NOT NULL,
	ma_nxb int FOREIGN KEY REFERENCES nha_xuat_ban(ma_nxb)
);
CREATE TABLE sach(
	ma_sach varchar(50) PRIMARY KEY,
	ten_sach varchar(150) NOT NULL,
	tac_gia varchar(150) NOT NULL,
	nd_tom_tat text,
	ngay_xb date NOT NULL,
	lan_xb int NOT NULL,
	gia_ban decimal(12,4),
	so_luong int NOT NULL,
	ma_loai varchar(50) FOREIGN KEY REFERENCES loai_sach(ma_loai),
	ma_nxb int FOREIGN KEY REFERENCES nha_xuat_ban(ma_nxb),
	ma_ke varchar(50) FOREIGN KEY REFERENCES ke_sach(ma_ke)
);
DROP TABLE sach;
DROP TABLE loai_sach;
DROP TABLE nha_xuat_ban;
DROP TABLE ke_sach;
DROP TABLE kho;

INSERT INTO kho (ma_kho,ten_kho,dia_chi) VALUES ('001','cau giay','HN ');
INSERT INTO kho (ma_kho,ten_kho,dia_chi) VALUES ('002','My Dinh','HN ');

INSERT INTO ke_sach (ma_ke,ten_ke,vi_tri,ma_kho) VALUES ('M1','Ke-1','so VT1','001')
INSERT INTO ke_sach (ma_ke,ten_ke,vi_tri,ma_kho) VALUES ('M2','Ke-2','so VT2','001')
INSERT INTO ke_sach (ma_ke,ten_ke,vi_tri,ma_kho) VALUES ('M3','Ke-3','so VT3','001')
INSERT INTO ke_sach (ma_ke,ten_ke,vi_tri,ma_kho) VALUES ('M01','Ke-01','so VT01','002')
INSERT INTO ke_sach (ma_ke,ten_ke,vi_tri,ma_kho) VALUES ('M02','Ke-02','so VT02','002')
INSERT INTO ke_sach (ma_ke,ten_ke,vi_tri,ma_kho) VALUES ('M03','Ke-03','so VT03','002')

INSERT INTO nha_xuat_ban (ma_nxb,ten_nxb,dia_chi,thong_tin) VALUES ('0001','NXB','so 1-MY DINH-HN','aaaaaaaaa');
INSERT INTO nha_xuat_ban (ma_nxb,ten_nxb,dia_chi,thong_tin) VALUES ('0002','TRUYEN ','so 2-Cau Giay-HN','bbbbbbbbbbb');

INSERT INTO loai_sach (ma_loai,ten_loai,ma_nxb) VALUES ('A','Sach GK','1');
INSERT INTO loai_sach (ma_loai,ten_loai,ma_nxb) VALUES ('B','Sach KH','1');
INSERT INTO loai_sach (ma_loai,ten_loai,ma_nxb) VALUES ('C','Sach A','1');
INSERT INTO loai_sach (ma_loai,ten_loai,ma_nxb) VALUES ('D','Sach B','1');
INSERT INTO loai_sach (ma_loai,ten_loai,ma_nxb) VALUES ('E','Sach C','2');
INSERT INTO loai_sach (ma_loai,ten_loai,ma_nxb) VALUES ('F','Sach D','2');
INSERT INTO loai_sach (ma_loai,ten_loai,ma_nxb) VALUES ('G','Sach E','2');
INSERT INTO loai_sach (ma_loai,ten_loai,ma_nxb) VALUES ('H','Sach f','2');

INSERT INTO sach(ma_sach,ten_sach,tac_gia,ngay_xb,lan_xb,nd_tom_tat,gia_ban,so_luong,ma_loai,ma_ke,ma_nxb) VALUES ('S1','toan','Bo GD&DT','1999-05-20','1','aaaaaaaaa','15000','10','A','M1','001');
INSERT INTO sach(ma_sach,ten_sach,tac_gia,ngay_xb,lan_xb,nd_tom_tat,gia_ban,so_luong,ma_loai,ma_ke,ma_nxb) VALUES ('S2','LI','Bo GD&DT','1999-05-10','2','bbbbbbbbb','14000','20','A','M1','001');
INSERT INTO sach(ma_sach,ten_sach,tac_gia,ngay_xb,lan_xb,nd_tom_tat,gia_ban,so_luong,ma_loai,ma_ke,ma_nxb) VALUES ('S3','hoa','Bo GD&DT','1999-12-15','3','ccccccccc','13000','30','A','M01','001');
INSERT INTO sach(ma_sach,ten_sach,tac_gia,ngay_xb,lan_xb,nd_tom_tat,gia_ban,so_luong,ma_loai,ma_ke,ma_nxb) VALUES ('S4','van','Bo GD&DT','1997-10-15','4','ddddddđ','12000','40','A','M01','001');
INSERT INTO sach(ma_sach,ten_sach,tac_gia,ngay_xb,lan_xb,nd_tom_tat,gia_ban,so_luong,ma_loai,ma_ke,ma_nxb) VALUES ('S5','su','TRUYEN','1999-05-11','5','eeeeeeeeeee','11000','50','A','M02','002');
INSERT INTO sach(ma_sach,ten_sach,tac_gia,ngay_xb,lan_xb,nd_tom_tat,gia_ban,so_luong,ma_loai,ma_ke,ma_nxb) VALUES ('S6','dia','TRUYEN2000-02-01','6','fffffffffffffff','10000','60','B','M02','002');
INSERT INTO sach(ma_sach,ten_sach,tac_gia,ngay_xb,lan_xb,nd_tom_tat,gia_ban,so_luong,ma_loai,ma_ke,ma_nxb) VALUES ('S7','gdcd','TRUYEN','2011-01-01','7','ggggggggggggg','30000','70','B','M03','002');
INSERT INTO sach(ma_sach,ten_sach,tac_gia,ngay_xb,lan_xb,nd_tom_tat,gia_ban,so_luong,ma_loai,ma_ke,ma_nxb) VALUES ('S8','tieng anh','TRUYEN','2000-02-05','8','hhhhhhhhhhh','400000','80','B','M2','002');


SELECT * FROM kho;
SELECT * FROM ke_sach;
SELECT * FROM nha_xuat_ban;
SELECT * FROM sach;
SELECT * FROM loai_sach;

SELECT * FROM sach WHERE ngay_xb BETWEEN '2000-02-01' AND GETDATE();

SELECT TOP(5) ten_sach,gia_ban FROM sach ORDER BY gia_ban DESC

SELECT * FROM sach WHERE ten_sach LIKE 'tieng anh %';

SELECT * FROM sach WHERE ten_sach LIKE 'T%' ORDER BY ten_sach DESC;

 SELECT ten_sach,ten_nxb FROM sach INNER JOIN nha_xuat_ban ON sach.ma_nxb = nha_xuat_ban.ma_nxb
 WHERE ten_nxb = 'Bo GD&DT';

 SELECT ten_sach,ten_nxb,dia_chi,thong_tin FROM sach LEFT JOIN nha_xuat_ban ON sach.ma_nxb = nha_xuat_ban.ma_nxb
 WHERE ten_sach='gdcd';

 SELECT ma_sach,ten_sach,ngay_xb,ten_nxb,ten_loai FROM sach 
INNER JOIN nha_xuat_ban ON sach.ma_nxb = nha_xuat_ban.ma_nxb 
 INNER JOIN loai_sach ON sach.ma_loai = loai_sach.ma_loai

 SELECT TOP(1) ten_sach, MAX(gia_ban) AS gia_dat_nhat FROM sach GROUP BY ten_sach;

SELECT TOP(1) ten_sach, Min(gia_ban) AS gia_gie_nhat FROM sach GROUP BY ten_sach;

SELECT ten_sach,tac_gia FROM sach WHERE tac_gia LIKE 'Bo GD&DT';


CREATE TRIGGER tg_xoa_sach ON sach
 INSTEAD OF DELETE 

 AS 
 IF EXISTS (SELECT * FROM deleted WHERE so_luong >0)
    print 'khong the xoa don hang';
ELSE 
    DELETE FROM sach WHERE so_luong IN (SELECT so_luong FROM deleted);
DELETE FROM sach WHERE so_luong =0 ;


SELECT * FROM sach;