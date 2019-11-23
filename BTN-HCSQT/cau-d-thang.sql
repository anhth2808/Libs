CREATE DATABASE QLPH
GO
USE QLPH
GO

CREATE TABLE GIANGDUONG
(
MAGD VARCHAR(10) NOT NULL,
TENGD NVARCHAR(100) NOT NULL,

CONSTRAINT PK_GIANGDUONG PRIMARY KEY(MAGD)
)

CREATE TABLE PHONG 
(
	MAPHONG VARCHAR(10) NOT NULL,
	SOPHONG VARCHAR(100) NULL,
	SUCCHUA INTEGER NOT NULL,
	MAGD VARCHAR(10) NULL,
	
	CONSTRAINT PK_PHONGHOC PRIMARY KEY(MAPHONG)		
)


CREATE TABLE TRANGTHIETBI
(
	MATTB VARCHAR(10) NOT NULL,
	TENTTB NVARCHAR(100) NOT NULL,
	
	CONSTRAINT PK_TRANGTHIETBI PRIMARY KEY(MATTB)
)

CREATE TABLE PHONG_TRANGTHIETBI
(
	MATTB VARCHAR(10) NOT NULL,
	MAPHONG VARCHAR(10) NOT NULL,
	SOLUONG INTEGER NOT NULL,	
	
	CONSTRAINT PK_PHONG_TRANGTHIETBI PRIMARY KEY(MATTB, MAPHONG)	
)

CREATE TABLE SINHVIEN
(
	MASV VARCHAR(10) NOT NULL,
	HO NVARCHAR(50) NOT NULL,
	TEN NVARCHAR(50) NOT NULL,
	GIOITINH NVARCHAR(10) NOT NULL,
	DIENTHOAI VARCHAR(20) NOT NULL,
	
	CONSTRAINT PK_SINHVIEN PRIMARY KEY(MASV)	
)

CREATE TABLE GIANGVIEN
(
	MAGV VARCHAR(10) NOT NULL,
	HO NVARCHAR(50) NOT NULL,
	TEN NVARCHAR(50) NOT NULL,
	DIENTHOAI VARCHAR(20) NOT NULL,	
	GIOITINH NVARCHAR(10) NOT NULL,
		
	CONSTRAINT PK_GIANGVIEN PRIMARY KEY(MAGV)
)

CREATE TABLE TIETHOC
(
	MATH VARCHAR(10) NOT NULL,
	BATDAU INTEGER NOT NULL,
	KETTHUC INTEGER NOT NULL,	
	
	CONSTRAINT PK_TIETHOC PRIMARY KEY(MATH)
)

CREATE TABLE MONHOC
(
	MAMH VARCHAR(10) NOT NULL,
	TENMH NVARCHAR(50) NOT NULL,
	SOTINCHI INTEGER NOT NULL,	
	
	CONSTRAINT PK_MONHOC PRIMARY KEY(MAMH)
)

CREATE TABLE NHOMHOCPHAN
(
	MANHP VARCHAR(10) NOT NULL,	
	NGAYBATDAU DATE NOT NULL,
	NGAYKETTHUC DATE NOT NULL,
	MAMH VARCHAR(10) NOT NULL,
	MAGV VARCHAR(10) NOT NULL,
	
	CONSTRAINT PK_NHOMHOCPHAN PRIMARY KEY(MANHP)
)

CREATE TABLE SINHVIEN_NHOMHOCPHAN
(
	MASV VARCHAR(10) NOT NULL,	
	MANHP VARCHAR(10) NOT NULL,
		
	CONSTRAINT PK_SINHVIEN_NHOMHOCPHAN PRIMARY KEY(MASV, MANHP)
)

CREATE TABLE THOIKHOABIEU
(
	MANHP VARCHAR(10) NOT NULL,
	THU NVARCHAR(50) NOT NULL,	
	MAPHONG VARCHAR(10) NOT NULL,
	MATH VARCHAR(10) NOT NULL,
	
	CONSTRAINT PK_THOIKHOABIEU PRIMARY KEY(MANHP, MAPHONG)
)

/*==========================================================*/

/* PHONG */
ALTER TABLE dbo.PHONG
ADD CONSTRAINT FK1_GIANGDUONG FOREIGN KEY(MAGD) REFERENCES dbo.GIANGDUONG(MAGD)

/* PHONG_TRANGTHIETBI */
ALTER TABLE dbo.PHONG_TRANGTHIETBI
ADD CONSTRAINT FK1_PHONG FOREIGN KEY(MAPHONG) REFERENCES dbo.PHONG(MAPHONG)

ALTER TABLE dbo.PHONG_TRANGTHIETBI
ADD CONSTRAINT FK2_TRANGTHIETBI FOREIGN KEY(MATTB) REFERENCES dbo.TRANGTHIETBI(MATTB)

/* NHOMHOCPHAN */

ALTER TABLE dbo.NHOMHOCPHAN
ADD CONSTRAINT FK1_GIANGVIEN FOREIGN KEY(MAGV) REFERENCES dbo.GIANGVIEN(MAGV)

ALTER TABLE dbo.NHOMHOCPHAN
ADD CONSTRAINT FK2_MONHOC FOREIGN KEY(MAMH) REFERENCES dbo.MONHOC(MAMH)

/* SINHVIEN_NHOMHOCPHAN */
ALTER TABLE dbo.SINHVIEN_NHOMHOCPHAN
ADD CONSTRAINT FK1_SINHVIEN FOREIGN KEY(MASV) REFERENCES dbo.SINHVIEN(MASV)

ALTER TABLE dbo.SINHVIEN_NHOMHOCPHAN
ADD CONSTRAINT FK2_NHOMHOCPHAN FOREIGN KEY(MANHP) REFERENCES dbo.NHOMHOCPHAN(MANHP)

/* THOIKHOABIEU */
ALTER TABLE dbo.THOIKHOABIEU
ADD CONSTRAINT FK1_NHOMHOCPHAN FOREIGN KEY(MANHP) REFERENCES dbo.NHOMHOCPHAN(MANHP)

ALTER TABLE dbo.THOIKHOABIEU
ADD CONSTRAINT FK2_PHONG FOREIGN KEY(MAPHONG) REFERENCES dbo.PHONG(MAPHONG)

ALTER TABLE dbo.THOIKHOABIEU
ADD CONSTRAINT FK3_TIETHOC FOREIGN KEY(MATH) REFERENCES dbo.TIETHOC(MATH)

/*----------------------------------------------------------------------*/
INSERT INTO dbo.GIANGDUONG
( MAGD, TENGD )
VALUES
(  'G1' , N'GIANG DUONG G1' ),
(  'G2' , N'GIANG DUONG G2' ),
(  'G3' , N'GIANG DUONG G3' ),
(  'G4' , N'GIANG DUONG G4' ),
(  'G5' , N'GIANG DUONG G5' ),
(  'G6' , N'GIANG DUONG G6' ),
(  'G7' , N'GIANG DUONG G7' ),
(  'G8' , N'GIANG DUONG G8' )

INSERT INTO dbo.GIANGVIEN
( MAGV , HO , TEN , DIENTHOAI , GIOITINH )
VALUES
( '7547' , N'Trần' , N'Lâm' , '034865564', N'Nam' ),
( '5357' , N'Nguyễn' , N'Ngoc long' , '02537547', N'Nam'),
( '2345' , N'Đào' , N'Chiến' , '023854548', N'Nam' ),
( '7533' , N'Huỳnh' , N'Dương' , '08897345',N'Nam' ),
( '3458' , N'Lê' , N'Minh' , '0999999', N'Nam'),
( '4537' , N'Lương' , N'Vũ' , '0119999', N'Nam'),
( '7453' , N'Cao' , N'Linh' , '035763427', N'Nữ'),
( '5344' , N'Chu' , N'Nha' , '0724456666', N'Nữ'),
( '4539' , N'Ông' , N'Yến' , '034997766', N'Nữ'),
( '4867' , N'Tạ' , N'Ngọc' , '023587777', N'Nữ'),
( '6453' , N'Trương' , N'Uyên' , '09866666', N'Nữ')

INSERT INTO dbo.MONHOC
( MAMH , TENMH , SOTINCHI )
VALUES
( 'INS335' ,  N'Thống kê máy tính' , 3 ),
( 'INS339' ,  N'Hệ quản trị cơ sở dữ liệu' , 3 ),
( 'INS360' ,  N'Phân tích thiết kế hệ thống thông tin' , 3 ),
( 'NEC337' ,  N'Quản trị mạng' , 3 ),
( 'POL333' ,  N'Tư tưởng Hồ Chí Minh	' , 2 ),
( 'INS337' ,  N'Lập trình thiết bị nhúng' , 3 ),
( 'FOT344' ,  N'Thiết bị chế biến thực phẩm' , 3 ),
( 'FOT351' ,  N'Tin học ứng dụng trong công nghệ thực phẩm' , 3 ),
( 'FOT364' ,  N'Công nghệ đồ hộp thực phẩm' , 3 ),
( 'SPT365' ,  N'Công nghệ lạnh và lạnh đông thực phẩm	' , 3 ),
( 'ACC325' ,  N'Nguyên lý kế toán' , 3 ),
( 'BUA346' ,  N'Quản trị nguồn nhân lực' , 3 ),
( 'BIO375' ,  N'Công nghệ vi sinh vật' , 3 ),
( 'BIO379' ,  N'Sinh lý học thực vật' , 3 ),
( 'POL318' ,  N'Những NL CB của CN Mác-Lênin 2' , 2 ),
( 'SOT352' ,  N'Quản lý dự án phần mềm' , 2 ),
( 'SOT366' ,  N'Phát triển phần mềm mã nguồn mở' , 2 ),
( 'POL340' ,  N'Đường lối CM của Đảng CS Việt Nam' , 2 ),
( 'SOT357' ,  N'Kiểm thử phần mềm' , 2 )

INSERT INTO dbo.NHOMHOCPHAN
( MANHP , NGAYBATDAU , NGAYKETTHUC , MAMH , MAGV )
VALUES
( '01', '09/02/2019' , '12/23/2019' , 'POL333', '7547' ),
( '02', '09/02/2019' , '12/23/2019' , 'POL333', '7547' ),
( '03', '09/02/2019' , '12/23/2019' , 'POL333', '7547' ),
( '04', '09/02/2019' , '12/23/2019' , 'POL333', '7547' ),
( '05', '09/02/2019' , '12/23/2019' , 'POL333', '4539' ),
( '06', '09/02/2019' , '12/23/2019' , 'POL333', '4539' ),
( '07', '09/02/2019' , '12/23/2019' , 'POL333', '4539' ),
( '08', '09/02/2019' , '12/23/2019' , 'POL333', '4539' ),
( '09', '09/02/2019' , '12/23/2019' , 'POL333', '4539' ),
( '10', '09/02/2019' , '12/23/2019' , 'POL333', '4539' ),
( '11', '09/02/2019' , '12/23/2019' , 'SOT357', '4539' ),
( '12', '09/02/2019' , '12/23/2019' , 'SOT366', '4539' ),
( '13', '09/02/2019' , '12/23/2019' , 'POL340', '4867' ),
( '14', '09/02/2019' , '12/23/2019' , 'SOT357', '4867' )

INSERT INTO dbo.PHONG
( MAPHONG, SOPHONG , SUCCHUA , MAGD )
VALUES
( 'p001', '101' , 50 , 'G1' ),
( 'p002', '102' , 50 , 'G1' ),
( 'p003', '103' , 50 , 'G1' ),
( 'p004', '104' , 50 , 'G1' ),
( 'p005', '105' , 50 , 'G1' ),
( 'p006', '201' , 60 , 'G1' ),
( 'p007', '202' , 70 , 'G1' ),
( 'p008', '203' , 60 , 'G1' ),
( 'p009', '204' , 70 , 'G1' ),
( 'p0010', '205' , 60 , 'G1' ),
( 'p0011', '301' , 40 , 'G1' ),
( 'p0012', '302' , 40 , 'G1' ),
( 'p0013', '303' , 40 , 'G1' ),
( 'p0014', '304' , 50 , 'G1' ),
( 'p0015', '305' , 40 , 'G1' )

INSERT INTO dbo.TRANGTHIETBI
( MATTB , TENTTB )
VALUES
( 'MTB', N'MAY TINH BAN DELL' ),
( 'MC' , N'MAY CHIEU' ),
( 'MF' , N'MAY FAX' ),
( 'MI' , N'MAY IN' )

INSERT INTO dbo.PHONG_TRANGTHIETBI
( MAPHONG , MATTB , SOLUONG )
VALUES
( 'p001' , 'MTB' , 10 ),
( 'p002' , 'MTB' , 10 ),
( 'p003' , 'MTB' , 10 ),
( 'p004' , 'MTB' , 10 ),
( 'p005' , 'MC' , 12 ),
( 'p006' , 'MC' , 14 ),
( 'p007' , 'MC' , 15 ),
( 'p008' , 'MC' , 16 ),
( 'p009' , 'MI' , 17 ),
( 'p0010' , 'MI' , 18 ),
( 'p0011' , 'MI' , 19)

INSERT INTO dbo.SINHVIEN
( MASV , HO , TEN , DIENTHOAI, GIOITINH )
VALUES
( '001', N'Trần' , N'Ngọc' , '0380129576', N'Nam' ),
( '002', N'Huỳnh' , N'Thông' , '0380349576', N'Nam' ),
( '003', N'Trần' , N'Anh' , '0380479576', N'Nữ' ),
( '004', N'Lương' , N'Xuân' , '0380479576', N'Nữ' ),
( '005', N'Huỳnh' , N'Gia' , '0380443576', N'Nam' ),
( '006', N'Huỳnh' , N'Hoa' , '0380479576', N'Nữ' ),
( '007', N'Trần' , N'Dũng' , '0380479512', N'Nam' ),
( '008', N'Tạ' , N'Hoa' , '0380479576', N'Nữ' ),
( '009', N'Tạ' , N'Danh' , '0380465576', N'Nam' ),
( '010', N'Trương' , N'Chu' , '0380475976', N'Nữ' ),
( '011', N'Trương' , N'Mạnh' , '0383459545', N'Nam' ),
( '012', N'Lê' , N'Ánh' , '0380479576', N'Nữ' ),
( '013', N'Lê' , N'Dũng' , '0380474576', N'Nam' ),
( '014', N'Lê' , N'Dung' , '0380479576', N'Nữ' ),
( '015', N'Lê' , N'Hòa' , '0380479545', N'Nữ' ),
( '016', N'Trần Hoàng' , N'Anh' , '0380479545', N'Nam' )


INSERT INTO dbo.SINHVIEN_NHOMHOCPHAN
( MASV , MANHP )
VALUES
( '001' , '01' ),
( '002' , '07' ),
( '003' , '01' ),
( '004' , '01' ),
( '005' , '07' ),
( '006' , '01' ),
( '007' , '01' ),
( '008' , '07' ),
( '009' , '07' ),
( '010' , '01' ),
( '011' , '01' ),
( '012' , '07' ),
( '013' , '07' ),
( '014' , '10' ),
( '015' , '10' ),
( '016' , '11' ),
( '016' , '12' ),
( '016' , '13' ),
( '016' , '14' )


INSERT INTO dbo.TIETHOC
( MATH, BATDAU, KETTHUC )
VALUES
( 'th01', 1, 2 ),
( 'th02', 1, 3 ),
( 'th03', 2, 3 ),
( 'th04', 2, 4 ),
( 'th05', 3, 4 ),
( 'th06', 3, 5 ),
( 'th07', 4, 5 ),
( 'th08', 6, 7 ),
( 'th09', 6, 8 ),
( 'th10', 7, 8 ),
( 'th11', 7, 9),
( 'th12', 8, 9),
( 'th13', 8, 0),
( 'th14', 9, 0)


INSERT INTO dbo.THOIKHOABIEU
( MANHP, THU, MAPHONG, MATH)
VALUES
( '01', '6', 'p001', 'th01'),
( '11', '2', 'p001', 'th03'),
( '12', '2', 'p001', 'th07'),
( '13', '4', 'p001', 'th01'),
( '14', '5', 'p001', 'th06'),
( '14', '7', 'p002', 'th06')



/*---------------------------------------------------------*/

-- Câu 3: 
-- a) Câu truy vấn đơn giản
-- Hiển thị thời khóa biểu của sinh viên 016

select mh.MAMH, nhp.MANHP, mh.TENMH, mh.SOTINCHI, tkb.THU, th.BATDAU, th.KETTHUC, p.MAGD, p.SOPHONG, nhp.NGAYBATDAU
from (
	select *
	from dbo.SINHVIEN_NHOMHOCPHAN sv_nhp
	where sv_nhp.MASV = '016'
) dshp
inner join dbo.THOIKHOABIEU tkb on dshp.MANHP = tkb.MANHP
inner join dbo.NHOMHOCPHAN nhp on nhp.MANHP = dshp.MANHP
inner join dbo.MONHOC mh on mh.MAMH = nhp.MAMH
inner join dbo.TIETHOC th on th.MATH = tkb.MATH
inner join dbo.PHONG p on p.MAPHONG = tkb.MAPHONG

-- d) Hiển thị Thông tin phòng có suc chua lon nhat
SELECT *FROM PHONG 
WHERE SUCCHUA = (SELECT MAX(SUCCHUA) FROM PHONG)
-- hiển thị phòng có súc chưa bé nhất
SELECT *FROM PHONG 
WHERE SUCCHUA = (SELECT MIN(SUCCHUA) FROM PHONG)
-- g) Truy vấn Update, Delete

-- Chỉnh sửa tên sinh vien co MASV 003 thành Minh
UPDATE dbo.SINHVIEN
SET TEN = 'Minh'
WHERE MASV = '003'

-- Chỉnh sửa số tin chỉ của môn hoc có MAMH POL333 thành 3
UPDATE dbo.MONHOC
SET SOTINCHI = 3
WHERE MAMH = 'POL333'

-- Chỉnh sửa nhóm học phần của sinh vien có MSSV '009' từ '07' sang '08'
UPDATE dbo.SINHVIEN_NHOMHOCPHAN
SET MANHP = '08'
WHERE MANHP = '07'
	and MASV = '009'
	

-- Câu 5
-- Tạo người dùng chỉ có thể đọc 
CREATE LOGIN minh86 WITH PASSWORD='12345';
-- 
CREATE USER uminh86 FOR LOGIN minh86;
--
GRANT CONNECT to uminh86;
-- 
GRANT SELECT on SINHVIEN to uminh86;
--
