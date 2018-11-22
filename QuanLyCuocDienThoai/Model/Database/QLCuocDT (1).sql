use master
go
alter database QLCuocDT SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
go
drop database QLCuocDT 
go
create database QLCuocDT
go
use QLCuocDT

create table SIM
(
	SIMID int identity(1,1) primary key,
	TenSim nvarchar(20) not null,
	SoSim varchar(20) not null,
	Flag bit not null
)
create table KhachHang
(
	KhachHangID int identity(1,1) primary key,
	TenKH nvarchar(100) not null,
	CMND varchar(20) not null,
	NgheNghiep nvarchar(20) not null,
	ChucVu nvarchar(20) not null,
	DiaChi nvarchar(100) not null,
	Flag bit not null
)

create table HoaDonDangKy
(
	HoaDonDangKyID int identity(1,1) primary key,
	KhachHangID int not null,
	SIMID int not null,
	NgayDK datetime not null,
	ChiPhiDK INT not null,
	TinhTrangThanhToan bit not null,
	Flag bit not null,
	FOREIGN KEY (KhachHangID) REFERENCES KhachHang(KhachHangID),
	FOREIGN KEY (SIMID) REFERENCES SIM(SIMID)	
)
create table HoaDonTinhCuoc
(
	HoaDonTinhCuocID int identity(1,1) primary key,
	KhachHangID int not null,
	SIMID int,
	NgayHD datetime not null,
	CuocThueBao int default 50000 not null, -- 50 000 VNĐ
	ThanhTien int not null, -- =Tổng (*)
	TongTien int not null, -- =CuocThueBao+ThanhTien
	Flag bit not null,
	FOREIGN KEY (KhachHangID) REFERENCES KhachHang(KhachHangID),
	FOREIGN KEY (SIMID) REFERENCES SIM(SIMID)	
)
create table ChitietHDTC
(
	ChitietHDTCID int identity(1,1) primary key,
	SIMID int,
	TimeBD datetime not null,
	TiemKT datetime not null,
	SoPhutSD int not null,
	Flag bit not null,
	FOREIGN KEY (SIMID) REFERENCES SIM(SIMID)	
)	
create table GiaCuoc
(
	GiaCuocID int identity(1,1) primary key,
	GioBD varchar(20),
	GioKT varchar(20),
	GiaTien int,
	Flag bit
)
INSERT into KhachHang(TenKH,CMND,NgheNghiep,ChucVu,DiaChi,Flag) VALUES ( N'NGUYỄN NGỌC HUỲNH NHƯ', N'25454976', N'Bán Hàng',N'Nhân viên', N'30/32 - NGUYỄN BỈNH KHIÊM - P.1 - GÒ VẤP - TP HCM', 1)
INSERT into KhachHang(TenKH,CMND,NgheNghiep,ChucVu,DiaChi,Flag) VALUES (N'ĐÀO VĂN PHÚC', N'25446098', N'Nội Trợ',N'Nhân viên', N'58/647, NGUYỄN OANH, P.17, GÒ VẤP', 1)
INSERT into KhachHang(TenKH,CMND,NgheNghiep,ChucVu,DiaChi,Flag) VALUES ( N'CTY TNHH TM DV VẬN TẢI DƯƠNG THÀNH', N'25433339',N'Nhân viên',  N'Kinh Doanh', N'46/1, HÙNG VƯƠNG, P.1, Q.10', 1)
INSERT into KhachHang (TenKH,CMND,NgheNghiep,ChucVu,DiaChi,Flag) VALUES ( N'PHẠM THỊ VÂN KHÁNH', N'25488912', N'Giảng Viên',N'Nhân viên',  N'326, NGUYỄN CHÍ THANH, P.5, Q.10', 1)
INSERT into KhachHang (TenKH,CMND,NgheNghiep,ChucVu,DiaChi,Flag) VALUES ( N'TRỊNH THỊ HỒNG', N'25494671', N'Sinh Viên', N'Nhân viên', N'161/3F, HÙNG VƯƠNG, P.6, Q.06', 1)
INSERT into KhachHang (TenKH,CMND,NgheNghiep,ChucVu,DiaChi,Flag) VALUES ( N'NGUYỄN THANH THẠCH', N'25450784', N'Văn Phòng',N'Nhân viên',  N'20, KHU 1, TÂN SƠN NHÌ, TÂN SƠN NHÌ, TÂN PHÚ', 1)
INSERT into KhachHang (TenKH,CMND,NgheNghiep,ChucVu,DiaChi,Flag) VALUES ( N'VÕ THANH BÌNH', N'25458659', N'Bán Hàng',N'Nhân viên',  N'232/6, VÕ THỊ SÁU, P.7, Q.03', 1)
INSERT into KhachHang (TenKH,CMND,NgheNghiep,ChucVu,DiaChi,Flag) VALUES ( N'LÊ THỊ THU CÚC', N'25423812', N'Sinh Viên', N'Nhân viên', N'338A,NƠ TRANG LONG, P.13, BÌNH THẠNH', 1)

INSERT into SIM (TenSIM,SoSIM,Flag) VALUES ( N'Mobiphone',N'84913805266', 1)
INSERT into SIM (TenSIM,SoSIM,Flag) VALUES ( N'Vinaphone',N'841236969334', 1)
INSERT into SIM (TenSIM,SoSIM,Flag) VALUES ( N'Vinaphone',N'84913919143', 1)
INSERT into SIM (TenSIM,SoSIM,Flag) VALUES ( N'Viettel',N'84918725997', 1)
INSERT into SIM (TenSIM,SoSIM,Flag) VALUES ( N'Viettel',N'84913905878', 1)
INSERT into SIM (TenSIM,SoSIM,Flag) VALUES ( N'Viettel',N'84918588499', 1)
INSERT into SIM (TenSIM,SoSIM,Flag) VALUES ( N'Beeline',N'84948021619', 1)
INSERT into SIM (TenSIM,SoSIM,Flag) VALUES ( N'Mobiphone',N'84918015588', 1)
INSERT into SIM (TenSIM,SoSIM,Flag) VALUES ( N'Mobiphone',N'84913750047', 1)