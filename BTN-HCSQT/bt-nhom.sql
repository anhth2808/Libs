-- QUẢN LÝ PHÒNG HỌC TRƯỜNG MINH NHẬT

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
	
	CONSTRAINT PK_THOIKHOABIEU PRIMARY KEY(MANHP, MAPHONG, THU, MATH)
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
( '07', '09/02/2019' , '12/23/2019' , 'POL333', '2345' ),
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
( 'p0015', '305' , 40 , 'G1' ),
-- them
( 'p0016', '101' , 30 , 'G2' )


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
( 'p001' , 'MC' , 1 ),
( 'p002' , 'MC' , 1 ),
( 'p005' , 'MC' , 1 ),
( 'p006' , 'MC' , 1 ),
( 'p001' , 'MI' , 1 ),
( 'p002' , 'MI' , 1 ),
( 'p003' , 'MI' , 1 )

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
( '016' , '14' ),
-- them
( '016' , '07' )

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
( '14', '7', 'p002', 'th06'),
-- them
( '07', '2', 'p0016', 'th09')

/*---------------------------------------------------------*/

-------------------------------- Câu 3 -----------------------------
------------------------ A) Câu truy vấn đơn giản -----------------------------

-- 1 Hiển thị các phòng có số lượng máy tính bàn ít nhất là 10
select p.SOPHONG, p.MAGD, p_ttp.SOLUONG
from dbo.PHONG_TRANGTHIETBI p_ttp
inner join dbo.PHONG p on p.MAPHONG = p_ttp.MAPHONG
where p_ttp.SOLUONG >= 10 and p_ttp.MATTB = 'MTB'

-- 2 Hiển thị các phòng được dùng vào thứ 6
select p.SOPHONG, p.MAGD, th.BATDAU, th.KETTHUC, mh.MAMH, nhp.MANHP, mh.TENMH
from dbo.PHONG p
inner join dbo.THOIKHOABIEU tkb on tkb.MAPHONG = p.MAPHONG
inner join dbo.NHOMHOCPHAN nhp on nhp.MANHP = tkb.MANHP
inner join dbo.MONHOC mh on mh.MAMH = nhp.MAMH
inner join dbo.TIETHOC th on tkb.MATH = th.MATH
where tkb.THU = 6

-- 3 Hiển thị thời khóa biểu của sinh viên 016
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

-- b) Truy vấn với Aggregate Functions
-- 1 Cho biết tổng số sinh viên
select COUNT(*) sl
from dbo.SINHVIEN

-- 2 Cho biết số lượng môn học đã được sinh viên đăng kí
select COUNT(r.MAMH) as SL
from (
	select mh.MAMH
	from dbo.SINHVIEN_NHOMHOCPHAN sv_nhp
	inner join dbo.NHOMHOCPHAN nhp on nhp.MANHP = sv_nhp.MANHP
	inner join dbo.MONHOC mh on mh.MAMH = nhp.MAMH
	GROUP BY mh.MAMH
) r

-- 3 cho biết số lượng phòng đã dùng vào ngày thứ 2 tại G1
select COUNT(DISTINCT p.MAPHONG) as SL
from dbo.THOIKHOABIEU tkb
inner join dbo.PHONG p on p.MAPHONG = tkb.MAPHONG
where tkb.THU = 2
	and p.MAGD = 'G1'

-- 4 Cho biết tổng số lượng máy tính bàn đang được đặt tại các phòng
select SUM(p_ttb.SOLUONG) as SoLuongMTB
from dbo.PHONG_TRANGTHIETBI p_ttb
where p_ttb.MATTB = 'MTB'

-- 5 Cho biết tổng số tín chỉ mà mỗi sinh viên đăng kí
select sv.MASV, sv.TEN + ' ' + sv.HO as HoVaTen, SUM(mh.SOTINCHI) as TongSoTinChi
from dbo.SINHVIEN sv
inner join dbo.SINHVIEN_NHOMHOCPHAN sv_nhp on sv_nhp.MASV = sv.MASV
inner join dbo.NHOMHOCPHAN nhp on nhp.MANHP = sv_nhp.MANHP
inner join dbo.MONHOC mh on mh.MAMH = nhp.MAMH
group by sv.MASV, sv.HO, sv.TEN , mh.SOTINCHI

-- 6 Tính trung bình tổng số tín chỉ mà một sinh viên đăng ký
select AVG(Cast(dssv.TongSoTinChi as Float)) TB
from (
	select sv.MASV, sv.TEN + ' ' + sv.HO as HoVaTen, SUM(mh.SOTINCHI) as TongSoTinChi
	from dbo.SINHVIEN sv
	inner join dbo.SINHVIEN_NHOMHOCPHAN sv_nhp on sv_nhp.MASV = sv.MASV
	inner join dbo.NHOMHOCPHAN nhp on nhp.MANHP = sv_nhp.MANHP
	inner join dbo.MONHOC mh on mh.MAMH = nhp.MAMH
	group by sv.MASV, sv.HO, sv.TEN , mh.SOTINCHI
) dssv

------------------------ D) Truy vấn với mệnh đề having -----------------------------

-- 1 Cho biết các giảng đường có tổng số máy tính bàn > 30
select p.MAGD
from dbo.PHONG_TRANGTHIETBI p_ttb
inner join dbo.PHONG p on p.MAPHONG = p_ttb.MAPHONG
where p_ttb.MATTB = 'MTB'
group by p.MAGD
having SUM(p_ttb.SOLUONG) > 30

-- 2 Cho biết các phòng có lịch dùng từ tiết 1 đến tiết 5 mà sử dụng 2 lần
select p.MAPHONG, p.SOPHONG, p.MAGD
from dbo.PHONG p
inner join dbo.THOIKHOABIEU tkb on tkb.MAPHONG = p.MAPHONG
inner join dbo.TIETHOC th on th.MATH = tkb.MATH
where (th.BATDAU between 1 and 5) and (th.KETTHUC between 1 and 5)
	and tkb.THU = 2
group by p.MAPHONG, p.SOPHONG, p.MAGD
having COUNT(p.MAPHONG) = 2

-- 3 Cho biết các môn học có sl sinh viên đăng ký lớn hơn 10
select mh.MAMH, mh.TENMH, COUNT(mh.MAMH) as sl
from dbo.SINHVIEN sv
inner join dbo.SINHVIEN_NHOMHOCPHAN sv_nhp on sv_nhp.MASV = sv.MASV
inner join dbo.NHOMHOCPHAN nhp on nhp.MANHP = sv_nhp.MANHP
inner join dbo.MONHOC mh on mh.MAMH = nhp.MAMH
group by mh.MAMH, mh.TENMH
having COUNT(mh.MAMH) > 10

-- 4 Cho biết danh sách các sinh viên có lịch học ở 2 giảng đường khác nhau vào thứ 2
select sv.MASV, sv.HO, sv.TEN
from dbo.SINHVIEN sv
inner join dbo.SINHVIEN_NHOMHOCPHAN sv_nhp on sv_nhp.MASV = sv.MASV
inner join dbo.NHOMHOCPHAN nhp on nhp.MANHP = sv_nhp.MANHP
inner join dbo.THOIKHOABIEU tkb on tkb.MANHP = nhp.MANHP
inner join dbo.PHONG p on p.MAPHONG = tkb.MAPHONG
where tkb.THU = 2
group by sv.MASV, sv.HO, sv.TEN
having COUNT(DISTINCT p.MAGD) = 2

------------------------ D) Try vấn MIN MAX -----------------------------

-- 1 Hiển thị Thông tin phòng có suc chua lon nhat
SELECT *FROM PHONG 
WHERE SUCCHUA = (SELECT MAX(SUCCHUA) FROM PHONG)

-- 2 hiển thị phòng có súc chưa bé nhất
SELECT *FROM PHONG 
WHERE SUCCHUA = (SELECT MIN(SUCCHUA) FROM PHONG)

-- 3 Hiển thị môn học được đăng ký nhiều nhất
select a.MAMH, a.TENMH, a.sl
from(
	select mh.MAMH, mh.TENMH, COUNT(mh.MAMH) as sl
	from dbo.SINHVIEN sv
	inner join dbo.SINHVIEN_NHOMHOCPHAN sv_nhp on sv_nhp.MASV = sv.MASV
	inner join dbo.NHOMHOCPHAN nhp on nhp.MANHP = sv_nhp.MANHP
	inner join dbo.MONHOC mh on mh.MAMH = nhp.MAMH
	group by mh.MAMH, mh.TENMH
) a
where a.sl = (
	select MAX(d.sl) as maxSL
	from(
		select mh.MAMH, mh.TENMH, COUNT(mh.MAMH) as sl
		from dbo.SINHVIEN sv
		inner join dbo.SINHVIEN_NHOMHOCPHAN sv_nhp on sv_nhp.MASV = sv.MASV
		inner join dbo.NHOMHOCPHAN nhp on nhp.MANHP = sv_nhp.MANHP
		inner join dbo.MONHOC mh on mh.MAMH = nhp.MAMH
		group by mh.MAMH, mh.TENMH
	) d
)


------------------------ E) Truy vấn không/chưa có ------------------------------

-- 1 Tên sinh viên không học nhóm hoc phần 10--
SELECT HO,TEN FROM dbo.SINHVIEN JOIN dbo.SINHVIEN_NHOMHOCPHAN ON SINHVIEN_NHOMHOCPHAN.MASV = SINHVIEN.MASV
WHERE NOT MANHP='10'
GO

-- 2 Những sinh viên có họ Trần, Huỳnh, Lê
SELECT * FROM dbo.SINHVIEN
WHERE HO IN('Trần','Huỳnh','Lê');
GO

-- 3 Những giang viên có tên không bắt đầu bằng chữ E--
SELECT * FROM dbo.GIANGVIEN
WHERE TEN NOT LIKE 'E%';

-- 4 MASV không học môn BIO3010--
SELECT MASV FROM dbo.SINHVIEN_NHOMHOCPHAN JOIN dbo.NHOMHOCPHAN ON NHOMHOCPHAN.MANHP = SINHVIEN_NHOMHOCPHAN.MANHP
JOIN dbo.MONHOC ON MONHOC.MAMH = NHOMHOCPHAN.MAMH
WHERE NOT MONHOC.MAMH='BIO3010'
GO

-- 5 Hiển thị trang thiết bị mỗi phòng--
SELECT MAGD,PHONG.MAPHONG, MATTB,SOLUONG FROM dbo.PHONG LEFT JOIN dbo.PHONG_TRANGTHIETBI ON PHONG_TRANGTHIETBI.MAPHONG = PHONG.MAPHONG

-- 6 Những môn học có 3 tín chỉ--
SELECT * FROM dbo.MONHOC
WHERE SOTINCHI NOT IN(2,4);
GO

--7 Ngày bắt đầu và kết thúc của mỗi môn học--
SELECT NGAYBATDAU,NGAYKETTHUC,M.MAMH as Ma,TENMH FROM dbo.NHOMHOCPHAN NH 
RIGHT JOIN dbo.MONHOC M ON NH.MAMH = M.MAMH

-- F) Truy vấn Hợp, Giao, Trừ--
-- 1 Hiện thông tin sinh viên và giảng viên có giới tính nữ--
SELECT HO,TEN, MASV FROM dbo.SINHVIEN 
WHERE dbo.SINHVIEN.GIOITINH=N'Nữ'
UNION
SELECT HO,TEN,MAGV FROM dbo.GIANGVIEN 
WHERE dbo.GIANGVIEN.GIOITINH=N'Nữ' 
ORDER BY 3
GO
-- 2 hiển thị sinh viên và giang viên có họ trùng nhau trong nhóm học phần 07--
SELECT HO FROM dbo.SINHVIEN 
JOIN dbo.SINHVIEN_NHOMHOCPHAN ON SINHVIEN_NHOMHOCPHAN.MASV = SINHVIEN.MASV
WHERE MANHP='07'
INTERSECT
SELECT HO  FROM dbo.GIANGVIEN 
JOIN dbo.NHOMHOCPHAN ON NHOMHOCPHAN.MAGV = GIANGVIEN.MAGV 
WHERE MANHP='07'
 
 -- 3 Chọn những môn học không bắt đầu từ tháng 9
 SELECT MAMH FROM dbo.MONHOC
 EXCEPT 
 SELECT MAMH FROM dbo.NHOMHOCPHAN
 WHERE MONTH(NGAYBATDAU)=09
  

--G) Truy vấn update,delect--
-- 1 Xóa thông tin giảng đường G8--
DELETE FROM GIANGDUONG 
WHERE MAGD='G8';
GO
-- 2 Xóa thông tin những phòng có sức chứa nhỏ hỏn 50--
DELETE FROM dbo.PHONG
WHERE SUCCHUA<50; 
GO
-- 3 Xóa những 
DELETE FROM dbo.SINHVIEN_NHOMHOCPHAN 
WHERE EXISTS
(SELECT *
FROM dbo.NHOMHOCPHAN
WHERE dbo.NHOMHOCPHAN.MANHP = dbo.SINHVIEN_NHOMHOCPHAN.MANHP
 AND dbo.NHOMHOCPHAN.MAGV ='7547');
GO
-- 4 Xóa máy tính bàn ở phòng 101
DELETE FROM dbo.PHONG_TRANGTHIETBI
WHERE MATTB='MTB' AND MAPHONG='101';
GO
-- 5 Cập nhập sô lượng máy in--
UPDATE dbo.PHONG_TRANGTHIETBI SET SOLUONG=5 WHERE MATTB='MI';
GO
-- 6 Chỉnh sửa tên sinh vien co MASV 003 thành Minh
UPDATE dbo.SINHVIEN SET TEN = 'Minh' WHERE MASV = '003'
GO
-- 7 Cập nhập máy tính dell thanh hp
UPDATE dbo.TRANGTHIETBI SET TENTTB='Máy tính bàn HP' WHERE MATTB='MTB'
Go


-------------------------------- CÂU 4 ------------------------------------

-------------------------------- THỦ TỤC LƯU TRỮ ------------------------------------

-- Thủ tục liệt kê các nhóm học phần môn 'Tư tưởng Hồ Chí Minh' có giảng viên là 'NỮ' giảng dạy

CREATE PROC SP_NHP_GIANGVIENNU
@GIOITINH NVARCHAR(10) NOT NULL,
@TENMONHOC NVARCHAR(50) NOT NULL
AS
	BEGIN
		SELECT NHP.MANHP AS CACNHOMHOCPHAN 
		FROM dbo.MONHOC MH JOIN dbo.NHOMHOCPHAN NHP ON NHP.MAMH = MH.MAMH
		WHERE MH.TENMH = @TENMONHOC
			AND NHP.MAGV IN ( SELECT MAGV FROM dbo.GIANGVIEN
								WHERE GIOITINH = @GIOITINH
								)
	END
EXEC dbo.SP_NHP_GIANGVIENNU
	@GIOITINH = N'NỮ', -- nvarchar(10)
	@TENMONHOC = N'Tư tưởng Hồ Chí Minh' -- nvarchar(50)
GO

-- Thủ tục thêm sinh viên vào học phần
CREATE PROC SP_THEMSINHVIENVAOHOCPHAN
@MASV VARCHAR(10) NOT NULL,
@MANHP VARCHAR(10) NOT NULL
AS
	BEGIN
		-- Kiểm tra sinh viên có đăng ký môn chưa
		IF EXISTS ( SELECT *
					FROM dbo.SINHVIEN_NHOMHOCPHAN
					WHERE MASV = @MASV AND MANHP = @MANHP
			BEGIN
				PRINT N'ERROR: SINH VIÊN ĐÃ ĐĂNG KÝ MÔN'
			END
		ELSE
			BEGIN
				INSERT INTO dbo.SINHVIEN_NHOMHOCPHAN
				( MASV , MANHP )
				VALUES
				( @MASV , @MANHP )
				PRINT N'THÊM SINH VIÊN VÀO HỌC PHẦN THÀNH CÔNG'
			END
	END
EXEC dbo.SP_THEMSINHVIENVAOHOCPHAN
	@MASV = '01', -- varchar(10)
    @MANHP = '07' -- varchar(10)
GO

-- Thủ tục xóa phòng
CREATE PROC SP_XOAPHONG
@MAPHONG VARCHAR(10) NOT NULL
AS
	BEGIN
		-- Kiểm tra phòng này có tồn tại
		IF NOT EXISTS ( SELECT *
						FROM dbo.PHONG
						WHERE MAPHONG = @MAPHONG )
			BEGIN
				PRINT N'PHÒNG KHÔNG TỒN TẠI'
				RETURN
			END
		-- Nếu phòng tồn tại
		ELSE
			BEGIN
				DELETE FROM dbo.PHONG WHERE MAPHONG = @MAPHONG
				DELETE FROM dbo.PHONG_TRANGTHIETBI WHERE MAPHONG = @MAPHONG
				DELETE FROM dbo.THOIKHOABIEU WHERE MAPHONG = @MAPHONG
			END
	END
EXEC dbo.SP_XOAPHONG
	@MAPHONG = 'p0016' -- varchar(10)
GO

-- Thủ tục liệt kê thông tin các sinh viên đang học môn 'Tư tưởng Hồ Chí Minh' thuộc các nhóm có giảng viên là 'NAM' giảng dạy
CREATE PROC SP_THONGTINSV
@TENMONHOC NVARCHAR(50) NOT NULL,
@GIOITINH NVARCHAR(10) NOT NULL
AS
	BEGIN
		-- Liệt kê thông tin các sinh viên
		SELECT SV.MASV, SV.HO +''+ SV.TEN +''+ SV.GIOITINH +''+ SV.DIENTHOAI +''+ A.MANHP
		AS THONGTINSINHVIEN
		FROM dbo.SINHVIEN SV JOIN dbo.SINHVIEN_NHOMHOCPHAN A ON A.MASV = SV.MASV
							JOIN dbo.NHOMHOCPHAN NPH ON NPH.MAMH = A.MAMH
		WHERE 
	END
GO

-------------------------------- TRIGGER ------------------------------------

IF EXISTS (SELECT NAME FROM SYSOBJECTS WHERE NAME = 'TR_THEMMOI' AND TYPE = 'TR')
	DROP TRIGGER TR_THEMMONMOI1
GO
CREATE TRIGGER TR_THEMMONMOI1 ON dbo.MONHOC
FOR INSERT
AS
	BEGIN
		PRINT N'ĐÃ THÊM MỚI'
		RETURN
	END
GO

-- Khi thêm mới một môn học thì kiểm tra xem đã có môn học trùng tên với môn học vừa được thêm không, đưa ra thông báo
IF EXISTS (SELECT NAME FROM SYSOBJECTS WHERE NAME = 'TR_THEMTUASACH' AND TYPE = 'TR')
	DROP TRIGGER TR_THEMMONMOI2
GO
CREATE TRIGGER TR_THEMMONMOI2 ON dbo.MONHOC
FOR INSERT
AS
BEGIN
	IF EXISTS (SELECT * FROM dbo.MONHOC WHERE TENMH IN (SELECT TENMH FROM inserted))
	BEGIN
		PRINT N'TTỰA SÁCH ĐÃ TỒN TẠI'
		ROLLBACK TRAN
	END
END
GO

-- Kiểm tra xem thời khóa biểu mới thêm vào có bị trùng phòng,tiết hay không
CREATE TRIGGER TR_TrungPhong
ON dbo.THOIKHOABIEU
FOR INSERT
AS
BEGIN
	DECLARE @Count INT = 0
	--
	SET @Count = (select count(*)
	from (
		select inserted.MATH, inserted.THU, inserted.MAPHONG, th.BATDAU, th.KETTHUC 
		from inserted
		inner join dbo.TIETHOC th on th.MATH = inserted.MATH
	) old, dbo.THOIKHOABIEU tkb
	inner join dbo.TIETHOC th on th.MATH = tkb.MATH
	where 
		-- check tiet
		( 
			((old.BATDAU  between th.BATDAU and th.KETTHUC) or (old.KETTHUC  between th.BATDAU and th.KETTHUC) )
			or (old.BATDAU <= th.BATDAU and old.KETTHUC >= th.KETTHUC) 
		)
		-- check phong
		and old.MAPHONG = tkb.MAPHONG
		-- check thu
		and old.THU = tkb.THU		
	)

	-- check
	IF (@Count > 1)
	BEGIN
		PRINT N'Bị Trùng'				
		-- in du lieu bi trung ra
		select tkb.MANHP, tkb.THU, tkb.MAPHONG, th.MATH, th.BATDAU, th.KETTHUC
		from (
			select inserted.MATH, inserted.THU, inserted.MAPHONG, th.BATDAU, th.KETTHUC 
			from inserted
			inner join dbo.TIETHOC th on th.MATH = inserted.MATH
		) old, dbo.THOIKHOABIEU tkb
		inner join dbo.TIETHOC th on th.MATH = tkb.MATH
		where 
			-- check tiet
			( 
				((old.BATDAU  between th.BATDAU and th.KETTHUC) or (old.KETTHUC  between th.BATDAU and th.KETTHUC) )
				or (old.BATDAU <= th.BATDAU and old.KETTHUC >= th.KETTHUC) 
			)
			-- check phong
			and old.MAPHONG = tkb.MAPHONG
			-- check thu
			and old.THU = tkb.THU
		EXCEPT
		select inserted.MANHP, inserted.THU, inserted.MAPHONG, th.MATH, th.BATDAU, th.KETTHUC 
		from inserted
		inner join dbo.TIETHOC th on th.MATH = inserted.MATH
		
		-- 
		ROLLBACK TRAN
	END
		
END
-- test 
INSERT INTO dbo.THOIKHOABIEU
( MANHP, THU, MAPHONG, MATH)
VALUES
( '01', '6', 'p001', 'th02')


-------------------------------- CÂU 5 ------------------------------------
-- Tạo người dùng chỉ có thể đọc 
CREATE LOGIN minh86 WITH PASSWORD='12345';
-- 
CREATE USER uminh86 FOR LOGIN minh86;
--
GRANT CONNECT to uminh86;
-- 
GRANT SELECT on GIANGDUONG to uminh86;
GRANT SELECT on GIANGVIEN to uminh86;
GRANT SELECT on MONHOC to uminh86;
GRANT SELECT on NHOMHOCPHAN to uminh86;
GRANT SELECT on PHONG to uminh86;
GRANT SELECT on PHONG_TRANGTHIETBI to uminh86;
GRANT SELECT on SINHVIEN to uminh86;
GRANT SELECT on SINHVIEN_NHOMHOCPHAN to uminh86;
GRANT SELECT on THOIKHOABIEU to uminh86;
GRANT SELECT on TIETHOC to ulong86;
GRANT SELECT on TRANGTHIETBI to uminh86;
-- 

-- Tạo người dùng có toàn quyền
CREATE LOGIN long86 WITH PASSWORD='12345';
-- 
CREATE USER ulong86 FOR LOGIN long86;
--
GRANT CONNECT to ulong86;
-- 
GRANT ALL on GIANGDUONG to ulong86;
GRANT ALL on GIANGVIEN to ulong86;
GRANT ALL on MONHOC to ulong86;
GRANT ALL on NHOMHOCPHAN to ulong86;
GRANT ALL on PHONG to ulong86;
GRANT ALL on PHONG_TRANGTHIETBI to ulong86;
GRANT ALL on SINHVIEN to ulong86;
GRANT ALL on SINHVIEN_NHOMHOCPHAN to ulong86;
GRANT ALL on THOIKHOABIEU to ulong86;
GRANT ALL on TIETHOC to ulong86;
GRANT ALL on TRANGTHIETBI to ulong86;

-- Tạo người dùng có thế update dữ liệu
CREATE LOGIN phong86 WITH PASSWORD='12345';
-- 
CREATE USER uphong86 FOR LOGIN phong86;
--
GRANT CONNECT to uphong86;
-- 
GRANT SELECT, UPDATE on GIANGDUONG to uphong86;
GRANT SELECT, UPDATE on GIANGVIEN to uphong86;
GRANT SELECT, UPDATE on MONHOC to uphong86;
GRANT SELECT, UPDATE on NHOMHOCPHAN to uphong86;
GRANT SELECT, UPDATE on PHONG to uphong86;
GRANT SELECT, UPDATE on PHONG_TRANGTHIETBI to uphong86;
GRANT SELECT, UPDATE on SINHVIEN to uphong86;
GRANT SELECT, UPDATE on SINHVIEN_NHOMHOCPHAN to uphong86;
GRANT SELECT, UPDATE on THOIKHOABIEU to uphong86;
GRANT SELECT, UPDATE on TIETHOC to uphong86;
GRANT SELECT, UPDATE on TRANGTHIETBI to uphong86;

select sv.MASV, sv.TEN, sv.GIOITINH, sv.DIENTHOAI, nhp.MANHP, gv.HO, gv.TEN, gv.GIOITINH
from dbo.SINHVIEN sv
inner join dbo.SINHVIEN_NHOMHOCPHAN sv_nhp on sv_nhp.MASV = sv.MASV
inner join dbo.NHOMHOCPHAN nhp on nhp.MANHP = sv_nhp.MANHP
inner join dbo.GIANGVIEN gv on gv.MAGV = nhp.MAGV
where gv.GIOITINH = 'Nam'
	and nhp.MAMH = 'POL333'