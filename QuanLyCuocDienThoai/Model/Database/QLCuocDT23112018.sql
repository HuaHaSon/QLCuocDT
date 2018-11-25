DROP DATABASE [QLCuocDT]
go
Create database [QLCuocDT]
go
USE [QLCuocDT]
GO
/****** Object:  Table [dbo].[ChitietHDTC]    Script Date: 23/11/2018 7:54:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietHDTC](
	[ChitietHDTCID] [int] IDENTITY(1,1) NOT NULL,
	[SIMID] [int] NULL,
	[NgayHD] [datetime] NOT NULL,
	[SoPhutSD] [int] NOT NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK__ChitietH__D00DBDA83585E4C8] PRIMARY KEY CLUSTERED 
(
	[ChitietHDTCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaCuoc]    Script Date: 23/11/2018 7:54:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaCuoc](
	[GiaCuocID] [int] IDENTITY(1,1) NOT NULL,
	[GioBD] [varchar](20) NULL,
	[GioKT] [varchar](20) NULL,
	[GiaTien] [int] NULL,
	[Flag] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[GiaCuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonDangKy]    Script Date: 23/11/2018 7:54:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonDangKy](
	[HoaDonDangKyID] [int] IDENTITY(1,1) NOT NULL,
	[KhachHangID] [int] NOT NULL,
	[NgayDK] [datetime] NOT NULL,
	[ChiPhiDK] [int] NOT NULL,
	[TinhTrangThanhToan] [bit] NOT NULL,
	[Flag] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HoaDonDangKyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonTinhCuoc]    Script Date: 23/11/2018 7:54:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonTinhCuoc](
	[HoaDonTinhCuocID] [int] IDENTITY(1,1) NOT NULL,
	[KhachHangID] [int] NOT NULL,
	[SIMID] [int] NULL,
	[NgayHD] [datetime] NOT NULL,
	[CuocThueBao] [int] NOT NULL,
	[ThanhTien] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
	[Flag] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HoaDonTinhCuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 23/11/2018 7:54:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[KhachHangID] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](100) NOT NULL,
	[CMND] [varchar](20) NOT NULL,
	[NgheNghiep] [nvarchar](20) NOT NULL,
	[ChucVu] [nvarchar](20) NOT NULL,
	[Email] [nchar](200) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK__KhachHan__880F211BB547D0BF] PRIMARY KEY CLUSTERED 
(
	[KhachHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIM]    Script Date: 23/11/2018 7:54:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIM](
	[SIMID] [int] IDENTITY(1,1) NOT NULL,
	[TenSim] [nvarchar](20) NOT NULL,
	[SoSim] [varchar](20) NOT NULL,
	[HoaDonDangKyID] [int] NOT NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK__SIM__0CCA9756F1A9ECC4] PRIMARY KEY CLUSTERED 
(
	[SIMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChitietHDTC] ON 

INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (2, 1, CAST(N'2018-11-01T00:00:00.000' AS DateTime), 50, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (3, 2, CAST(N'2018-11-01T00:00:00.000' AS DateTime), 30, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (5, 3, CAST(N'2018-11-01T00:00:00.000' AS DateTime), 20, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (6, 4, CAST(N'2018-11-01T00:00:00.000' AS DateTime), 15, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (7, 5, CAST(N'2018-11-01T00:00:00.000' AS DateTime), 80, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (8, 6, CAST(N'2018-11-01T00:00:00.000' AS DateTime), 45, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (9, 7, CAST(N'2018-11-01T00:00:00.000' AS DateTime), 25, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (10, 8, CAST(N'2018-11-01T00:00:00.000' AS DateTime), 24, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (11, 9, CAST(N'2018-11-01T00:00:00.000' AS DateTime), 100, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (12, 1, CAST(N'2018-11-02T00:00:00.000' AS DateTime), 25, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (13, 2, CAST(N'2018-11-02T00:00:00.000' AS DateTime), 115, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (14, 3, CAST(N'2018-11-02T00:00:00.000' AS DateTime), 47, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (15, 4, CAST(N'2018-11-02T00:00:00.000' AS DateTime), 78, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (16, 5, CAST(N'2018-11-02T00:00:00.000' AS DateTime), 45, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (17, 6, CAST(N'2018-11-02T00:00:00.000' AS DateTime), 22, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (18, 7, CAST(N'2018-11-02T00:00:00.000' AS DateTime), 47, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (19, 8, CAST(N'2018-11-02T00:00:00.000' AS DateTime), 47, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (20, 9, CAST(N'2018-11-02T00:00:00.000' AS DateTime), 27, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (21, 1, CAST(N'2018-11-03T00:00:00.000' AS DateTime), 44, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (22, 2, CAST(N'2018-11-03T00:00:00.000' AS DateTime), 49, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (23, 3, CAST(N'2018-11-03T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (24, 4, CAST(N'2018-11-03T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (25, 5, CAST(N'2018-11-03T00:00:00.000' AS DateTime), 14, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (26, 6, CAST(N'2018-11-03T00:00:00.000' AS DateTime), 77, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (27, 7, CAST(N'2018-11-03T00:00:00.000' AS DateTime), 27, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (28, 8, CAST(N'2018-11-03T00:00:00.000' AS DateTime), 77, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [NgayHD], [SoPhutSD], [Flag]) VALUES (29, 9, CAST(N'2018-11-03T00:00:00.000' AS DateTime), 44, 1)
SET IDENTITY_INSERT [dbo].[ChitietHDTC] OFF
SET IDENTITY_INSERT [dbo].[HoaDonDangKy] ON 

INSERT [dbo].[HoaDonDangKy] ([HoaDonDangKyID], [KhachHangID], [NgayDK], [ChiPhiDK], [TinhTrangThanhToan], [Flag]) VALUES (1, 1, CAST(N'2018-10-01T00:00:00.000' AS DateTime), 50000, 1, 1)
INSERT [dbo].[HoaDonDangKy] ([HoaDonDangKyID], [KhachHangID], [NgayDK], [ChiPhiDK], [TinhTrangThanhToan], [Flag]) VALUES (2, 2, CAST(N'2018-10-02T00:00:00.000' AS DateTime), 50000, 1, 1)
INSERT [dbo].[HoaDonDangKy] ([HoaDonDangKyID], [KhachHangID], [NgayDK], [ChiPhiDK], [TinhTrangThanhToan], [Flag]) VALUES (3, 3, CAST(N'2018-10-05T00:00:00.000' AS DateTime), 50000, 1, 1)
INSERT [dbo].[HoaDonDangKy] ([HoaDonDangKyID], [KhachHangID], [NgayDK], [ChiPhiDK], [TinhTrangThanhToan], [Flag]) VALUES (4, 4, CAST(N'2018-10-06T00:00:00.000' AS DateTime), 50000, 1, 1)
INSERT [dbo].[HoaDonDangKy] ([HoaDonDangKyID], [KhachHangID], [NgayDK], [ChiPhiDK], [TinhTrangThanhToan], [Flag]) VALUES (5, 5, CAST(N'2018-10-06T00:00:00.000' AS DateTime), 50000, 1, 1)
INSERT [dbo].[HoaDonDangKy] ([HoaDonDangKyID], [KhachHangID], [NgayDK], [ChiPhiDK], [TinhTrangThanhToan], [Flag]) VALUES (6, 6, CAST(N'2018-10-07T00:00:00.000' AS DateTime), 50000, 1, 1)
INSERT [dbo].[HoaDonDangKy] ([HoaDonDangKyID], [KhachHangID], [NgayDK], [ChiPhiDK], [TinhTrangThanhToan], [Flag]) VALUES (7, 7, CAST(N'2018-10-07T00:00:00.000' AS DateTime), 50000, 1, 1)
INSERT [dbo].[HoaDonDangKy] ([HoaDonDangKyID], [KhachHangID], [NgayDK], [ChiPhiDK], [TinhTrangThanhToan], [Flag]) VALUES (8, 8, CAST(N'2018-10-08T00:00:00.000' AS DateTime), 50000, 1, 1)
INSERT [dbo].[HoaDonDangKy] ([HoaDonDangKyID], [KhachHangID], [NgayDK], [ChiPhiDK], [TinhTrangThanhToan], [Flag]) VALUES (9, 8, CAST(N'2018-10-09T00:00:00.000' AS DateTime), 50000, 1, 1)
SET IDENTITY_INSERT [dbo].[HoaDonDangKy] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (1, N'NGUYỄN NGỌC HUỲNH NHƯ', N'25454976', N'Bán Hàng', N'Nhân viên', N'huynhnhu@gmail.com                                                                                                                                                                                      ', N'30/32 - NGUYỄN BỈNH KHIÊM - P.1 - GÒ VẤP - TP HCM', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (2, N'ĐÀO VĂN PHÚC', N'25446098', N'Nội Trợ', N'Nhân viên', N'vanphuc@gmail.com                                                                                                                                                                                       ', N'58/647, NGUYỄN OANH, P.17, GÒ VẤP', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (3, N'CTY TNHH TM DV VẬN TẢI DƯƠNG THÀNH', N'25433339', N'Nhân viên', N'Kinh Doanh', N'duongthanh@gmail.com                                                                                                                                                                                    ', N'46/1, HÙNG VƯƠNG, P.1, Q.10', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (4, N'PHẠM THỊ VÂN KHÁNH', N'25488912', N'Giảng Viên', N'Nhân viên', N'vankhanh@gmail.com                                                                                                                                                                                      ', N'326, NGUYỄN CHÍ THANH, P.5, Q.10', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (5, N'TRỊNH THỊ HỒNG', N'25494671', N'Sinh Viên', N'Nhân viên', N'thihong@gmail.com                                                                                                                                                                                       ', N'161/3F, HÙNG VƯƠNG, P.6, Q.06', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (6, N'NGUYỄN THANH THẠCH', N'25450784', N'Văn Phòng', N'Nhân viên', N'thanhthach@gmail.com                                                                                                                                                                                    ', N'20, KHU 1, TÂN SƠN NHÌ, TÂN SƠN NHÌ, TÂN PHÚ', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (7, N'VÕ THANH BÌNH', N'25458659', N'Bán Hàng', N'Nhân viên', N'thanhbinh@gmail.com                                                                                                                                                                                     ', N'232/6, VÕ THỊ SÁU, P.7, Q.03', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (8, N'LÊ THỊ THU CÚC', N'25423812', N'Sinh Viên', N'Nhân viên', N'thucuc@gmail.com                                                                                                                                                                                        ', N'338A,NƠ TRANG LONG, P.13, BÌNH THẠNH', 1)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[SIM] ON 

INSERT [dbo].[SIM] ([SIMID], [TenSim], [SoSim], [HoaDonDangKyID], [Flag]) VALUES (1, N'MobiphoneStudent', N'84913805266', 1, 1)
INSERT [dbo].[SIM] ([SIMID], [TenSim], [SoSim], [HoaDonDangKyID], [Flag]) VALUES (2, N'Mobiphone', N'841236969334', 2, 1)
INSERT [dbo].[SIM] ([SIMID], [TenSim], [SoSim], [HoaDonDangKyID], [Flag]) VALUES (3, N'MobiphoneBusiness', N'84913919143', 3, 1)
INSERT [dbo].[SIM] ([SIMID], [TenSim], [SoSim], [HoaDonDangKyID], [Flag]) VALUES (4, N'MobiphoneStudent', N'84918725997', 4, 1)
INSERT [dbo].[SIM] ([SIMID], [TenSim], [SoSim], [HoaDonDangKyID], [Flag]) VALUES (5, N'MobiphoneStudent', N'84913905878', 5, 1)
INSERT [dbo].[SIM] ([SIMID], [TenSim], [SoSim], [HoaDonDangKyID], [Flag]) VALUES (6, N'MobiphoneStudent', N'84918588499', 6, 1)
INSERT [dbo].[SIM] ([SIMID], [TenSim], [SoSim], [HoaDonDangKyID], [Flag]) VALUES (7, N'Mobiphone', N'84948021619', 7, 1)
INSERT [dbo].[SIM] ([SIMID], [TenSim], [SoSim], [HoaDonDangKyID], [Flag]) VALUES (8, N'Mobiphone', N'84918015588', 8, 1)
INSERT [dbo].[SIM] ([SIMID], [TenSim], [SoSim], [HoaDonDangKyID], [Flag]) VALUES (9, N'Mobiphone', N'84913750047', 9, 1)
SET IDENTITY_INSERT [dbo].[SIM] OFF
ALTER TABLE [dbo].[HoaDonTinhCuoc] ADD  DEFAULT ((50000)) FOR [CuocThueBao]
GO
ALTER TABLE [dbo].[ChitietHDTC]  WITH CHECK ADD  CONSTRAINT [FK__ChitietHD__SIMID__440B1D61] FOREIGN KEY([SIMID])
REFERENCES [dbo].[SIM] ([SIMID])
GO
ALTER TABLE [dbo].[ChitietHDTC] CHECK CONSTRAINT [FK__ChitietHD__SIMID__440B1D61]
GO
ALTER TABLE [dbo].[HoaDonDangKy]  WITH CHECK ADD  CONSTRAINT [FK__HoaDonDan__Khach__4316F928] FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[KhachHang] ([KhachHangID])
GO
ALTER TABLE [dbo].[HoaDonDangKy] CHECK CONSTRAINT [FK__HoaDonDan__Khach__4316F928]
GO
ALTER TABLE [dbo].[HoaDonTinhCuoc]  WITH CHECK ADD  CONSTRAINT [FK__HoaDonTin__Khach__440B1D61] FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[KhachHang] ([KhachHangID])
GO
ALTER TABLE [dbo].[HoaDonTinhCuoc] CHECK CONSTRAINT [FK__HoaDonTin__Khach__440B1D61]
GO
ALTER TABLE [dbo].[HoaDonTinhCuoc]  WITH CHECK ADD  CONSTRAINT [FK__HoaDonTin__SIMID__412EB0B6] FOREIGN KEY([SIMID])
REFERENCES [dbo].[SIM] ([SIMID])
GO
ALTER TABLE [dbo].[HoaDonTinhCuoc] CHECK CONSTRAINT [FK__HoaDonTin__SIMID__412EB0B6]
GO
ALTER TABLE [dbo].[SIM]  WITH CHECK ADD  CONSTRAINT [FK_SIM_HoaDonDangKy] FOREIGN KEY([HoaDonDangKyID])
REFERENCES [dbo].[HoaDonDangKy] ([HoaDonDangKyID])
GO
ALTER TABLE [dbo].[SIM] CHECK CONSTRAINT [FK_SIM_HoaDonDangKy]
GO
