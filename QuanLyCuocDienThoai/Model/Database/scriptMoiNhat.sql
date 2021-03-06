USE [QLCuocDT]
GO
/****** Object:  Table [dbo].[ChiTietCuocGoi]    Script Date: 13/12/2018 11:51:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietCuocGoi](
	[ChiTietCuocGoiID] [int] IDENTITY(1,1) NOT NULL,
	[SIMID] [int] NULL,
	[ThoiGianBD] [datetime] NULL,
	[ThoiGianKT] [datetime] NULL,
	[ThanhTien] [decimal](18, 0) NOT NULL,
	[SoPhutSD] [int] NOT NULL,
	[ChiTietHDTCID] [int] NOT NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK__ChitietH__D00DBDA83585E4C8] PRIMARY KEY CLUSTERED 
(
	[ChiTietCuocGoiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHDTC]    Script Date: 13/12/2018 11:51:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDTC](
	[ChiTietHDTCID] [int] IDENTITY(1,1) NOT NULL,
	[SoPhutSD] [int] NOT NULL,
	[NgayHD] [datetime] NOT NULL,
	[HoaDonTinhCuocThangID] [int] NOT NULL,
	[ThanhTien] [decimal](18, 0) NOT NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK__HoaDonTi__DBAD01B3D99C7F97] PRIMARY KEY CLUSTERED 
(
	[ChiTietHDTCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileLogSIM]    Script Date: 13/12/2018 11:51:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileLogSIM](
	[FileLogSIMID] [int] IDENTITY(1,1) NOT NULL,
	[SIMID] [int] NOT NULL,
	[ThoiGianBD] [datetime] NOT NULL,
	[ThoiGianKT] [datetime] NOT NULL,
 CONSTRAINT [PK_FileLogSIM] PRIMARY KEY CLUSTERED 
(
	[FileLogSIMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaCuoc]    Script Date: 13/12/2018 11:51:56 AM ******/
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
/****** Object:  Table [dbo].[HoaDonDangKy]    Script Date: 13/12/2018 11:51:56 AM ******/
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
/****** Object:  Table [dbo].[HoaDonTinhCuocThang]    Script Date: 13/12/2018 11:51:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonTinhCuocThang](
	[HoaDonTinhCuocThangID] [int] IDENTITY(1,1) NOT NULL,
	[SIMID] [int] NOT NULL,
	[TienThueBao] [decimal](18, 0) NOT NULL,
	[TienCuocSD] [decimal](18, 0) NOT NULL,
	[Flag] [bit] NOT NULL,
	[ThangHD] [datetime] NOT NULL,
 CONSTRAINT [PK_HoaDonTinhCuocThang] PRIMARY KEY CLUSTERED 
(
	[HoaDonTinhCuocThangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 13/12/2018 11:51:56 AM ******/
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
/****** Object:  Table [dbo].[SIM]    Script Date: 13/12/2018 11:51:56 AM ******/
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
/****** Object:  Table [dbo].[TienThueBao]    Script Date: 13/12/2018 11:51:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TienThueBao](
	[TienThueBaoID] [int] IDENTITY(1,1) NOT NULL,
	[GiaTienThueBao] [decimal](18, 0) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietCuocGoi] ON 

INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (203, 4, CAST(N'2018-12-01T01:58:57.000' AS DateTime), CAST(N'2018-12-01T15:48:23.000' AS DateTime), CAST(150750 AS Decimal(18, 0)), 829, 63, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (204, 8, CAST(N'2018-12-01T09:37:22.000' AS DateTime), CAST(N'2018-12-01T22:17:16.000' AS DateTime), CAST(151800 AS Decimal(18, 0)), 759, 64, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (205, 6, CAST(N'2018-12-18T03:59:01.000' AS DateTime), CAST(N'2018-12-18T07:48:41.000' AS DateTime), CAST(36600 AS Decimal(18, 0)), 229, 65, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (206, 10, CAST(N'2018-12-29T07:24:14.000' AS DateTime), CAST(N'2018-12-29T07:58:42.000' AS DateTime), CAST(6800 AS Decimal(18, 0)), 34, 66, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (207, 3, CAST(N'2018-12-25T00:18:41.000' AS DateTime), CAST(N'2018-12-25T09:11:38.000' AS DateTime), CAST(86350 AS Decimal(18, 0)), 532, 67, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (208, 2, CAST(N'2018-12-21T01:01:00.000' AS DateTime), CAST(N'2018-12-21T05:41:00.000' AS DateTime), CAST(38050 AS Decimal(18, 0)), 280, 68, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (209, 5, CAST(N'2018-12-15T03:25:27.000' AS DateTime), CAST(N'2018-12-15T09:01:17.000' AS DateTime), CAST(56300 AS Decimal(18, 0)), 335, 69, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (210, 9, CAST(N'2018-12-20T15:00:59.000' AS DateTime), CAST(N'2018-12-20T20:05:59.000' AS DateTime), CAST(61000 AS Decimal(18, 0)), 305, 70, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (211, 7, CAST(N'2018-12-17T11:39:43.000' AS DateTime), CAST(N'2018-12-17T13:15:42.000' AS DateTime), CAST(19000 AS Decimal(18, 0)), 95, 71, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (212, 1, CAST(N'2018-12-02T00:27:40.000' AS DateTime), CAST(N'2018-12-02T10:05:52.000' AS DateTime), CAST(95800 AS Decimal(18, 0)), 578, 72, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (213, 9, CAST(N'2018-12-27T12:39:27.000' AS DateTime), CAST(N'2018-12-27T13:48:23.000' AS DateTime), CAST(13600 AS Decimal(18, 0)), 68, 73, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (214, 3, CAST(N'2018-12-28T02:17:10.000' AS DateTime), CAST(N'2018-12-28T20:14:51.000' AS DateTime), CAST(201100 AS Decimal(18, 0)), 1077, 74, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (215, 7, CAST(N'2018-12-09T02:54:37.000' AS DateTime), CAST(N'2018-12-09T10:41:42.000' AS DateTime), CAST(80950 AS Decimal(18, 0)), 467, 75, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (216, 5, CAST(N'2018-12-14T08:41:40.000' AS DateTime), CAST(N'2018-12-14T15:51:58.000' AS DateTime), CAST(86000 AS Decimal(18, 0)), 430, 76, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (217, 8, CAST(N'2018-12-24T12:06:53.000' AS DateTime), CAST(N'2018-12-24T14:02:00.000' AS DateTime), CAST(23000 AS Decimal(18, 0)), 115, 77, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (218, 2, CAST(N'2018-12-04T17:35:55.000' AS DateTime), CAST(N'2018-12-04T21:34:03.000' AS DateTime), CAST(47600 AS Decimal(18, 0)), 238, 78, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (219, 10, CAST(N'2018-12-30T04:43:53.000' AS DateTime), CAST(N'2018-12-30T16:55:33.000' AS DateTime), CAST(139400 AS Decimal(18, 0)), 731, 79, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (220, 4, CAST(N'2018-12-11T09:08:06.000' AS DateTime), CAST(N'2018-12-11T16:05:34.000' AS DateTime), CAST(83400 AS Decimal(18, 0)), 417, 80, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (221, 2, CAST(N'2018-12-25T14:30:33.000' AS DateTime), CAST(N'2018-12-25T19:46:46.000' AS DateTime), CAST(63200 AS Decimal(18, 0)), 316, 81, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (222, 6, CAST(N'2018-12-17T01:45:06.000' AS DateTime), CAST(N'2018-12-17T18:58:07.000' AS DateTime), CAST(190700 AS Decimal(18, 0)), 1033, 82, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (223, 10, CAST(N'2018-12-28T05:10:20.000' AS DateTime), CAST(N'2018-12-28T18:09:09.000' AS DateTime), CAST(150150 AS Decimal(18, 0)), 778, 83, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (224, 8, CAST(N'2018-12-23T17:22:06.000' AS DateTime), CAST(N'2018-12-23T20:52:41.000' AS DateTime), CAST(42000 AS Decimal(18, 0)), 210, 84, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (225, 2, CAST(N'2018-12-18T00:41:51.000' AS DateTime), CAST(N'2018-12-18T14:52:07.000' AS DateTime), CAST(151100 AS Decimal(18, 0)), 850, 85, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (226, 5, CAST(N'2018-12-14T02:12:33.000' AS DateTime), CAST(N'2018-12-14T20:12:44.000' AS DateTime), CAST(201450 AS Decimal(18, 0)), 1080, 76, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (227, 3, CAST(N'2018-12-09T13:24:19.000' AS DateTime), CAST(N'2018-12-09T22:55:15.000' AS DateTime), CAST(114000 AS Decimal(18, 0)), 570, 86, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (228, 7, CAST(N'2018-12-20T18:49:33.000' AS DateTime), CAST(N'2018-12-20T22:06:17.000' AS DateTime), CAST(39200 AS Decimal(18, 0)), 196, 87, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (229, 5, CAST(N'2018-12-08T17:05:29.000' AS DateTime), CAST(N'2018-12-08T20:16:50.000' AS DateTime), CAST(38200 AS Decimal(18, 0)), 191, 88, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (230, 9, CAST(N'2018-12-19T20:38:08.000' AS DateTime), CAST(N'2018-12-19T22:17:15.000' AS DateTime), CAST(19800 AS Decimal(18, 0)), 99, 89, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (231, 3, CAST(N'2018-12-07T14:51:46.000' AS DateTime), CAST(N'2018-12-07T23:09:52.000' AS DateTime), CAST(98950 AS Decimal(18, 0)), 498, 90, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (232, 1, CAST(N'2018-12-02T02:03:32.000' AS DateTime), CAST(N'2018-12-02T02:52:23.000' AS DateTime), CAST(-5000 AS Decimal(18, 0)), 48, 72, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (233, 5, CAST(N'2018-12-02T03:16:47.000' AS DateTime), CAST(N'2018-12-02T15:22:11.000' AS DateTime), CAST(133850 AS Decimal(18, 0)), 725, 91, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (234, 8, CAST(N'2018-12-02T21:46:47.000' AS DateTime), CAST(N'2018-12-02T22:34:10.000' AS DateTime), CAST(9400 AS Decimal(18, 0)), 47, 92, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (235, 6, CAST(N'2018-12-15T11:27:16.000' AS DateTime), CAST(N'2018-12-15T15:50:28.000' AS DateTime), CAST(52600 AS Decimal(18, 0)), 263, 93, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (236, 10, CAST(N'2018-12-28T01:03:40.000' AS DateTime), CAST(N'2018-12-28T11:20:18.000' AS DateTime), CAST(105400 AS Decimal(18, 0)), 616, 83, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (237, 8, CAST(N'2018-12-22T19:41:24.000' AS DateTime), CAST(N'2018-12-22T21:46:54.000' AS DateTime), CAST(25000 AS Decimal(18, 0)), 125, 94, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (238, 2, CAST(N'2018-12-22T00:32:48.000' AS DateTime), CAST(N'2018-12-22T10:27:46.000' AS DateTime), CAST(99450 AS Decimal(18, 0)), 594, 95, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (239, 6, CAST(N'2018-12-21T09:40:24.000' AS DateTime), CAST(N'2018-12-21T12:10:53.000' AS DateTime), CAST(30000 AS Decimal(18, 0)), 150, 96, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (240, 4, CAST(N'2018-12-12T02:17:23.000' AS DateTime), CAST(N'2018-12-12T07:22:41.000' AS DateTime), CAST(46700 AS Decimal(18, 0)), 305, 97, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (241, 8, CAST(N'2018-12-16T05:52:43.000' AS DateTime), CAST(N'2018-12-16T15:52:15.000' AS DateTime), CAST(116450 AS Decimal(18, 0)), 599, 98, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (242, 1, CAST(N'2018-12-16T00:21:43.000' AS DateTime), CAST(N'2018-12-16T23:04:14.000' AS DateTime), CAST(252300 AS Decimal(18, 0)), 1362, 99, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (243, 10, CAST(N'2018-12-28T07:46:11.000' AS DateTime), CAST(N'2018-12-28T10:56:41.000' AS DateTime), CAST(38000 AS Decimal(18, 0)), 190, 83, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (244, 3, CAST(N'2018-12-18T18:50:44.000' AS DateTime), CAST(N'2018-12-18T19:44:04.000' AS DateTime), CAST(10600 AS Decimal(18, 0)), 53, 100, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (245, 1, CAST(N'2018-12-06T21:16:20.000' AS DateTime), CAST(N'2018-12-06T22:16:58.000' AS DateTime), CAST(12000 AS Decimal(18, 0)), 60, 101, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (246, 5, CAST(N'2018-12-14T04:48:25.000' AS DateTime), CAST(N'2018-12-14T11:00:15.000' AS DateTime), CAST(67650 AS Decimal(18, 0)), 371, 76, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (247, 9, CAST(N'2018-12-25T08:13:38.000' AS DateTime), CAST(N'2018-12-25T11:10:17.000' AS DateTime), CAST(35200 AS Decimal(18, 0)), 176, 102, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (248, 7, CAST(N'2018-12-16T03:28:31.000' AS DateTime), CAST(N'2018-12-16T08:56:37.000' AS DateTime), CAST(54850 AS Decimal(18, 0)), 328, 103, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (249, 1, CAST(N'2018-12-01T00:50:38.000' AS DateTime), CAST(N'2018-12-01T13:03:50.000' AS DateTime), CAST(127950 AS Decimal(18, 0)), 733, 104, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (250, 4, CAST(N'2018-12-12T05:14:51.000' AS DateTime), CAST(N'2018-12-12T13:13:52.000' AS DateTime), CAST(90350 AS Decimal(18, 0)), 479, 97, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (251, 3, CAST(N'2018-12-25T03:39:58.000' AS DateTime), CAST(N'2018-12-25T19:04:40.000' AS DateTime), CAST(174800 AS Decimal(18, 0)), 924, 67, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (252, 6, CAST(N'2018-12-25T05:17:15.000' AS DateTime), CAST(N'2018-12-25T11:53:59.000' AS DateTime), CAST(73900 AS Decimal(18, 0)), 396, 105, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (253, 5, CAST(N'2018-12-13T08:04:37.000' AS DateTime), CAST(N'2018-12-13T17:50:56.000' AS DateTime), CAST(117200 AS Decimal(18, 0)), 586, 106, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (254, 8, CAST(N'2018-12-23T13:28:51.000' AS DateTime), CAST(N'2018-12-23T17:00:58.000' AS DateTime), CAST(42400 AS Decimal(18, 0)), 212, 84, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (255, 2, CAST(N'2018-12-19T13:50:16.000' AS DateTime), CAST(N'2018-12-19T14:09:01.000' AS DateTime), CAST(3600 AS Decimal(18, 0)), 18, 107, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (256, 10, CAST(N'2018-12-29T05:05:51.000' AS DateTime), CAST(N'2018-12-29T19:54:31.000' AS DateTime), CAST(171900 AS Decimal(18, 0)), 888, 66, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (257, 4, CAST(N'2018-12-10T09:30:04.000' AS DateTime), CAST(N'2018-12-10T19:04:33.000' AS DateTime), CAST(114800 AS Decimal(18, 0)), 574, 108, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (258, 7, CAST(N'2018-12-21T14:55:17.000' AS DateTime), CAST(N'2018-12-21T18:14:34.000' AS DateTime), CAST(39800 AS Decimal(18, 0)), 199, 109, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (259, 6, CAST(N'2018-12-16T01:07:04.000' AS DateTime), CAST(N'2018-12-16T21:57:06.000' AS DateTime), CAST(232200 AS Decimal(18, 0)), 1250, 110, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (260, 9, CAST(N'2018-12-27T06:32:17.000' AS DateTime), CAST(N'2018-12-27T20:07:08.000' AS DateTime), CAST(161450 AS Decimal(18, 0)), 814, 73, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (261, 8, CAST(N'2018-12-22T17:44:04.000' AS DateTime), CAST(N'2018-12-22T23:50:39.000' AS DateTime), CAST(70500 AS Decimal(18, 0)), 366, 94, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (262, 1, CAST(N'2018-12-02T22:09:17.000' AS DateTime), CAST(N'2018-12-02T23:01:41.000' AS DateTime), CAST(10150 AS Decimal(18, 0)), 52, 72, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (263, 5, CAST(N'2018-12-13T02:34:30.000' AS DateTime), CAST(N'2018-12-13T22:11:42.000' AS DateTime), CAST(221950 AS Decimal(18, 0)), 1177, 106, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (264, 3, CAST(N'2018-12-05T00:09:54.000' AS DateTime), CAST(N'2018-12-05T01:55:15.000' AS DateTime), CAST(700 AS Decimal(18, 0)), 105, 111, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (265, 7, CAST(N'2018-12-28T11:38:31.000' AS DateTime), CAST(N'2018-12-28T18:21:27.000' AS DateTime), CAST(80400 AS Decimal(18, 0)), 402, 112, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (266, 10, CAST(N'2018-12-09T12:58:45.000' AS DateTime), CAST(N'2018-12-09T20:44:40.000' AS DateTime), CAST(93000 AS Decimal(18, 0)), 465, 113, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (267, 9, CAST(N'2018-12-23T07:50:49.000' AS DateTime), CAST(N'2018-12-23T21:03:48.000' AS DateTime), CAST(158400 AS Decimal(18, 0)), 792, 114, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (268, 2, CAST(N'2018-12-22T02:19:49.000' AS DateTime), CAST(N'2018-12-22T05:15:48.000' AS DateTime), CAST(21200 AS Decimal(18, 0)), 175, 95, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (269, 1, CAST(N'2018-12-01T02:25:30.000' AS DateTime), CAST(N'2018-12-01T05:51:22.000' AS DateTime), CAST(27500 AS Decimal(18, 0)), 205, 104, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (270, 4, CAST(N'2018-12-05T10:40:13.000' AS DateTime), CAST(N'2018-12-05T17:04:48.000' AS DateTime), CAST(76800 AS Decimal(18, 0)), 384, 115, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (271, 8, CAST(N'2018-12-29T13:18:17.000' AS DateTime), CAST(N'2018-12-29T15:32:13.000' AS DateTime), CAST(26600 AS Decimal(18, 0)), 133, 116, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (272, 6, CAST(N'2018-12-05T06:40:20.000' AS DateTime), CAST(N'2018-12-05T08:19:38.000' AS DateTime), CAST(18650 AS Decimal(18, 0)), 99, 117, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (273, 10, CAST(N'2018-12-28T03:52:56.000' AS DateTime), CAST(N'2018-12-28T06:05:58.000' AS DateTime), CAST(17250 AS Decimal(18, 0)), 133, 83, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (274, 3, CAST(N'2018-12-19T03:03:35.000' AS DateTime), CAST(N'2018-12-19T04:43:48.000' AS DateTime), CAST(8200 AS Decimal(18, 0)), 100, 118, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (275, 2, CAST(N'2018-12-07T10:25:45.000' AS DateTime), CAST(N'2018-12-07T22:33:52.000' AS DateTime), CAST(145600 AS Decimal(18, 0)), 728, 119, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (276, 5, CAST(N'2018-12-15T00:54:09.000' AS DateTime), CAST(N'2018-12-15T08:08:33.000' AS DateTime), CAST(68350 AS Decimal(18, 0)), 434, 69, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (277, 4, CAST(N'2018-12-29T09:52:42.000' AS DateTime), CAST(N'2018-12-29T11:30:53.000' AS DateTime), CAST(19600 AS Decimal(18, 0)), 98, 120, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (278, 7, CAST(N'2018-12-01T01:07:04.000' AS DateTime), CAST(N'2018-12-01T08:27:13.000' AS DateTime), CAST(70200 AS Decimal(18, 0)), 440, 121, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (279, 1, CAST(N'2018-12-13T06:15:57.000' AS DateTime), CAST(N'2018-12-13T08:54:03.000' AS DateTime), CAST(29400 AS Decimal(18, 0)), 158, 122, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (280, 9, CAST(N'2018-12-26T08:08:09.000' AS DateTime), CAST(N'2018-12-26T12:55:39.000' AS DateTime), CAST(57400 AS Decimal(18, 0)), 287, 123, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (281, 3, CAST(N'2018-12-26T16:49:22.000' AS DateTime), CAST(N'2018-12-26T19:21:34.000' AS DateTime), CAST(30400 AS Decimal(18, 0)), 152, 124, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (282, 6, CAST(N'2018-12-05T12:27:12.000' AS DateTime), CAST(N'2018-12-05T20:51:28.000' AS DateTime), CAST(100800 AS Decimal(18, 0)), 504, 117, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (283, 5, CAST(N'2018-12-13T04:10:22.000' AS DateTime), CAST(N'2018-12-13T14:58:14.000' AS DateTime), CAST(120950 AS Decimal(18, 0)), 647, 106, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (284, 8, CAST(N'2018-12-24T09:35:36.000' AS DateTime), CAST(N'2018-12-24T14:09:15.000' AS DateTime), CAST(54600 AS Decimal(18, 0)), 273, 77, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (285, 7, CAST(N'2018-12-09T00:23:30.000' AS DateTime), CAST(N'2018-12-09T05:01:39.000' AS DateTime), CAST(35800 AS Decimal(18, 0)), 278, 75, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (286, 10, CAST(N'2018-12-30T01:12:35.000' AS DateTime), CAST(N'2018-12-30T16:02:49.000' AS DateTime), CAST(160450 AS Decimal(18, 0)), 890, 79, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (287, 4, CAST(N'2018-12-10T05:37:49.000' AS DateTime), CAST(N'2018-12-10T15:12:50.000' AS DateTime), CAST(110700 AS Decimal(18, 0)), 575, 108, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (288, 2, CAST(N'2018-12-06T17:49:35.000' AS DateTime), CAST(N'2018-12-06T18:55:22.000' AS DateTime), CAST(13000 AS Decimal(18, 0)), 65, 125, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (289, 6, CAST(N'2018-12-10T18:24:18.000' AS DateTime), CAST(N'2018-12-10T20:51:38.000' AS DateTime), CAST(29400 AS Decimal(18, 0)), 147, 126, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (290, 9, CAST(N'2018-12-27T02:39:02.000' AS DateTime), CAST(N'2018-12-27T17:16:25.000' AS DateTime), CAST(162200 AS Decimal(18, 0)), 877, 73, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (291, 8, CAST(N'2018-12-22T13:51:48.000' AS DateTime), CAST(N'2018-12-22T20:59:56.000' AS DateTime), CAST(85600 AS Decimal(18, 0)), 428, 94, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (292, 1, CAST(N'2018-12-03T18:16:02.000' AS DateTime), CAST(N'2018-12-03T19:09:58.000' AS DateTime), CAST(10600 AS Decimal(18, 0)), 53, 127, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (293, 10, CAST(N'2018-12-28T05:28:48.000' AS DateTime), CAST(N'2018-12-28T22:52:30.000' AS DateTime), CAST(204050 AS Decimal(18, 0)), 1043, 83, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (294, 3, CAST(N'2018-12-09T10:53:02.000' AS DateTime), CAST(N'2018-12-09T21:02:31.000' AS DateTime), CAST(121800 AS Decimal(18, 0)), 609, 86, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (295, 7, CAST(N'2018-12-20T14:17:15.000' AS DateTime), CAST(N'2018-12-20T21:12:33.000' AS DateTime), CAST(83000 AS Decimal(18, 0)), 415, 87, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (296, 5, CAST(N'2018-12-24T01:30:14.000' AS DateTime), CAST(N'2018-12-24T13:08:43.000' AS DateTime), CAST(122950 AS Decimal(18, 0)), 698, 128, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (297, 9, CAST(N'2018-12-25T06:54:15.000' AS DateTime), CAST(N'2018-12-25T23:06:06.000' AS DateTime), CAST(193650 AS Decimal(18, 0)), 971, 102, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (298, 2, CAST(N'2018-12-06T10:19:28.000' AS DateTime), CAST(N'2018-12-06T23:16:08.000' AS DateTime), CAST(154400 AS Decimal(18, 0)), 776, 125, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (299, 1, CAST(N'2018-12-17T16:04:24.000' AS DateTime), CAST(N'2018-12-17T21:38:03.000' AS DateTime), CAST(66600 AS Decimal(18, 0)), 333, 129, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (300, 4, CAST(N'2018-12-09T03:16:32.000' AS DateTime), CAST(N'2018-12-09T19:20:38.000' AS DateTime), CAST(181450 AS Decimal(18, 0)), 964, 130, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (301, 3, CAST(N'2018-12-30T08:07:51.000' AS DateTime), CAST(N'2018-12-30T13:36:37.000' AS DateTime), CAST(65600 AS Decimal(18, 0)), 328, 131, 1)
GO
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (302, 6, CAST(N'2018-12-13T07:53:52.000' AS DateTime), CAST(N'2018-12-13T11:56:25.000' AS DateTime), CAST(48400 AS Decimal(18, 0)), 242, 132, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (303, 6, CAST(N'2018-12-01T03:33:44.000' AS DateTime), CAST(N'2018-12-01T09:39:45.000' AS DateTime), CAST(62700 AS Decimal(18, 0)), 366, 133, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (304, 8, CAST(N'2018-12-06T13:29:55.000' AS DateTime), CAST(N'2018-12-06T14:40:23.000' AS DateTime), CAST(14000 AS Decimal(18, 0)), 70, 134, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (305, 7, CAST(N'2018-12-08T06:27:04.000' AS DateTime), CAST(N'2018-12-08T08:25:01.000' AS DateTime), CAST(21800 AS Decimal(18, 0)), 117, 135, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (306, 10, CAST(N'2018-12-01T11:12:09.000' AS DateTime), CAST(N'2018-12-01T17:09:39.000' AS DateTime), CAST(71400 AS Decimal(18, 0)), 357, 136, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (307, 8, CAST(N'2018-12-26T12:55:28.000' AS DateTime), CAST(N'2018-12-26T13:39:01.000' AS DateTime), CAST(8600 AS Decimal(18, 0)), 43, 137, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (308, 2, CAST(N'2018-12-05T03:10:32.000' AS DateTime), CAST(N'2018-12-05T04:00:19.000' AS DateTime), CAST(-1450 AS Decimal(18, 0)), 49, 138, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (309, 6, CAST(N'2018-12-25T02:54:27.000' AS DateTime), CAST(N'2018-12-25T04:03:00.000' AS DateTime), CAST(1350 AS Decimal(18, 0)), 68, 105, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (310, 4, CAST(N'2018-12-21T03:37:46.000' AS DateTime), CAST(N'2018-12-21T23:33:22.000' AS DateTime), CAST(227250 AS Decimal(18, 0)), 1195, 139, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (311, 8, CAST(N'2018-12-22T00:12:45.000' AS DateTime), CAST(N'2018-12-22T06:03:53.000' AS DateTime), CAST(49850 AS Decimal(18, 0)), 351, 94, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (312, 1, CAST(N'2018-12-03T04:37:59.000' AS DateTime), CAST(N'2018-12-03T05:13:55.000' AS DateTime), CAST(100 AS Decimal(18, 0)), 35, 127, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (313, 10, CAST(N'2018-12-26T04:50:54.000' AS DateTime), CAST(N'2018-12-26T09:46:07.000' AS DateTime), CAST(52550 AS Decimal(18, 0)), 295, 140, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (314, 3, CAST(N'2018-12-15T13:48:05.000' AS DateTime), CAST(N'2018-12-15T18:38:43.000' AS DateTime), CAST(58000 AS Decimal(18, 0)), 290, 141, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (315, 1, CAST(N'2018-12-03T08:26:45.000' AS DateTime), CAST(N'2018-12-03T10:50:00.000' AS DateTime), CAST(28600 AS Decimal(18, 0)), 143, 127, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (316, 5, CAST(N'2018-12-10T09:00:23.000' AS DateTime), CAST(N'2018-12-10T21:20:04.000' AS DateTime), CAST(147800 AS Decimal(18, 0)), 739, 142, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (317, 9, CAST(N'2018-12-09T04:29:23.000' AS DateTime), CAST(N'2018-12-09T05:32:04.000' AS DateTime), CAST(5100 AS Decimal(18, 0)), 62, 143, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (318, 7, CAST(N'2018-12-20T04:28:58.000' AS DateTime), CAST(N'2018-12-20T12:53:34.000' AS DateTime), CAST(93250 AS Decimal(18, 0)), 504, 87, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (319, 1, CAST(N'2018-12-01T09:52:11.000' AS DateTime), CAST(N'2018-12-01T11:04:36.000' AS DateTime), CAST(14400 AS Decimal(18, 0)), 72, 104, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (320, 4, CAST(N'2018-12-19T18:00:17.000' AS DateTime), CAST(N'2018-12-19T23:23:06.000' AS DateTime), CAST(63250 AS Decimal(18, 0)), 322, 144, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (321, 3, CAST(N'2018-12-07T01:29:11.000' AS DateTime), CAST(N'2018-12-07T14:57:09.000' AS DateTime), CAST(144900 AS Decimal(18, 0)), 807, 90, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (322, 6, CAST(N'2018-12-17T05:54:25.000' AS DateTime), CAST(N'2018-12-17T13:07:11.000' AS DateTime), CAST(83150 AS Decimal(18, 0)), 432, 82, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (323, 5, CAST(N'2018-12-04T00:54:11.000' AS DateTime), CAST(N'2018-12-04T19:05:36.000' AS DateTime), CAST(199750 AS Decimal(18, 0)), 1091, 145, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (324, 8, CAST(N'2018-12-24T11:35:19.000' AS DateTime), CAST(N'2018-12-24T22:50:08.000' AS DateTime), CAST(134800 AS Decimal(18, 0)), 674, 77, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (325, 2, CAST(N'2018-12-04T02:56:38.000' AS DateTime), CAST(N'2018-12-04T15:11:45.000' AS DateTime), CAST(134650 AS Decimal(18, 0)), 735, 78, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (326, 10, CAST(N'2018-12-29T13:08:24.000' AS DateTime), CAST(N'2018-12-29T18:54:17.000' AS DateTime), CAST(69000 AS Decimal(18, 0)), 345, 66, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (327, 4, CAST(N'2018-12-18T02:17:38.000' AS DateTime), CAST(N'2018-12-18T09:44:29.000' AS DateTime), CAST(75100 AS Decimal(18, 0)), 446, 146, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (328, 7, CAST(N'2018-12-18T00:51:54.000' AS DateTime), CAST(N'2018-12-18T16:16:47.000' AS DateTime), CAST(166400 AS Decimal(18, 0)), 924, 147, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (329, 6, CAST(N'2018-12-16T10:10:37.000' AS DateTime), CAST(N'2018-12-16T19:57:52.000' AS DateTime), CAST(117400 AS Decimal(18, 0)), 587, 110, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (330, 9, CAST(N'2018-12-27T14:35:51.000' AS DateTime), CAST(N'2018-12-27T19:07:53.000' AS DateTime), CAST(54400 AS Decimal(18, 0)), 272, 73, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (331, 8, CAST(N'2018-12-22T02:47:37.000' AS DateTime), CAST(N'2018-12-22T22:51:25.000' AS DateTime), CAST(228000 AS Decimal(18, 0)), 1203, 94, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (332, 1, CAST(N'2018-12-02T06:12:50.000' AS DateTime), CAST(N'2018-12-02T21:01:27.000' AS DateTime), CAST(175250 AS Decimal(18, 0)), 888, 72, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (333, 5, CAST(N'2018-12-13T11:37:04.000' AS DateTime), CAST(N'2018-12-13T21:11:28.000' AS DateTime), CAST(114800 AS Decimal(18, 0)), 574, 106, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (334, 3, CAST(N'2018-12-08T22:49:50.000' AS DateTime), CAST(N'2018-12-08T23:54:00.000' AS DateTime), CAST(10100 AS Decimal(18, 0)), 64, 148, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (335, 7, CAST(N'2018-12-19T03:14:04.000' AS DateTime), CAST(N'2018-12-19T23:04:01.000' AS DateTime), CAST(226350 AS Decimal(18, 0)), 1189, 149, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (336, 10, CAST(N'2018-12-30T07:39:17.000' AS DateTime), CAST(N'2018-12-30T22:15:03.000' AS DateTime), CAST(175000 AS Decimal(18, 0)), 875, 79, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (337, 9, CAST(N'2018-12-27T01:04:52.000' AS DateTime), CAST(N'2018-12-27T13:56:55.000' AS DateTime), CAST(136450 AS Decimal(18, 0)), 772, 73, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (338, 2, CAST(N'2018-12-06T05:15:38.000' AS DateTime), CAST(N'2018-12-06T23:38:17.000' AS DateTime), CAST(213300 AS Decimal(18, 0)), 1102, 125, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (339, 1, CAST(N'2018-12-15T15:04:37.000' AS DateTime), CAST(N'2018-12-15T15:10:31.000' AS DateTime), CAST(1000 AS Decimal(18, 0)), 5, 150, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (340, 4, CAST(N'2018-12-21T16:46:11.000' AS DateTime), CAST(N'2018-12-21T23:50:16.000' AS DateTime), CAST(82100 AS Decimal(18, 0)), 424, 139, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (341, 8, CAST(N'2018-12-28T11:27:52.000' AS DateTime), CAST(N'2018-12-28T11:34:42.000' AS DateTime), CAST(1200 AS Decimal(18, 0)), 6, 151, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (342, 6, CAST(N'2018-12-20T14:11:07.000' AS DateTime), CAST(N'2018-12-20T17:13:05.000' AS DateTime), CAST(36200 AS Decimal(18, 0)), 181, 152, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (343, 10, CAST(N'2018-12-16T07:27:30.000' AS DateTime), CAST(N'2018-12-16T10:44:37.000' AS DateTime), CAST(39400 AS Decimal(18, 0)), 197, 153, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (344, 3, CAST(N'2018-12-15T02:57:30.000' AS DateTime), CAST(N'2018-12-15T18:56:37.000' AS DateTime), CAST(179500 AS Decimal(18, 0)), 959, 141, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (345, 2, CAST(N'2018-12-04T04:32:30.000' AS DateTime), CAST(N'2018-12-04T07:58:17.000' AS DateTime), CAST(33650 AS Decimal(18, 0)), 205, 78, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (346, 5, CAST(N'2018-12-22T14:39:14.000' AS DateTime), CAST(N'2018-12-22T15:45:57.000' AS DateTime), CAST(13200 AS Decimal(18, 0)), 66, 154, 1)
INSERT [dbo].[ChiTietCuocGoi] ([ChiTietCuocGoiID], [SIMID], [ThoiGianBD], [ThoiGianKT], [ThanhTien], [SoPhutSD], [ChiTietHDTCID], [Flag]) VALUES (347, 4, CAST(N'2018-12-01T00:28:14.000' AS DateTime), CAST(N'2018-12-01T07:17:11.000' AS DateTime), CAST(62050 AS Decimal(18, 0)), 408, 63, 1)
SET IDENTITY_INSERT [dbo].[ChiTietCuocGoi] OFF
SET IDENTITY_INSERT [dbo].[ChiTietHDTC] ON 

INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (63, 1237, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 24, CAST(212800 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (64, 759, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 25, CAST(151800 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (65, 229, CAST(N'2018-12-18T00:00:00.000' AS DateTime), 26, CAST(36600 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (66, 1267, CAST(N'2018-12-29T00:00:00.000' AS DateTime), 27, CAST(247700 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (67, 1456, CAST(N'2018-12-25T00:00:00.000' AS DateTime), 28, CAST(261150 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (68, 280, CAST(N'2018-12-21T00:00:00.000' AS DateTime), 29, CAST(38050 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (69, 769, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 30, CAST(124650 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (70, 305, CAST(N'2018-12-20T00:00:00.000' AS DateTime), 31, CAST(61000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (71, 95, CAST(N'2018-12-17T00:00:00.000' AS DateTime), 32, CAST(19000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (72, 1566, CAST(N'2018-12-02T00:00:00.000' AS DateTime), 33, CAST(276200 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (73, 2803, CAST(N'2018-12-27T00:00:00.000' AS DateTime), 31, CAST(528100 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (74, 1077, CAST(N'2018-12-28T00:00:00.000' AS DateTime), 28, CAST(201100 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (75, 745, CAST(N'2018-12-09T00:00:00.000' AS DateTime), 32, CAST(116750 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (76, 1881, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 30, CAST(355100 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (77, 1062, CAST(N'2018-12-24T00:00:00.000' AS DateTime), 25, CAST(212400 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (78, 1178, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 29, CAST(215900 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (79, 2496, CAST(N'2018-12-30T00:00:00.000' AS DateTime), 27, CAST(474850 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (80, 417, CAST(N'2018-12-11T00:00:00.000' AS DateTime), 24, CAST(83400 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (81, 316, CAST(N'2018-12-25T00:00:00.000' AS DateTime), 29, CAST(63200 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (82, 1465, CAST(N'2018-12-17T00:00:00.000' AS DateTime), 26, CAST(273850 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (83, 2760, CAST(N'2018-12-28T00:00:00.000' AS DateTime), 27, CAST(514850 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (84, 422, CAST(N'2018-12-23T00:00:00.000' AS DateTime), 25, CAST(84400 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (85, 850, CAST(N'2018-12-18T00:00:00.000' AS DateTime), 29, CAST(151100 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (86, 1179, CAST(N'2018-12-09T00:00:00.000' AS DateTime), 28, CAST(235800 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (87, 1115, CAST(N'2018-12-20T00:00:00.000' AS DateTime), 32, CAST(215450 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (88, 191, CAST(N'2018-12-08T00:00:00.000' AS DateTime), 30, CAST(38200 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (89, 99, CAST(N'2018-12-19T00:00:00.000' AS DateTime), 31, CAST(19800 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (90, 1305, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 28, CAST(243850 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (91, 725, CAST(N'2018-12-02T00:00:00.000' AS DateTime), 30, CAST(133850 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (92, 47, CAST(N'2018-12-02T00:00:00.000' AS DateTime), 25, CAST(9400 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (93, 263, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 26, CAST(52600 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (94, 2473, CAST(N'2018-12-22T00:00:00.000' AS DateTime), 25, CAST(458950 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (95, 769, CAST(N'2018-12-22T00:00:00.000' AS DateTime), 29, CAST(120650 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (96, 150, CAST(N'2018-12-21T00:00:00.000' AS DateTime), 26, CAST(30000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (97, 784, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 24, CAST(137050 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (98, 599, CAST(N'2018-12-16T00:00:00.000' AS DateTime), 25, CAST(116450 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (99, 1362, CAST(N'2018-12-16T00:00:00.000' AS DateTime), 33, CAST(252300 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (100, 53, CAST(N'2018-12-18T00:00:00.000' AS DateTime), 28, CAST(10600 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (101, 60, CAST(N'2018-12-06T00:00:00.000' AS DateTime), 33, CAST(12000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (102, 1147, CAST(N'2018-12-25T00:00:00.000' AS DateTime), 31, CAST(228850 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (103, 328, CAST(N'2018-12-16T00:00:00.000' AS DateTime), 32, CAST(54850 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (104, 1010, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 33, CAST(169850 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (105, 464, CAST(N'2018-12-25T00:00:00.000' AS DateTime), 26, CAST(75250 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (106, 2984, CAST(N'2018-12-13T00:00:00.000' AS DateTime), 30, CAST(574900 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (107, 18, CAST(N'2018-12-19T00:00:00.000' AS DateTime), 29, CAST(3600 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (108, 1149, CAST(N'2018-12-10T00:00:00.000' AS DateTime), 24, CAST(225500 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (109, 707, CAST(N'2018-12-21T00:00:00.000' AS DateTime), 32, CAST(121950 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (110, 1837, CAST(N'2018-12-16T00:00:00.000' AS DateTime), 26, CAST(349600 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (111, 105, CAST(N'2018-12-05T00:00:00.000' AS DateTime), 28, CAST(700 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (112, 402, CAST(N'2018-12-28T00:00:00.000' AS DateTime), 32, CAST(80400 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (113, 465, CAST(N'2018-12-09T00:00:00.000' AS DateTime), 27, CAST(93000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (114, 792, CAST(N'2018-12-23T00:00:00.000' AS DateTime), 31, CAST(158400 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (115, 384, CAST(N'2018-12-05T00:00:00.000' AS DateTime), 24, CAST(76800 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (116, 133, CAST(N'2018-12-29T00:00:00.000' AS DateTime), 25, CAST(26600 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (117, 603, CAST(N'2018-12-05T00:00:00.000' AS DateTime), 26, CAST(119450 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (118, 100, CAST(N'2018-12-19T00:00:00.000' AS DateTime), 28, CAST(8200 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (119, 728, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 29, CAST(145600 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (120, 98, CAST(N'2018-12-29T00:00:00.000' AS DateTime), 24, CAST(19600 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (121, 440, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 32, CAST(70200 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (122, 158, CAST(N'2018-12-13T00:00:00.000' AS DateTime), 33, CAST(29400 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (123, 287, CAST(N'2018-12-26T00:00:00.000' AS DateTime), 31, CAST(57400 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (124, 152, CAST(N'2018-12-26T00:00:00.000' AS DateTime), 28, CAST(30400 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (125, 1943, CAST(N'2018-12-06T00:00:00.000' AS DateTime), 29, CAST(380700 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (126, 147, CAST(N'2018-12-10T00:00:00.000' AS DateTime), 26, CAST(29400 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (127, 231, CAST(N'2018-12-03T00:00:00.000' AS DateTime), 33, CAST(39300 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (128, 698, CAST(N'2018-12-24T00:00:00.000' AS DateTime), 30, CAST(122950 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (129, 333, CAST(N'2018-12-17T00:00:00.000' AS DateTime), 33, CAST(66600 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (130, 964, CAST(N'2018-12-09T00:00:00.000' AS DateTime), 24, CAST(181450 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (131, 328, CAST(N'2018-12-30T00:00:00.000' AS DateTime), 28, CAST(65600 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (132, 242, CAST(N'2018-12-13T00:00:00.000' AS DateTime), 26, CAST(48400 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (133, 366, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 26, CAST(62700 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (134, 70, CAST(N'2018-12-06T00:00:00.000' AS DateTime), 25, CAST(14000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (135, 117, CAST(N'2018-12-08T00:00:00.000' AS DateTime), 32, CAST(21800 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (136, 357, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 27, CAST(71400 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (137, 43, CAST(N'2018-12-26T00:00:00.000' AS DateTime), 25, CAST(8600 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (138, 49, CAST(N'2018-12-05T00:00:00.000' AS DateTime), 29, CAST(-1450 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (139, 1619, CAST(N'2018-12-21T00:00:00.000' AS DateTime), 24, CAST(309350 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (140, 295, CAST(N'2018-12-26T00:00:00.000' AS DateTime), 27, CAST(52550 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (141, 1249, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 28, CAST(237500 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (142, 739, CAST(N'2018-12-10T00:00:00.000' AS DateTime), 30, CAST(147800 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (143, 62, CAST(N'2018-12-09T00:00:00.000' AS DateTime), 31, CAST(5100 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (144, 322, CAST(N'2018-12-19T00:00:00.000' AS DateTime), 24, CAST(63250 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (145, 1091, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 30, CAST(199750 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (146, 446, CAST(N'2018-12-18T00:00:00.000' AS DateTime), 24, CAST(75100 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (147, 924, CAST(N'2018-12-18T00:00:00.000' AS DateTime), 32, CAST(166400 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (148, 64, CAST(N'2018-12-08T00:00:00.000' AS DateTime), 28, CAST(10100 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (149, 1189, CAST(N'2018-12-19T00:00:00.000' AS DateTime), 32, CAST(226350 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (150, 5, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 33, CAST(1000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (151, 6, CAST(N'2018-12-28T00:00:00.000' AS DateTime), 25, CAST(1200 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (152, 181, CAST(N'2018-12-20T00:00:00.000' AS DateTime), 26, CAST(36200 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (153, 197, CAST(N'2018-12-16T00:00:00.000' AS DateTime), 27, CAST(39400 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDTC] ([ChiTietHDTCID], [SoPhutSD], [NgayHD], [HoaDonTinhCuocThangID], [ThanhTien], [Flag]) VALUES (154, 66, CAST(N'2018-12-22T00:00:00.000' AS DateTime), 30, CAST(13200 AS Decimal(18, 0)), 0)
SET IDENTITY_INSERT [dbo].[ChiTietHDTC] OFF
SET IDENTITY_INSERT [dbo].[FileLogSIM] ON 

INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (1, 6, CAST(N'2018-12-01T03:33:44.000' AS DateTime), CAST(N'2018-12-01T09:39:45.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (2, 8, CAST(N'2018-12-06T13:29:55.000' AS DateTime), CAST(N'2018-12-06T14:40:23.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (3, 7, CAST(N'2018-12-08T06:27:04.000' AS DateTime), CAST(N'2018-12-08T08:25:01.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (4, 10, CAST(N'2018-12-01T11:12:09.000' AS DateTime), CAST(N'2018-12-01T17:09:39.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (5, 8, CAST(N'2018-12-26T12:55:28.000' AS DateTime), CAST(N'2018-12-26T13:39:01.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (6, 2, CAST(N'2018-12-05T03:10:32.000' AS DateTime), CAST(N'2018-12-05T04:00:19.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (7, 6, CAST(N'2018-12-25T02:54:27.000' AS DateTime), CAST(N'2018-12-25T04:03:00.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (8, 4, CAST(N'2018-12-21T03:37:46.000' AS DateTime), CAST(N'2018-12-21T23:33:22.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (9, 8, CAST(N'2018-12-22T00:12:45.000' AS DateTime), CAST(N'2018-12-22T06:03:53.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (10, 1, CAST(N'2018-12-03T04:37:59.000' AS DateTime), CAST(N'2018-12-03T05:13:55.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (11, 10, CAST(N'2018-12-26T04:50:54.000' AS DateTime), CAST(N'2018-12-26T09:46:07.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (12, 3, CAST(N'2018-12-15T13:48:05.000' AS DateTime), CAST(N'2018-12-15T18:38:43.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (13, 1, CAST(N'2018-12-03T08:26:45.000' AS DateTime), CAST(N'2018-12-03T10:50:00.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (14, 5, CAST(N'2018-12-10T09:00:23.000' AS DateTime), CAST(N'2018-12-10T21:20:04.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (15, 9, CAST(N'2018-12-09T04:29:23.000' AS DateTime), CAST(N'2018-12-09T05:32:04.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (16, 7, CAST(N'2018-12-20T04:28:58.000' AS DateTime), CAST(N'2018-12-20T12:53:34.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (17, 1, CAST(N'2018-12-01T09:52:11.000' AS DateTime), CAST(N'2018-12-01T11:04:36.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (18, 4, CAST(N'2018-12-19T18:00:17.000' AS DateTime), CAST(N'2018-12-19T23:23:06.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (19, 3, CAST(N'2018-12-07T01:29:11.000' AS DateTime), CAST(N'2018-12-07T14:57:09.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (20, 6, CAST(N'2018-12-17T05:54:25.000' AS DateTime), CAST(N'2018-12-17T13:07:11.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (21, 5, CAST(N'2018-12-04T00:54:11.000' AS DateTime), CAST(N'2018-12-04T19:05:36.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (22, 8, CAST(N'2018-12-24T11:35:19.000' AS DateTime), CAST(N'2018-12-24T22:50:08.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (23, 2, CAST(N'2018-12-04T02:56:38.000' AS DateTime), CAST(N'2018-12-04T15:11:45.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (24, 10, CAST(N'2018-12-29T13:08:24.000' AS DateTime), CAST(N'2018-12-29T18:54:17.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (25, 4, CAST(N'2018-12-18T02:17:38.000' AS DateTime), CAST(N'2018-12-18T09:44:29.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (26, 7, CAST(N'2018-12-18T00:51:54.000' AS DateTime), CAST(N'2018-12-18T16:16:47.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (27, 6, CAST(N'2018-12-16T10:10:37.000' AS DateTime), CAST(N'2018-12-16T19:57:52.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (28, 9, CAST(N'2018-12-27T14:35:51.000' AS DateTime), CAST(N'2018-12-27T19:07:53.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (29, 8, CAST(N'2018-12-22T02:47:37.000' AS DateTime), CAST(N'2018-12-22T22:51:25.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (30, 1, CAST(N'2018-12-02T06:12:50.000' AS DateTime), CAST(N'2018-12-02T21:01:27.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (31, 5, CAST(N'2018-12-13T11:37:04.000' AS DateTime), CAST(N'2018-12-13T21:11:28.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (32, 3, CAST(N'2018-12-08T22:49:50.000' AS DateTime), CAST(N'2018-12-08T23:54:00.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (33, 7, CAST(N'2018-12-19T03:14:04.000' AS DateTime), CAST(N'2018-12-19T23:04:01.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (34, 10, CAST(N'2018-12-30T07:39:17.000' AS DateTime), CAST(N'2018-12-30T22:15:03.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (35, 9, CAST(N'2018-12-27T01:04:52.000' AS DateTime), CAST(N'2018-12-27T13:56:55.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (36, 2, CAST(N'2018-12-06T05:15:38.000' AS DateTime), CAST(N'2018-12-06T23:38:17.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (37, 1, CAST(N'2018-12-15T15:04:37.000' AS DateTime), CAST(N'2018-12-15T15:10:31.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (38, 4, CAST(N'2018-12-21T16:46:11.000' AS DateTime), CAST(N'2018-12-21T23:50:16.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (39, 8, CAST(N'2018-12-28T11:27:52.000' AS DateTime), CAST(N'2018-12-28T11:34:42.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (40, 6, CAST(N'2018-12-20T14:11:07.000' AS DateTime), CAST(N'2018-12-20T17:13:05.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (41, 10, CAST(N'2018-12-16T07:27:30.000' AS DateTime), CAST(N'2018-12-16T10:44:37.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (42, 3, CAST(N'2018-12-15T02:57:30.000' AS DateTime), CAST(N'2018-12-15T18:56:37.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (43, 2, CAST(N'2018-12-04T04:32:30.000' AS DateTime), CAST(N'2018-12-04T07:58:17.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (44, 5, CAST(N'2018-12-22T14:39:14.000' AS DateTime), CAST(N'2018-12-22T15:45:57.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (45, 4, CAST(N'2018-12-01T00:28:14.000' AS DateTime), CAST(N'2018-12-01T07:17:11.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (46, 7, CAST(N'2018-12-21T00:34:43.000' AS DateTime), CAST(N'2018-12-21T09:02:52.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (47, 1, CAST(N'2018-12-01T05:59:56.000' AS DateTime), CAST(N'2018-12-01T08:12:53.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (48, 9, CAST(N'2018-12-24T06:40:28.000' AS DateTime), CAST(N'2018-12-24T20:14:36.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (49, 3, CAST(N'2018-12-30T09:03:26.000' AS DateTime), CAST(N'2018-12-30T11:13:41.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (50, 6, CAST(N'2018-12-18T01:01:09.000' AS DateTime), CAST(N'2018-12-18T10:15:28.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (51, 5, CAST(N'2018-12-25T05:15:44.000' AS DateTime), CAST(N'2018-12-25T14:55:03.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (52, 8, CAST(N'2018-12-24T00:44:44.000' AS DateTime), CAST(N'2018-12-24T22:07:02.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (53, 7, CAST(N'2018-12-19T05:50:55.000' AS DateTime), CAST(N'2018-12-19T15:52:33.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (54, 10, CAST(N'2018-12-30T09:15:09.000' AS DateTime), CAST(N'2018-12-30T14:02:34.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (55, 4, CAST(N'2018-12-10T13:40:22.000' AS DateTime), CAST(N'2018-12-10T14:12:36.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (56, 2, CAST(N'2018-12-06T01:52:09.000' AS DateTime), CAST(N'2018-12-06T16:56:08.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (57, 6, CAST(N'2018-12-16T06:17:22.000' AS DateTime), CAST(N'2018-12-16T16:06:09.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (58, 9, CAST(N'2018-12-27T10:41:36.000' AS DateTime), CAST(N'2018-12-27T16:16:11.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (59, 8, CAST(N'2018-12-09T07:50:40.000' AS DateTime), CAST(N'2018-12-09T15:25:07.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (60, 1, CAST(N'2018-12-03T02:18:35.000' AS DateTime), CAST(N'2018-12-03T18:09:44.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (61, 10, CAST(N'2018-12-28T14:31:22.000' AS DateTime), CAST(N'2018-12-28T20:52:15.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (62, 3, CAST(N'2018-12-09T18:56:35.000' AS DateTime), CAST(N'2018-12-09T20:03:17.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (63, 7, CAST(N'2018-12-16T04:35:28.000' AS DateTime), CAST(N'2018-12-16T04:55:16.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (64, 5, CAST(N'2018-12-15T10:33:35.000' AS DateTime), CAST(N'2018-12-15T22:56:50.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (65, 9, CAST(N'2018-12-25T14:57:48.000' AS DateTime), CAST(N'2018-12-25T22:06:52.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (66, 2, CAST(N'2018-12-06T19:22:02.000' AS DateTime), CAST(N'2018-12-06T21:16:53.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (67, 1, CAST(N'2018-12-23T09:26:36.000' AS DateTime), CAST(N'2018-12-23T16:55:11.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (68, 4, CAST(N'2018-12-12T11:59:01.000' AS DateTime), CAST(N'2018-12-12T23:10:27.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (69, 3, CAST(N'2018-12-18T06:38:55.000' AS DateTime), CAST(N'2018-12-18T19:37:32.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (70, 6, CAST(N'2018-12-17T00:07:55.000' AS DateTime), CAST(N'2018-12-17T02:49:32.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (71, 10, CAST(N'2018-12-04T00:03:18.000' AS DateTime), CAST(N'2018-12-04T03:04:22.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (72, 8, CAST(N'2018-12-13T10:52:18.000' AS DateTime), CAST(N'2018-12-13T20:36:37.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (73, 2, CAST(N'2018-12-25T07:14:33.000' AS DateTime), CAST(N'2018-12-25T19:30:22.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (74, 5, CAST(N'2018-12-11T10:18:13.000' AS DateTime), CAST(N'2018-12-11T21:55:52.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (75, 4, CAST(N'2018-12-11T10:18:13.000' AS DateTime), CAST(N'2018-12-11T21:55:52.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (76, 4, CAST(N'2018-12-07T12:01:32.000' AS DateTime), CAST(N'2018-12-07T16:25:14.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (77, 7, CAST(N'2018-12-27T03:15:40.000' AS DateTime), CAST(N'2018-12-27T07:15:37.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (78, 6, CAST(N'2018-12-16T08:52:14.000' AS DateTime), CAST(N'2018-12-16T08:53:41.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (79, 9, CAST(N'2018-12-14T09:34:06.000' AS DateTime), CAST(N'2018-12-14T14:18:55.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (80, 3, CAST(N'2018-12-20T10:27:55.000' AS DateTime), CAST(N'2018-12-20T20:12:02.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (81, 1, CAST(N'2018-12-03T04:54:27.000' AS DateTime), CAST(N'2018-12-03T09:57:15.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (82, 5, CAST(N'2018-12-14T08:19:41.000' AS DateTime), CAST(N'2018-12-14T09:07:17.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (83, 8, CAST(N'2018-12-25T13:54:09.000' AS DateTime), CAST(N'2018-12-25T22:25:56.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (84, 7, CAST(N'2018-12-19T00:56:40.000' AS DateTime), CAST(N'2018-12-19T11:00:50.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (85, 10, CAST(N'2018-12-30T05:21:54.000' AS DateTime), CAST(N'2018-12-30T11:10:52.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (86, 9, CAST(N'2018-12-16T10:48:46.000' AS DateTime), CAST(N'2018-12-16T20:37:40.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (87, 2, CAST(N'2018-12-15T08:40:24.000' AS DateTime), CAST(N'2018-12-15T13:37:07.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (88, 6, CAST(N'2018-12-17T01:23:07.000' AS DateTime), CAST(N'2018-12-17T13:14:27.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (89, 4, CAST(N'2018-12-12T13:35:53.000' AS DateTime), CAST(N'2018-12-12T15:57:58.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (90, 8, CAST(N'2018-12-21T02:23:38.000' AS DateTime), CAST(N'2018-12-21T18:24:02.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (91, 1, CAST(N'2018-12-09T15:29:05.000' AS DateTime), CAST(N'2018-12-09T23:54:00.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (92, 10, CAST(N'2018-12-29T09:37:06.000' AS DateTime), CAST(N'2018-12-29T17:01:33.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (93, 3, CAST(N'2018-12-09T14:02:20.000' AS DateTime), CAST(N'2018-12-09T16:11:34.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (94, 2, CAST(N'2018-12-04T01:14:06.000' AS DateTime), CAST(N'2018-12-04T19:54:06.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (95, 5, CAST(N'2018-12-15T06:39:20.000' AS DateTime), CAST(N'2018-12-15T19:04:08.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (96, 9, CAST(N'2018-12-26T10:04:33.000' AS DateTime), CAST(N'2018-12-26T18:14:09.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (97, 7, CAST(N'2018-12-26T10:04:33.000' AS DateTime), CAST(N'2018-12-26T18:14:09.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (98, 7, CAST(N'2018-12-24T03:05:01.000' AS DateTime), CAST(N'2018-12-24T08:00:05.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (99, 1, CAST(N'2018-12-02T02:41:33.000' AS DateTime), CAST(N'2018-12-02T20:08:42.000' AS DateTime))
GO
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (100, 5, CAST(N'2018-12-13T07:06:46.000' AS DateTime), CAST(N'2018-12-13T20:18:44.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[FileLogSIM] OFF
SET IDENTITY_INSERT [dbo].[GiaCuoc] ON 

INSERT [dbo].[GiaCuoc] ([GiaCuocID], [GioBD], [GioKT], [GiaTien], [Flag]) VALUES (1, N'7h', N'23h', 200, 1)
INSERT [dbo].[GiaCuoc] ([GiaCuocID], [GioBD], [GioKT], [GiaTien], [Flag]) VALUES (2, N'23h', N'7h', 150, 1)
SET IDENTITY_INSERT [dbo].[GiaCuoc] OFF
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
INSERT [dbo].[HoaDonDangKy] ([HoaDonDangKyID], [KhachHangID], [NgayDK], [ChiPhiDK], [TinhTrangThanhToan], [Flag]) VALUES (10, 9, CAST(N'2018-11-30T00:00:00.000' AS DateTime), 50000, 1, 1)
SET IDENTITY_INSERT [dbo].[HoaDonDangKy] OFF
SET IDENTITY_INSERT [dbo].[HoaDonTinhCuocThang] ON 

INSERT [dbo].[HoaDonTinhCuocThang] ([HoaDonTinhCuocThangID], [SIMID], [TienThueBao], [TienCuocSD], [Flag], [ThangHD]) VALUES (24, 4, CAST(50000 AS Decimal(18, 0)), CAST(1384300 AS Decimal(18, 0)), 0, CAST(N'2018-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonTinhCuocThang] ([HoaDonTinhCuocThangID], [SIMID], [TienThueBao], [TienCuocSD], [Flag], [ThangHD]) VALUES (25, 8, CAST(50000 AS Decimal(18, 0)), CAST(1083800 AS Decimal(18, 0)), 0, CAST(N'2018-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonTinhCuocThang] ([HoaDonTinhCuocThangID], [SIMID], [TienThueBao], [TienCuocSD], [Flag], [ThangHD]) VALUES (26, 6, CAST(50000 AS Decimal(18, 0)), CAST(1114050 AS Decimal(18, 0)), 0, CAST(N'2018-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonTinhCuocThang] ([HoaDonTinhCuocThangID], [SIMID], [TienThueBao], [TienCuocSD], [Flag], [ThangHD]) VALUES (27, 10, CAST(50000 AS Decimal(18, 0)), CAST(1493750 AS Decimal(18, 0)), 0, CAST(N'2018-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonTinhCuocThang] ([HoaDonTinhCuocThangID], [SIMID], [TienThueBao], [TienCuocSD], [Flag], [ThangHD]) VALUES (28, 3, CAST(50000 AS Decimal(18, 0)), CAST(1305000 AS Decimal(18, 0)), 0, CAST(N'2018-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonTinhCuocThang] ([HoaDonTinhCuocThangID], [SIMID], [TienThueBao], [TienCuocSD], [Flag], [ThangHD]) VALUES (29, 2, CAST(50000 AS Decimal(18, 0)), CAST(1117350 AS Decimal(18, 0)), 0, CAST(N'2018-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonTinhCuocThang] ([HoaDonTinhCuocThangID], [SIMID], [TienThueBao], [TienCuocSD], [Flag], [ThangHD]) VALUES (30, 5, CAST(50000 AS Decimal(18, 0)), CAST(1710400 AS Decimal(18, 0)), 0, CAST(N'2018-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonTinhCuocThang] ([HoaDonTinhCuocThangID], [SIMID], [TienThueBao], [TienCuocSD], [Flag], [ThangHD]) VALUES (31, 9, CAST(50000 AS Decimal(18, 0)), CAST(1058650 AS Decimal(18, 0)), 0, CAST(N'2018-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonTinhCuocThang] ([HoaDonTinhCuocThangID], [SIMID], [TienThueBao], [TienCuocSD], [Flag], [ThangHD]) VALUES (32, 7, CAST(50000 AS Decimal(18, 0)), CAST(1093150 AS Decimal(18, 0)), 0, CAST(N'2018-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonTinhCuocThang] ([HoaDonTinhCuocThangID], [SIMID], [TienThueBao], [TienCuocSD], [Flag], [ThangHD]) VALUES (33, 1, CAST(50000 AS Decimal(18, 0)), CAST(846650 AS Decimal(18, 0)), 0, CAST(N'2018-12-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[HoaDonTinhCuocThang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (1, N'NGUYỄN NGỌC HUỲNH NHƯ', N'25454976', N'Bán Hàng', N'Nhân viên', N'huynhnhu@gmail.com                                                                                                                                                                                      ', N'30/32 - NGUYỄN BỈNH KHIÊM - P.1 - GÒ VẤP - TP HCM', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (2, N'ĐÀO VĂN PHÚC', N'25446098', N'Nội Trợ', N'Nhân viên', N'vanphuc@gmail.com                                                                                                                                                                                       ', N'58/647, NGUYỄN OANH, P.17, GÒ VẤP', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (3, N'CTY TNHH TM DV VẬN TẢI DƯƠNG THÀNH', N'25433339', N'Nhân viên', N'Kinh Doanh', N'duongthanh@gmail.com                                                                                                                                                                                    ', N'46/1, HÙNG VƯƠNG, P.1, Q.10', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (4, N'PHẠM THỊ VÂN KHÁNH', N'25488912', N'Giảng Viên', N'Nhân viên', N'vankhanh@gmail.com                                                                                                                                                                                      ', N'326, NGUYỄN CHÍ THANH, P.5, Q.10', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (5, N'TRỊNH THỊ HỒNG', N'25494671', N'Sinh Viên', N'Nhân viên', N'thihong@gmail.com                                                                                                                                                                                       ', N'161/3F, HÙNG VƯƠNG, P.6, Q.06', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (6, N'NGUYỄN THANH THẠCH', N'25450784', N'Văn Phòng', N'Nhân viên', N'thanhthach@gmail.com                                                                                                                                                                                    ', N'20, KHU 1, TÂN SƠN NHÌ, TÂN SƠN NHÌ, TÂN PHÚ', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (7, N'VÕ THANH BÌNH', N'25458659', N'Bán Hàng', N'Nhân viên', N'thanhbinh@gmail.com                                                                                                                                                                                     ', N'232/6, VÕ THỊ SÁU, P.7, Q.03', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (8, N'LÊ THỊ THU CÚC', N'25423812', N'Sinh Viên', N'Nhân viên', N'thucuc@gmail.com                                                                                                                                                                                        ', N'338A,NƠ TRANG LONG, P.13, BÌNH THẠNH', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (9, N'NGUYỄN TRUNG', N'777777777', N'Sinh Vien', N'Sinh Vien', N'trungnguyen@gmail.com                                                                                                                                                   trungnguyen.19972707@gmail.com  ', N'12 Phố Cổ', 1)
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
INSERT [dbo].[SIM] ([SIMID], [TenSim], [SoSim], [HoaDonDangKyID], [Flag]) VALUES (10, N'MobiphoneSuper', N'099887755', 10, 1)
SET IDENTITY_INSERT [dbo].[SIM] OFF
SET IDENTITY_INSERT [dbo].[TienThueBao] ON 

INSERT [dbo].[TienThueBao] ([TienThueBaoID], [GiaTienThueBao]) VALUES (1, CAST(50000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[TienThueBao] OFF
ALTER TABLE [dbo].[ChiTietCuocGoi]  WITH CHECK ADD  CONSTRAINT [FK__ChitietHD__SIMID__440B1D61] FOREIGN KEY([SIMID])
REFERENCES [dbo].[SIM] ([SIMID])
GO
ALTER TABLE [dbo].[ChiTietCuocGoi] CHECK CONSTRAINT [FK__ChitietHD__SIMID__440B1D61]
GO
ALTER TABLE [dbo].[ChiTietCuocGoi]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietCuocGoi_ChiTietHDTC] FOREIGN KEY([ChiTietHDTCID])
REFERENCES [dbo].[ChiTietHDTC] ([ChiTietHDTCID])
GO
ALTER TABLE [dbo].[ChiTietCuocGoi] CHECK CONSTRAINT [FK_ChiTietCuocGoi_ChiTietHDTC]
GO
ALTER TABLE [dbo].[ChiTietHDTC]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHDTC_HoaDonTinhCuocThang] FOREIGN KEY([HoaDonTinhCuocThangID])
REFERENCES [dbo].[HoaDonTinhCuocThang] ([HoaDonTinhCuocThangID])
GO
ALTER TABLE [dbo].[ChiTietHDTC] CHECK CONSTRAINT [FK_ChiTietHDTC_HoaDonTinhCuocThang]
GO
ALTER TABLE [dbo].[HoaDonDangKy]  WITH CHECK ADD  CONSTRAINT [FK__HoaDonDan__Khach__4316F928] FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[KhachHang] ([KhachHangID])
GO
ALTER TABLE [dbo].[HoaDonDangKy] CHECK CONSTRAINT [FK__HoaDonDan__Khach__4316F928]
GO
ALTER TABLE [dbo].[HoaDonTinhCuocThang]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonTinhCuocThang_SIM] FOREIGN KEY([SIMID])
REFERENCES [dbo].[SIM] ([SIMID])
GO
ALTER TABLE [dbo].[HoaDonTinhCuocThang] CHECK CONSTRAINT [FK_HoaDonTinhCuocThang_SIM]
GO
ALTER TABLE [dbo].[SIM]  WITH CHECK ADD  CONSTRAINT [FK_SIM_HoaDonDangKy] FOREIGN KEY([HoaDonDangKyID])
REFERENCES [dbo].[HoaDonDangKy] ([HoaDonDangKyID])
GO
ALTER TABLE [dbo].[SIM] CHECK CONSTRAINT [FK_SIM_HoaDonDangKy]
GO

select * from ChiTietCuocGoi
select * from ChiTietHDTC
select * from HoaDonTinhCuocThang
select * from SIM
select * from KhachHang
select * from HoaDonDangKy