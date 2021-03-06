--Drop database [QLCuocDT]
Create database [QLCuocDT]
go
USE [QLCuocDT]
GO
/****** Object:  Table [dbo].[ChitietHDTC]    Script Date: 30/11/2018 2:50:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietHDTC](
	[ChitietHDTCID] [int] IDENTITY(1,1) NOT NULL,
	[SIMID] [int] NULL,
	[ThoiGianBD] [datetime] NULL,
	[ThoiGianKT] [datetime] NULL,
	[SoPhutSD] [int] NOT NULL,
	[HoaDonTinhCuocID] [int] NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK__ChitietH__D00DBDA83585E4C8] PRIMARY KEY CLUSTERED 
(
	[ChitietHDTCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileLogSIM]    Script Date: 30/11/2018 2:50:40 PM ******/
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
/****** Object:  Table [dbo].[GiaCuoc]    Script Date: 30/11/2018 2:50:40 PM ******/
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
/****** Object:  Table [dbo].[HoaDonDangKy]    Script Date: 30/11/2018 2:50:40 PM ******/
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
/****** Object:  Table [dbo].[HoaDonTinhCuoc]    Script Date: 30/11/2018 2:50:40 PM ******/
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
	[ThanhTien] [decimal](18, 0) NOT NULL,
	[TongTien] [decimal](18, 0) NOT NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK__HoaDonTi__DBAD01B3D99C7F97] PRIMARY KEY CLUSTERED 
(
	[HoaDonTinhCuocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 30/11/2018 2:50:40 PM ******/
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
/****** Object:  Table [dbo].[SIM]    Script Date: 30/11/2018 2:50:40 PM ******/
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

INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1030, 7, CAST(N'2018-12-22T13:35:38.000' AS DateTime), CAST(N'2018-12-22T19:48:27.000' AS DateTime), 372, 567, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1031, 5, CAST(N'2018-12-14T09:58:28.000' AS DateTime), CAST(N'2018-12-14T21:52:37.000' AS DateTime), 714, 568, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1032, 5, CAST(N'2018-12-14T11:34:20.000' AS DateTime), CAST(N'2018-12-14T13:39:08.000' AS DateTime), 124, 568, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1033, 5, CAST(N'2018-12-14T01:33:56.000' AS DateTime), CAST(N'2018-12-14T17:07:10.000' AS DateTime), 933, 568, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1034, 8, CAST(N'2018-12-25T13:23:42.000' AS DateTime), CAST(N'2018-12-25T20:02:38.000' AS DateTime), 398, 569, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1035, 6, CAST(N'2018-12-20T01:35:28.000' AS DateTime), CAST(N'2018-12-20T23:45:10.000' AS DateTime), 1329, 570, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1036, 6, CAST(N'2018-12-20T21:04:10.000' AS DateTime), CAST(N'2018-12-20T22:52:26.000' AS DateTime), 108, 570, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1037, 1, CAST(N'2018-12-01T05:00:42.000' AS DateTime), CAST(N'2018-12-01T23:55:12.000' AS DateTime), 1134, 571, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1038, 1, CAST(N'2018-12-01T07:36:33.000' AS DateTime), CAST(N'2018-12-01T14:43:43.000' AS DateTime), 427, 571, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1039, 1, CAST(N'2018-12-01T03:42:18.000' AS DateTime), CAST(N'2018-12-01T11:51:01.000' AS DateTime), 488, 571, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1040, 8, CAST(N'2018-12-27T01:28:54.000' AS DateTime), CAST(N'2018-12-27T02:04:58.000' AS DateTime), 36, 572, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1041, 8, CAST(N'2018-12-27T01:06:40.000' AS DateTime), CAST(N'2018-12-27T14:18:07.000' AS DateTime), 791, 572, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1042, 8, CAST(N'2018-12-27T13:19:13.000' AS DateTime), CAST(N'2018-12-27T22:47:01.000' AS DateTime), 567, 572, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1043, 8, CAST(N'2018-12-27T08:25:58.000' AS DateTime), CAST(N'2018-12-27T18:55:18.000' AS DateTime), 629, 572, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1044, 8, CAST(N'2018-12-27T10:01:49.000' AS DateTime), CAST(N'2018-12-27T10:43:49.000' AS DateTime), 42, 572, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1045, 2, CAST(N'2018-12-06T15:13:21.000' AS DateTime), CAST(N'2018-12-06T23:02:24.000' AS DateTime), 469, 573, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1046, 2, CAST(N'2018-12-06T07:43:03.000' AS DateTime), CAST(N'2018-12-06T09:12:21.000' AS DateTime), 89, 573, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1047, 2, CAST(N'2018-12-06T05:25:52.000' AS DateTime), CAST(N'2018-12-06T12:49:13.000' AS DateTime), 443, 573, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1048, 6, CAST(N'2018-12-01T13:17:45.000' AS DateTime), CAST(N'2018-12-01T21:52:24.000' AS DateTime), 514, 574, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1049, 4, CAST(N'2018-12-04T20:59:49.000' AS DateTime), CAST(N'2018-12-04T23:21:42.000' AS DateTime), 141, 575, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1050, 7, CAST(N'2018-12-30T06:54:40.000' AS DateTime), CAST(N'2018-12-30T10:56:45.000' AS DateTime), 242, 576, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1051, 7, CAST(N'2018-12-30T10:15:56.000' AS DateTime), CAST(N'2018-12-30T20:49:48.000' AS DateTime), 633, 576, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1052, 2, CAST(N'2018-12-30T01:24:40.000' AS DateTime), CAST(N'2018-12-30T17:08:45.000' AS DateTime), 944, 577, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1053, 9, CAST(N'2018-12-25T03:07:58.000' AS DateTime), CAST(N'2018-12-25T13:38:07.000' AS DateTime), 630, 578, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1054, 3, CAST(N'2018-12-20T15:37:17.000' AS DateTime), CAST(N'2018-12-20T16:40:57.000' AS DateTime), 63, 579, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1055, 2, CAST(N'2018-12-05T02:53:54.000' AS DateTime), CAST(N'2018-12-05T07:39:26.000' AS DateTime), 285, 580, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1056, 2, CAST(N'2018-12-05T10:20:27.000' AS DateTime), CAST(N'2018-12-05T17:33:30.000' AS DateTime), 433, 580, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1057, 5, CAST(N'2018-12-16T06:18:07.000' AS DateTime), CAST(N'2018-12-16T06:49:27.000' AS DateTime), 31, 581, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1058, 5, CAST(N'2018-12-16T02:24:52.000' AS DateTime), CAST(N'2018-12-16T03:57:45.000' AS DateTime), 92, 581, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1059, 5, CAST(N'2018-12-16T04:00:44.000' AS DateTime), CAST(N'2018-12-16T19:45:16.000' AS DateTime), 944, 581, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1060, 8, CAST(N'2018-12-11T19:34:26.000' AS DateTime), CAST(N'2018-12-11T22:57:08.000' AS DateTime), 202, 582, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1061, 7, CAST(N'2018-12-21T05:23:26.000' AS DateTime), CAST(N'2018-12-21T15:29:23.000' AS DateTime), 605, 583, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1062, 1, CAST(N'2018-12-03T03:20:21.000' AS DateTime), CAST(N'2018-12-03T08:53:02.000' AS DateTime), 332, 584, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1063, 1, CAST(N'2018-12-03T00:02:57.000' AS DateTime), CAST(N'2018-12-03T21:49:51.000' AS DateTime), 1306, 584, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1064, 1, CAST(N'2018-12-03T05:19:29.000' AS DateTime), CAST(N'2018-12-03T21:48:16.000' AS DateTime), 988, 584, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1065, 4, CAST(N'2018-12-13T07:45:34.000' AS DateTime), CAST(N'2018-12-13T08:03:04.000' AS DateTime), 17, 585, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1066, 4, CAST(N'2018-12-13T09:21:26.000' AS DateTime), CAST(N'2018-12-13T23:50:35.000' AS DateTime), 869, 585, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1067, 3, CAST(N'2018-12-09T05:42:54.000' AS DateTime), CAST(N'2018-12-09T13:08:11.000' AS DateTime), 445, 586, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1068, 3, CAST(N'2018-12-09T17:39:57.000' AS DateTime), CAST(N'2018-12-09T23:42:24.000' AS DateTime), 362, 586, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1069, 3, CAST(N'2018-12-09T12:45:42.000' AS DateTime), CAST(N'2018-12-09T19:50:42.000' AS DateTime), 425, 586, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1070, 6, CAST(N'2018-12-09T00:11:54.000' AS DateTime), CAST(N'2018-12-09T21:20:10.000' AS DateTime), 1268, 587, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1071, 6, CAST(N'2018-12-09T12:21:19.000' AS DateTime), CAST(N'2018-12-09T21:37:04.000' AS DateTime), 555, 587, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1072, 2, CAST(N'2018-12-28T04:58:03.000' AS DateTime), CAST(N'2018-12-28T14:04:48.000' AS DateTime), 546, 588, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1073, 4, CAST(N'2018-12-12T12:01:47.000' AS DateTime), CAST(N'2018-12-12T14:53:45.000' AS DateTime), 171, 589, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1074, 4, CAST(N'2018-12-12T07:07:32.000' AS DateTime), CAST(N'2018-12-12T10:01:02.000' AS DateTime), 173, 589, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1075, 7, CAST(N'2018-12-28T06:35:31.000' AS DateTime), CAST(N'2018-12-28T19:08:52.000' AS DateTime), 753, 590, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1076, 6, CAST(N'2018-12-18T04:38:47.000' AS DateTime), CAST(N'2018-12-18T16:46:18.000' AS DateTime), 727, 591, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1077, 6, CAST(N'2018-12-18T02:20:23.000' AS DateTime), CAST(N'2018-12-18T04:42:07.000' AS DateTime), 141, 591, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1078, 9, CAST(N'2018-12-28T08:03:00.000' AS DateTime), CAST(N'2018-12-28T16:57:20.000' AS DateTime), 534, 592, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1079, 9, CAST(N'2018-12-28T04:31:42.000' AS DateTime), CAST(N'2018-12-28T15:03:35.000' AS DateTime), 631, 592, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1080, 7, CAST(N'2018-12-18T03:29:09.000' AS DateTime), CAST(N'2018-12-18T17:20:36.000' AS DateTime), 831, 593, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1081, 2, CAST(N'2018-12-04T00:40:00.000' AS DateTime), CAST(N'2018-12-04T18:50:53.000' AS DateTime), 1090, 594, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1082, 5, CAST(N'2018-12-15T05:05:13.000' AS DateTime), CAST(N'2018-12-15T17:00:54.000' AS DateTime), 715, 595, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1083, 5, CAST(N'2018-12-15T07:40:05.000' AS DateTime), CAST(N'2018-12-15T09:48:26.000' AS DateTime), 128, 595, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1084, 5, CAST(N'2018-12-15T02:47:50.000' AS DateTime), CAST(N'2018-12-15T06:56:43.000' AS DateTime), 248, 595, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1085, 3, CAST(N'2018-12-10T16:17:00.000' AS DateTime), CAST(N'2018-12-10T20:43:26.000' AS DateTime), 266, 596, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1086, 7, CAST(N'2018-12-15T10:23:47.000' AS DateTime), CAST(N'2018-12-15T21:26:18.000' AS DateTime), 662, 597, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1087, 1, CAST(N'2018-12-02T01:07:26.000' AS DateTime), CAST(N'2018-12-02T19:04:29.000' AS DateTime), 1077, 598, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1088, 1, CAST(N'2018-12-02T05:05:05.000' AS DateTime), CAST(N'2018-12-02T18:49:40.000' AS DateTime), 824, 598, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1089, 3, CAST(N'2018-12-07T17:44:26.000' AS DateTime), CAST(N'2018-12-07T21:57:02.000' AS DateTime), 252, 599, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1090, 8, CAST(N'2018-12-24T14:46:39.000' AS DateTime), CAST(N'2018-12-24T23:01:37.000' AS DateTime), 494, 600, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1091, 8, CAST(N'2018-12-24T11:28:16.000' AS DateTime), CAST(N'2018-12-24T11:56:26.000' AS DateTime), 28, 600, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1092, 6, CAST(N'2018-12-19T01:58:26.000' AS DateTime), CAST(N'2018-12-19T02:44:08.000' AS DateTime), 45, 601, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1093, 9, CAST(N'2018-12-02T02:18:25.000' AS DateTime), CAST(N'2018-12-02T12:54:16.000' AS DateTime), 635, 602, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1094, 4, CAST(N'2018-12-25T10:45:23.000' AS DateTime), CAST(N'2018-12-25T20:07:00.000' AS DateTime), 561, 603, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1095, 2, CAST(N'2018-12-21T11:28:42.000' AS DateTime), CAST(N'2018-12-21T16:37:22.000' AS DateTime), 308, 604, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1096, 4, CAST(N'2018-12-16T07:40:00.000' AS DateTime), CAST(N'2018-12-16T19:19:44.000' AS DateTime), 699, 605, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1097, 7, CAST(N'2018-12-16T02:10:00.000' AS DateTime), CAST(N'2018-12-16T03:31:43.000' AS DateTime), 81, 606, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1098, 1, CAST(N'2018-12-17T08:11:52.000' AS DateTime), CAST(N'2018-12-17T14:27:49.000' AS DateTime), 375, 607, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1099, 9, CAST(N'2018-12-06T04:05:25.000' AS DateTime), CAST(N'2018-12-06T19:40:18.000' AS DateTime), 934, 608, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1100, 3, CAST(N'2018-12-18T04:11:00.000' AS DateTime), CAST(N'2018-12-18T05:41:38.000' AS DateTime), 90, 609, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1101, 8, CAST(N'2018-12-10T11:23:14.000' AS DateTime), CAST(N'2018-12-10T18:38:03.000' AS DateTime), 434, 610, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1102, 3, CAST(N'2018-12-25T01:57:15.000' AS DateTime), CAST(N'2018-12-25T06:43:09.000' AS DateTime), 285, 611, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1103, 6, CAST(N'2018-12-04T13:35:36.000' AS DateTime), CAST(N'2018-12-04T21:49:18.000' AS DateTime), 493, 612, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1104, 9, CAST(N'2018-12-29T04:09:45.000' AS DateTime), CAST(N'2018-12-29T12:05:37.000' AS DateTime), 475, 613, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1105, 8, CAST(N'2018-12-19T16:39:34.000' AS DateTime), CAST(N'2018-12-19T17:37:30.000' AS DateTime), 57, 614, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1106, 9, CAST(N'2018-12-30T08:58:31.000' AS DateTime), CAST(N'2018-12-30T17:42:42.000' AS DateTime), 524, 615, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1107, 9, CAST(N'2018-12-30T01:29:24.000' AS DateTime), CAST(N'2018-12-30T22:02:27.000' AS DateTime), 1233, 615, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1108, 9, CAST(N'2018-12-30T03:05:16.000' AS DateTime), CAST(N'2018-12-30T14:50:59.000' AS DateTime), 705, 615, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1109, 4, CAST(N'2018-12-11T12:23:44.000' AS DateTime), CAST(N'2018-12-11T17:52:43.000' AS DateTime), 328, 616, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1110, 4, CAST(N'2018-12-11T08:29:29.000' AS DateTime), CAST(N'2018-12-11T13:00:01.000' AS DateTime), 270, 616, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1111, 7, CAST(N'2018-12-13T02:50:52.000' AS DateTime), CAST(N'2018-12-13T12:43:51.000' AS DateTime), 592, 617, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1112, 3, CAST(N'2018-12-08T13:50:11.000' AS DateTime), CAST(N'2018-12-08T18:05:20.000' AS DateTime), 255, 618, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1113, 4, CAST(N'2018-12-14T05:27:11.000' AS DateTime), CAST(N'2018-12-14T20:59:53.000' AS DateTime), 932, 619, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1114, 4, CAST(N'2018-12-14T07:03:03.000' AS DateTime), CAST(N'2018-12-14T12:46:24.000' AS DateTime), 343, 619, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1115, 8, CAST(N'2018-12-22T05:08:07.000' AS DateTime), CAST(N'2018-12-22T08:42:17.000' AS DateTime), 214, 620, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1116, 2, CAST(N'2018-12-22T00:37:07.000' AS DateTime), CAST(N'2018-12-22T16:54:16.000' AS DateTime), 977, 621, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1117, 5, CAST(N'2018-12-18T06:31:40.000' AS DateTime), CAST(N'2018-12-18T09:42:45.000' AS DateTime), 191, 622, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1118, 4, CAST(N'2018-12-08T04:23:56.000' AS DateTime), CAST(N'2018-12-08T19:18:28.000' AS DateTime), 894, 623, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1119, 7, CAST(N'2018-12-29T14:35:04.000' AS DateTime), CAST(N'2018-12-29T18:00:04.000' AS DateTime), 205, 624, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1120, 9, CAST(N'2018-12-11T17:27:35.000' AS DateTime), CAST(N'2018-12-11T20:30:34.000' AS DateTime), 182, 625, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1121, 3, CAST(N'2018-12-11T06:01:44.000' AS DateTime), CAST(N'2018-12-11T13:42:59.000' AS DateTime), 461, 626, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1122, 8, CAST(N'2018-12-15T03:59:33.000' AS DateTime), CAST(N'2018-12-15T19:54:54.000' AS DateTime), 955, 627, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1123, 7, CAST(N'2018-12-11T02:46:37.000' AS DateTime), CAST(N'2018-12-11T20:05:04.000' AS DateTime), 1038, 628, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1124, 3, CAST(N'2018-12-29T12:53:36.000' AS DateTime), CAST(N'2018-12-29T16:26:26.000' AS DateTime), 212, 629, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1125, 6, CAST(N'2018-12-25T08:36:40.000' AS DateTime), CAST(N'2018-12-25T14:12:03.000' AS DateTime), 335, 630, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1126, 2, CAST(N'2018-12-10T21:12:36.000' AS DateTime), CAST(N'2018-12-10T23:18:07.000' AS DateTime), 125, 631, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1127, 5, CAST(N'2018-12-17T00:06:29.000' AS DateTime), CAST(N'2018-12-17T15:53:34.000' AS DateTime), 947, 632, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1128, 7, CAST(N'2018-12-23T16:43:29.000' AS DateTime), CAST(N'2018-12-23T18:47:07.000' AS DateTime), 123, 633, 1)
GO
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1129, 1, CAST(N'2018-12-04T07:23:54.000' AS DateTime), CAST(N'2018-12-04T18:24:28.000' AS DateTime), 660, 634, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1130, 3, CAST(N'2018-12-15T19:31:34.000' AS DateTime), CAST(N'2018-12-15T20:24:09.000' AS DateTime), 52, 635, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1131, 1, CAST(N'2018-12-15T08:15:02.000' AS DateTime), CAST(N'2018-12-15T12:10:36.000' AS DateTime), 235, 636, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1132, 4, CAST(N'2018-12-10T15:43:53.000' AS DateTime), CAST(N'2018-12-10T23:06:30.000' AS DateTime), 442, 637, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1133, 8, CAST(N'2018-12-28T05:38:17.000' AS DateTime), CAST(N'2018-12-28T08:35:47.000' AS DateTime), 177, 638, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1134, 6, CAST(N'2018-12-01T08:59:58.000' AS DateTime), CAST(N'2018-12-01T19:27:24.000' AS DateTime), 627, 639, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1135, 9, CAST(N'2018-12-05T06:24:12.000' AS DateTime), CAST(N'2018-12-05T10:00:52.000' AS DateTime), 216, 640, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1136, 9, CAST(N'2018-12-05T09:45:28.000' AS DateTime), CAST(N'2018-12-05T20:53:54.000' AS DateTime), 668, 640, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1137, 8, CAST(N'2018-12-25T02:22:22.000' AS DateTime), CAST(N'2018-12-25T06:57:43.000' AS DateTime), 275, 641, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1138, 2, CAST(N'2018-12-30T02:37:30.000' AS DateTime), CAST(N'2018-12-30T13:42:13.000' AS DateTime), 664, 642, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1139, 5, CAST(N'2018-12-29T21:06:30.000' AS DateTime), CAST(N'2018-12-29T21:54:13.000' AS DateTime), 47, 643, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1140, 5, CAST(N'2018-12-29T00:27:47.000' AS DateTime), CAST(N'2018-12-29T07:47:15.000' AS DateTime), 439, 643, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1141, 4, CAST(N'2018-12-19T22:20:15.000' AS DateTime), CAST(N'2018-12-19T23:41:31.000' AS DateTime), 81, 644, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1142, 7, CAST(N'2018-12-23T03:48:49.000' AS DateTime), CAST(N'2018-12-23T07:11:19.000' AS DateTime), 202, 645, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1143, 7, CAST(N'2018-12-23T01:30:25.000' AS DateTime), CAST(N'2018-12-23T20:07:08.000' AS DateTime), 1116, 645, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1144, 1, CAST(N'2018-12-23T10:09:05.000' AS DateTime), CAST(N'2018-12-23T17:30:56.000' AS DateTime), 441, 646, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1145, 9, CAST(N'2018-12-24T00:51:53.000' AS DateTime), CAST(N'2018-12-24T16:14:42.000' AS DateTime), 922, 647, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1146, 3, CAST(N'2018-12-09T00:50:02.000' AS DateTime), CAST(N'2018-12-09T09:15:54.000' AS DateTime), 505, 648, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1147, 2, CAST(N'2018-12-04T11:02:48.000' AS DateTime), CAST(N'2018-12-04T12:58:25.000' AS DateTime), 115, 649, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1148, 2, CAST(N'2018-12-04T01:02:23.000' AS DateTime), CAST(N'2018-12-04T16:25:27.000' AS DateTime), 923, 649, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1149, 5, CAST(N'2018-12-14T04:12:26.000' AS DateTime), CAST(N'2018-12-14T14:12:17.000' AS DateTime), 599, 650, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1150, 5, CAST(N'2018-12-14T14:14:07.000' AS DateTime), CAST(N'2018-12-14T22:19:54.000' AS DateTime), 485, 650, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1151, 8, CAST(N'2018-12-13T12:29:38.000' AS DateTime), CAST(N'2018-12-13T13:17:29.000' AS DateTime), 47, 651, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1152, 8, CAST(N'2018-12-13T03:03:43.000' AS DateTime), CAST(N'2018-12-13T16:37:42.000' AS DateTime), 813, 651, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1153, 7, CAST(N'2018-12-21T08:04:01.000' AS DateTime), CAST(N'2018-12-21T14:01:00.000' AS DateTime), 356, 652, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1154, 7, CAST(N'2018-12-21T04:11:46.000' AS DateTime), CAST(N'2018-12-21T10:10:18.000' AS DateTime), 358, 652, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1155, 1, CAST(N'2018-12-02T12:29:15.000' AS DateTime), CAST(N'2018-12-02T13:11:02.000' AS DateTime), 41, 653, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1156, 1, CAST(N'2018-12-02T08:36:59.000' AS DateTime), CAST(N'2018-12-02T10:20:19.000' AS DateTime), 103, 653, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1157, 4, CAST(N'2018-12-06T00:26:25.000' AS DateTime), CAST(N'2018-12-06T20:33:11.000' AS DateTime), 1206, 654, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1158, 3, CAST(N'2018-12-08T04:06:14.000' AS DateTime), CAST(N'2018-12-08T15:05:35.000' AS DateTime), 659, 655, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1159, 3, CAST(N'2018-12-08T00:13:59.000' AS DateTime), CAST(N'2018-12-08T12:13:52.000' AS DateTime), 719, 655, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1160, 3, CAST(N'2018-12-08T02:48:51.000' AS DateTime), CAST(N'2018-12-08T04:01:24.000' AS DateTime), 72, 655, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1161, 6, CAST(N'2018-12-18T09:31:28.000' AS DateTime), CAST(N'2018-12-18T15:15:37.000' AS DateTime), 344, 656, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1162, 6, CAST(N'2018-12-18T01:44:54.000' AS DateTime), CAST(N'2018-12-18T08:25:45.000' AS DateTime), 400, 656, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1163, 6, CAST(N'2018-12-18T05:00:10.000' AS DateTime), CAST(N'2018-12-18T14:22:52.000' AS DateTime), 562, 656, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1164, 4, CAST(N'2018-12-11T05:15:37.000' AS DateTime), CAST(N'2018-12-11T23:36:11.000' AS DateTime), 1100, 657, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1165, 4, CAST(N'2018-12-11T07:13:35.000' AS DateTime), CAST(N'2018-12-11T09:16:27.000' AS DateTime), 122, 657, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1166, 8, CAST(N'2018-12-24T01:08:28.000' AS DateTime), CAST(N'2018-12-24T17:08:10.000' AS DateTime), 959, 658, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1167, 2, CAST(N'2018-12-05T05:33:41.000' AS DateTime), CAST(N'2018-12-05T17:19:11.000' AS DateTime), 705, 659, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1168, 2, CAST(N'2018-12-05T14:15:51.000' AS DateTime), CAST(N'2018-12-05T15:19:17.000' AS DateTime), 63, 659, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1169, 2, CAST(N'2018-12-05T07:09:33.000' AS DateTime), CAST(N'2018-12-05T08:06:43.000' AS DateTime), 57, 659, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1170, 2, CAST(N'2018-12-05T03:15:18.000' AS DateTime), CAST(N'2018-12-05T05:14:00.000' AS DateTime), 118, 659, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1171, 2, CAST(N'2018-12-05T05:51:09.000' AS DateTime), CAST(N'2018-12-05T21:02:32.000' AS DateTime), 911, 659, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1172, 9, CAST(N'2018-12-30T17:45:27.000' AS DateTime), CAST(N'2018-12-30T19:02:43.000' AS DateTime), 77, 660, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1173, 4, CAST(N'2018-12-01T01:10:42.000' AS DateTime), CAST(N'2018-12-01T03:13:05.000' AS DateTime), 122, 661, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1174, 7, CAST(N'2018-12-22T02:35:54.000' AS DateTime), CAST(N'2018-12-22T18:22:46.000' AS DateTime), 946, 662, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1175, 7, CAST(N'2018-12-22T05:24:40.000' AS DateTime), CAST(N'2018-12-22T23:59:51.000' AS DateTime), 1115, 662, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1176, 7, CAST(N'2018-12-22T01:53:23.000' AS DateTime), CAST(N'2018-12-22T23:06:07.000' AS DateTime), 1272, 662, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1177, 5, CAST(N'2018-12-17T13:47:41.000' AS DateTime), CAST(N'2018-12-17T21:05:18.000' AS DateTime), 437, 663, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1178, 5, CAST(N'2018-12-17T09:53:25.000' AS DateTime), CAST(N'2018-12-17T18:14:35.000' AS DateTime), 501, 663, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1179, 9, CAST(N'2018-12-27T18:12:54.000' AS DateTime), CAST(N'2018-12-27T21:15:19.000' AS DateTime), 182, 664, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1180, 9, CAST(N'2018-12-27T08:15:00.000' AS DateTime), CAST(N'2018-12-27T13:11:27.000' AS DateTime), 296, 664, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1181, 1, CAST(N'2018-12-03T10:49:54.000' AS DateTime), CAST(N'2018-12-03T23:09:52.000' AS DateTime), 739, 665, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1182, 1, CAST(N'2018-12-03T06:18:36.000' AS DateTime), CAST(N'2018-12-03T22:16:08.000' AS DateTime), 957, 665, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1183, 3, CAST(N'2018-12-07T05:35:37.000' AS DateTime), CAST(N'2018-12-07T18:54:47.000' AS DateTime), 799, 666, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1184, 6, CAST(N'2018-12-06T00:04:37.000' AS DateTime), CAST(N'2018-12-06T02:06:46.000' AS DateTime), 122, 667, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1185, 1, CAST(N'2018-12-11T20:52:40.000' AS DateTime), CAST(N'2018-12-11T21:27:00.000' AS DateTime), 34, 668, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1186, 1, CAST(N'2018-12-01T09:01:22.000' AS DateTime), CAST(N'2018-12-01T19:55:50.000' AS DateTime), 654, 669, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1187, 1, CAST(N'2018-12-01T13:51:12.000' AS DateTime), CAST(N'2018-12-01T16:10:00.000' AS DateTime), 138, 669, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1188, 1, CAST(N'2018-12-01T08:58:57.000' AS DateTime), CAST(N'2018-12-01T12:18:18.000' AS DateTime), 199, 669, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1189, 4, CAST(N'2018-12-26T11:58:14.000' AS DateTime), CAST(N'2018-12-26T16:41:29.000' AS DateTime), 283, 670, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1190, 4, CAST(N'2018-12-26T00:07:39.000' AS DateTime), CAST(N'2018-12-26T16:59:23.000' AS DateTime), 1011, 670, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1191, 7, CAST(N'2018-12-07T11:41:48.000' AS DateTime), CAST(N'2018-12-07T14:59:13.000' AS DateTime), 197, 671, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1192, 6, CAST(N'2018-12-21T07:10:32.000' AS DateTime), CAST(N'2018-12-21T19:23:50.000' AS DateTime), 733, 672, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1193, 9, CAST(N'2018-12-20T02:40:32.000' AS DateTime), CAST(N'2018-12-20T03:35:50.000' AS DateTime), 55, 673, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1194, 3, CAST(N'2018-12-20T03:39:20.000' AS DateTime), CAST(N'2018-12-20T16:12:07.000' AS DateTime), 752, 674, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1195, 5, CAST(N'2018-12-04T02:31:55.000' AS DateTime), CAST(N'2018-12-04T06:31:26.000' AS DateTime), 239, 675, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1196, 4, CAST(N'2018-12-30T09:27:27.000' AS DateTime), CAST(N'2018-12-30T23:59:12.000' AS DateTime), 871, 676, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1197, 6, CAST(N'2018-12-19T04:37:13.000' AS DateTime), CAST(N'2018-12-19T12:23:54.000' AS DateTime), 466, 677, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1198, 8, CAST(N'2018-12-07T08:03:04.000' AS DateTime), CAST(N'2018-12-07T23:34:37.000' AS DateTime), 931, 678, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1199, 6, CAST(N'2018-12-20T08:27:59.000' AS DateTime), CAST(N'2018-12-20T16:00:59.000' AS DateTime), 453, 679, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1200, 6, CAST(N'2018-12-20T02:57:52.000' AS DateTime), CAST(N'2018-12-20T21:21:44.000' AS DateTime), 1103, 679, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1201, 6, CAST(N'2018-12-20T04:33:44.000' AS DateTime), CAST(N'2018-12-20T13:08:16.000' AS DateTime), 514, 679, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1202, 4, CAST(N'2018-12-20T20:44:16.000' AS DateTime), CAST(N'2018-12-20T21:02:07.000' AS DateTime), 17, 680, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1203, 2, CAST(N'2018-12-06T05:28:12.000' AS DateTime), CAST(N'2018-12-06T18:03:33.000' AS DateTime), 755, 681, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1204, 9, CAST(N'2018-12-28T13:18:39.000' AS DateTime), CAST(N'2018-12-28T17:24:37.000' AS DateTime), 245, 682, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1205, 1, CAST(N'2018-12-04T05:55:39.000' AS DateTime), CAST(N'2018-12-04T19:17:10.000' AS DateTime), 801, 683, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1206, 1, CAST(N'2018-12-04T07:31:30.000' AS DateTime), CAST(N'2018-12-04T11:05:41.000' AS DateTime), 214, 683, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1207, 9, CAST(N'2018-12-29T17:07:25.000' AS DateTime), CAST(N'2018-12-29T22:00:41.000' AS DateTime), 293, 684, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1208, 9, CAST(N'2018-12-29T13:14:10.000' AS DateTime), CAST(N'2018-12-29T19:09:59.000' AS DateTime), 355, 684, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1209, 3, CAST(N'2018-12-10T21:32:38.000' AS DateTime), CAST(N'2018-12-10T22:11:43.000' AS DateTime), 39, 685, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1210, 3, CAST(N'2018-12-10T17:39:23.000' AS DateTime), CAST(N'2018-12-10T18:19:00.000' AS DateTime), 39, 685, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1211, 5, CAST(N'2018-12-03T14:56:20.000' AS DateTime), CAST(N'2018-12-03T21:53:02.000' AS DateTime), 416, 686, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1212, 8, CAST(N'2018-12-26T18:34:52.000' AS DateTime), CAST(N'2018-12-26T23:14:18.000' AS DateTime), 279, 687, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1213, 2, CAST(N'2018-12-07T22:59:05.000' AS DateTime), CAST(N'2018-12-07T23:24:19.000' AS DateTime), 25, 688, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1214, 2, CAST(N'2018-12-07T00:35:57.000' AS DateTime), CAST(N'2018-12-07T15:12:51.000' AS DateTime), 876, 688, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1215, 1, CAST(N'2018-12-27T05:38:39.000' AS DateTime), CAST(N'2018-12-27T08:47:23.000' AS DateTime), 188, 689, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1216, 9, CAST(N'2018-12-03T09:03:31.000' AS DateTime), CAST(N'2018-12-03T19:46:23.000' AS DateTime), 642, 690, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1217, 8, CAST(N'2018-12-16T16:32:16.000' AS DateTime), CAST(N'2018-12-16T22:22:06.000' AS DateTime), 349, 691, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1218, 5, CAST(N'2018-12-15T06:30:16.000' AS DateTime), CAST(N'2018-12-15T14:46:05.000' AS DateTime), 495, 692, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1219, 7, CAST(N'2018-12-10T02:43:35.000' AS DateTime), CAST(N'2018-12-10T17:28:27.000' AS DateTime), 884, 693, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1220, 5, CAST(N'2018-12-06T03:25:53.000' AS DateTime), CAST(N'2018-12-06T12:58:49.000' AS DateTime), 572, 694, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1221, 3, CAST(N'2018-12-13T06:06:51.000' AS DateTime), CAST(N'2018-12-13T21:28:54.000' AS DateTime), 922, 695, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1222, 5, CAST(N'2018-12-08T03:55:35.000' AS DateTime), CAST(N'2018-12-08T13:28:22.000' AS DateTime), 572, 696, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1223, 8, CAST(N'2018-12-29T08:06:12.000' AS DateTime), CAST(N'2018-12-29T15:16:09.000' AS DateTime), 429, 697, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1224, 8, CAST(N'2018-12-20T05:01:49.000' AS DateTime), CAST(N'2018-12-20T13:28:53.000' AS DateTime), 507, 698, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1225, 4, CAST(N'2018-12-13T16:12:57.000' AS DateTime), CAST(N'2018-12-13T17:05:24.000' AS DateTime), 52, 699, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1226, 4, CAST(N'2018-12-13T10:42:50.000' AS DateTime), CAST(N'2018-12-13T22:26:10.000' AS DateTime), 703, 699, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1227, 7, CAST(N'2018-12-06T00:51:52.000' AS DateTime), CAST(N'2018-12-06T18:15:33.000' AS DateTime), 1043, 700, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1228, 5, CAST(N'2018-12-16T09:16:23.000' AS DateTime), CAST(N'2018-12-16T20:12:33.000' AS DateTime), 656, 701, 1)
GO
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1229, 8, CAST(N'2018-12-27T14:40:36.000' AS DateTime), CAST(N'2018-12-27T20:22:35.000' AS DateTime), 341, 702, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1230, 2, CAST(N'2018-12-06T01:28:14.000' AS DateTime), CAST(N'2018-12-06T08:19:41.000' AS DateTime), 411, 703, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1231, 2, CAST(N'2018-12-06T13:11:15.000' AS DateTime), CAST(N'2018-12-06T15:06:21.000' AS DateTime), 115, 703, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1232, 2, CAST(N'2018-12-06T07:03:06.000' AS DateTime), CAST(N'2018-12-06T22:25:05.000' AS DateTime), 921, 703, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1233, 2, CAST(N'2018-12-06T09:39:57.000' AS DateTime), CAST(N'2018-12-06T14:13:37.000' AS DateTime), 273, 703, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1234, 6, CAST(N'2018-12-08T05:54:06.000' AS DateTime), CAST(N'2018-12-08T06:26:04.000' AS DateTime), 31, 704, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1235, 4, CAST(N'2018-12-18T15:43:05.000' AS DateTime), CAST(N'2018-12-18T22:58:19.000' AS DateTime), 435, 705, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1236, 7, CAST(N'2018-12-09T02:54:13.000' AS DateTime), CAST(N'2018-12-09T20:41:54.000' AS DateTime), 1067, 706, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1237, 1, CAST(N'2018-12-22T12:55:53.000' AS DateTime), CAST(N'2018-12-22T19:29:57.000' AS DateTime), 394, 707, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1238, 9, CAST(N'2018-12-27T04:30:49.000' AS DateTime), CAST(N'2018-12-27T09:06:38.000' AS DateTime), 275, 708, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1239, 9, CAST(N'2018-12-27T00:58:31.000' AS DateTime), CAST(N'2018-12-27T08:13:54.000' AS DateTime), 435, 708, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1240, 3, CAST(N'2018-12-17T08:07:12.000' AS DateTime), CAST(N'2018-12-17T22:11:19.000' AS DateTime), 844, 709, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1241, 1, CAST(N'2018-12-12T10:49:31.000' AS DateTime), CAST(N'2018-12-12T17:41:41.000' AS DateTime), 412, 710, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1242, 5, CAST(N'2018-12-14T01:32:02.000' AS DateTime), CAST(N'2018-12-14T11:09:13.000' AS DateTime), 577, 711, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1243, 9, CAST(N'2018-12-25T05:57:15.000' AS DateTime), CAST(N'2018-12-25T10:19:14.000' AS DateTime), 261, 712, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1244, 9, CAST(N'2018-12-25T03:38:52.000' AS DateTime), CAST(N'2018-12-25T23:15:03.000' AS DateTime), 1176, 712, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1245, 9, CAST(N'2018-12-25T05:14:44.000' AS DateTime), CAST(N'2018-12-25T14:03:35.000' AS DateTime), 528, 712, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1246, 7, CAST(N'2018-12-07T01:31:49.000' AS DateTime), CAST(N'2018-12-07T04:35:02.000' AS DateTime), 183, 713, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1247, 1, CAST(N'2018-12-26T11:18:49.000' AS DateTime), CAST(N'2018-12-26T12:48:34.000' AS DateTime), 89, 714, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1248, 4, CAST(N'2018-12-11T02:58:29.000' AS DateTime), CAST(N'2018-12-11T12:23:49.000' AS DateTime), 565, 715, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1249, 4, CAST(N'2018-12-11T00:03:03.000' AS DateTime), CAST(N'2018-12-11T03:17:37.000' AS DateTime), 194, 715, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1250, 6, CAST(N'2018-12-01T11:42:08.000' AS DateTime), CAST(N'2018-12-01T22:41:23.000' AS DateTime), 659, 716, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1251, 4, CAST(N'2018-12-12T05:48:15.000' AS DateTime), CAST(N'2018-12-12T17:59:54.000' AS DateTime), 731, 717, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1252, 4, CAST(N'2018-12-12T01:16:57.000' AS DateTime), CAST(N'2018-12-12T16:06:10.000' AS DateTime), 889, 717, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1253, 4, CAST(N'2018-12-12T19:47:50.000' AS DateTime), CAST(N'2018-12-12T21:27:56.000' AS DateTime), 100, 717, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1254, 8, CAST(N'2018-12-23T10:12:28.000' AS DateTime), CAST(N'2018-12-23T16:10:55.000' AS DateTime), 358, 718, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1255, 8, CAST(N'2018-12-23T06:35:18.000' AS DateTime), CAST(N'2018-12-23T11:34:52.000' AS DateTime), 299, 718, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1256, 2, CAST(N'2018-12-04T14:37:42.000' AS DateTime), CAST(N'2018-12-04T16:20:57.000' AS DateTime), 103, 719, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1257, 2, CAST(N'2018-12-04T14:55:10.000' AS DateTime), CAST(N'2018-12-04T20:03:18.000' AS DateTime), 308, 719, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1258, 10, CAST(N'2018-12-29T02:49:28.000' AS DateTime), CAST(N'2018-12-29T19:03:29.000' AS DateTime), 974, 720, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1259, 10, CAST(N'2018-12-29T20:20:21.000' AS DateTime), CAST(N'2018-12-29T23:24:14.000' AS DateTime), 183, 720, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1260, 4, CAST(N'2018-12-10T06:14:41.000' AS DateTime), CAST(N'2018-12-10T18:13:30.000' AS DateTime), 718, 721, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1261, 4, CAST(N'2018-12-10T08:50:33.000' AS DateTime), CAST(N'2018-12-10T10:01:02.000' AS DateTime), 70, 721, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1262, 4, CAST(N'2018-12-10T02:21:26.000' AS DateTime), CAST(N'2018-12-10T15:21:48.000' AS DateTime), 780, 721, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1263, 4, CAST(N'2018-12-10T04:56:18.000' AS DateTime), CAST(N'2018-12-10T07:09:19.000' AS DateTime), 133, 721, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1264, 7, CAST(N'2018-12-20T11:39:55.000' AS DateTime), CAST(N'2018-12-20T18:23:32.000' AS DateTime), 403, 722, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1265, 5, CAST(N'2018-12-13T16:43:33.000' AS DateTime), CAST(N'2018-12-13T19:10:04.000' AS DateTime), 146, 723, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1266, 5, CAST(N'2018-12-13T01:54:00.000' AS DateTime), CAST(N'2018-12-13T13:08:11.000' AS DateTime), 674, 723, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1267, 9, CAST(N'2018-12-26T03:16:55.000' AS DateTime), CAST(N'2018-12-26T20:17:05.000' AS DateTime), 1020, 724, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1268, 9, CAST(N'2018-12-26T05:52:46.000' AS DateTime), CAST(N'2018-12-26T12:04:37.000' AS DateTime), 371, 724, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1269, 7, CAST(N'2018-12-21T14:28:41.000' AS DateTime), CAST(N'2018-12-21T23:00:36.000' AS DateTime), 511, 725, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1270, 7, CAST(N'2018-12-21T10:57:23.000' AS DateTime), CAST(N'2018-12-21T22:07:52.000' AS DateTime), 670, 725, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1271, 1, CAST(N'2018-12-02T19:53:54.000' AS DateTime), CAST(N'2018-12-02T22:10:38.000' AS DateTime), 136, 726, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1272, 5, CAST(N'2018-12-09T04:59:22.000' AS DateTime), CAST(N'2018-12-09T10:04:48.000' AS DateTime), 305, 727, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1273, 3, CAST(N'2018-12-07T19:55:55.000' AS DateTime), CAST(N'2018-12-07T22:21:19.000' AS DateTime), 145, 728, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1274, 3, CAST(N'2018-12-07T09:17:00.000' AS DateTime), CAST(N'2018-12-07T11:14:38.000' AS DateTime), 117, 728, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1275, 3, CAST(N'2018-12-07T05:23:45.000' AS DateTime), CAST(N'2018-12-07T08:23:56.000' AS DateTime), 180, 728, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1276, 7, CAST(N'2018-12-04T00:11:41.000' AS DateTime), CAST(N'2018-12-04T13:46:09.000' AS DateTime), 814, 729, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1277, 9, CAST(N'2018-12-29T01:07:10.000' AS DateTime), CAST(N'2018-12-29T11:18:44.000' AS DateTime), 611, 730, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1278, 2, CAST(N'2018-12-24T19:47:43.000' AS DateTime), CAST(N'2018-12-24T23:38:59.000' AS DateTime), 231, 731, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1279, 10, CAST(N'2018-12-24T16:36:18.000' AS DateTime), CAST(N'2018-12-24T19:10:53.000' AS DateTime), 154, 732, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1280, 4, CAST(N'2018-12-22T08:19:24.000' AS DateTime), CAST(N'2018-12-22T23:14:09.000' AS DateTime), 894, 733, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1281, 6, CAST(N'2018-12-23T04:19:31.000' AS DateTime), CAST(N'2018-12-23T14:29:59.000' AS DateTime), 610, 734, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1282, 10, CAST(N'2018-12-28T00:36:34.000' AS DateTime), CAST(N'2018-12-28T06:14:55.000' AS DateTime), 338, 735, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1283, 10, CAST(N'2018-12-28T02:12:25.000' AS DateTime), CAST(N'2018-12-28T21:02:27.000' AS DateTime), 1130, 735, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1284, 3, CAST(N'2018-12-09T04:01:47.000' AS DateTime), CAST(N'2018-12-09T05:24:57.000' AS DateTime), 83, 736, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1285, 3, CAST(N'2018-12-09T02:43:24.000' AS DateTime), CAST(N'2018-12-09T17:20:46.000' AS DateTime), 877, 736, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1286, 2, CAST(N'2018-12-21T14:51:40.000' AS DateTime), CAST(N'2018-12-21T17:36:48.000' AS DateTime), 165, 737, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1287, 5, CAST(N'2018-12-07T10:17:17.000' AS DateTime), CAST(N'2018-12-07T11:34:49.000' AS DateTime), 77, 738, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1288, 7, CAST(N'2018-12-08T01:30:51.000' AS DateTime), CAST(N'2018-12-08T10:00:59.000' AS DateTime), 510, 739, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1289, 7, CAST(N'2018-12-08T02:50:39.000' AS DateTime), CAST(N'2018-12-08T04:09:50.000' AS DateTime), 79, 739, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1290, 1, CAST(N'2018-12-07T08:10:14.000' AS DateTime), CAST(N'2018-12-07T11:04:56.000' AS DateTime), 174, 740, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1291, 6, CAST(N'2018-12-12T06:46:13.000' AS DateTime), CAST(N'2018-12-12T21:24:50.000' AS DateTime), 878, 741, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1292, 8, CAST(N'2018-12-24T05:19:13.000' AS DateTime), CAST(N'2018-12-24T13:18:13.000' AS DateTime), 479, 742, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1293, 8, CAST(N'2018-12-24T01:25:58.000' AS DateTime), CAST(N'2018-12-24T10:26:30.000' AS DateTime), 540, 742, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1294, 7, CAST(N'2018-12-10T08:17:14.000' AS DateTime), CAST(N'2018-12-10T13:01:27.000' AS DateTime), 284, 743, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1295, 10, CAST(N'2018-12-25T02:07:37.000' AS DateTime), CAST(N'2018-12-25T07:29:29.000' AS DateTime), 321, 744, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1296, 2, CAST(N'2018-12-05T14:33:13.000' AS DateTime), CAST(N'2018-12-05T17:05:19.000' AS DateTime), 152, 745, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1297, 6, CAST(N'2018-12-16T06:57:29.000' AS DateTime), CAST(N'2018-12-16T15:16:21.000' AS DateTime), 498, 746, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1298, 9, CAST(N'2018-12-15T01:27:28.000' AS DateTime), CAST(N'2018-12-15T23:28:21.000' AS DateTime), 1320, 747, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1299, 8, CAST(N'2018-12-22T10:35:26.000' AS DateTime), CAST(N'2018-12-22T19:08:54.000' AS DateTime), 513, 748, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1300, 8, CAST(N'2018-12-22T06:41:11.000' AS DateTime), CAST(N'2018-12-22T16:17:11.000' AS DateTime), 576, 748, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1301, 1, CAST(N'2018-12-03T14:00:39.000' AS DateTime), CAST(N'2018-12-03T19:18:56.000' AS DateTime), 318, 749, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1302, 1, CAST(N'2018-12-03T10:06:24.000' AS DateTime), CAST(N'2018-12-03T15:27:13.000' AS DateTime), 320, 749, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1303, 3, CAST(N'2018-12-08T07:37:39.000' AS DateTime), CAST(N'2018-12-08T21:12:29.000' AS DateTime), 814, 750, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1304, 7, CAST(N'2018-12-19T11:01:52.000' AS DateTime), CAST(N'2018-12-19T20:22:30.000' AS DateTime), 560, 751, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1305, 5, CAST(N'2018-12-12T08:31:21.000' AS DateTime), CAST(N'2018-12-12T14:51:59.000' AS DateTime), 380, 752, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1306, 1, CAST(N'2018-12-25T05:45:43.000' AS DateTime), CAST(N'2018-12-25T19:27:47.000' AS DateTime), 822, 753, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1307, 4, CAST(N'2018-12-24T00:14:43.000' AS DateTime), CAST(N'2018-12-24T03:39:46.000' AS DateTime), 205, 754, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1308, 3, CAST(N'2018-12-20T01:57:02.000' AS DateTime), CAST(N'2018-12-20T22:09:08.000' AS DateTime), 1212, 755, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1309, 6, CAST(N'2018-12-09T05:48:34.000' AS DateTime), CAST(N'2018-12-09T20:34:29.000' AS DateTime), 885, 756, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1310, 10, CAST(N'2018-12-19T07:06:58.000' AS DateTime), CAST(N'2018-12-19T14:27:25.000' AS DateTime), 440, 757, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1311, 8, CAST(N'2018-12-02T03:03:59.000' AS DateTime), CAST(N'2018-12-02T10:53:55.000' AS DateTime), 469, 758, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1312, 2, CAST(N'2018-12-14T11:08:20.000' AS DateTime), CAST(N'2018-12-14T17:15:29.000' AS DateTime), 367, 759, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1313, 2, CAST(N'2018-12-14T00:17:45.000' AS DateTime), CAST(N'2018-12-14T17:32:23.000' AS DateTime), 1034, 759, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1314, 5, CAST(N'2018-12-19T05:32:46.000' AS DateTime), CAST(N'2018-12-19T18:22:16.000' AS DateTime), 769, 760, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1315, 6, CAST(N'2018-12-04T03:32:58.000' AS DateTime), CAST(N'2018-12-04T23:39:12.000' AS DateTime), 1206, 761, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1316, 1, CAST(N'2018-12-15T02:19:34.000' AS DateTime), CAST(N'2018-12-15T22:06:19.000' AS DateTime), 1186, 762, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1317, 5, CAST(N'2018-12-28T13:43:16.000' AS DateTime), CAST(N'2018-12-28T18:45:33.000' AS DateTime), 302, 763, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1318, 5, CAST(N'2018-12-28T05:47:30.000' AS DateTime), CAST(N'2018-12-28T16:28:18.000' AS DateTime), 640, 763, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1319, 7, CAST(N'2018-12-23T09:56:35.000' AS DateTime), CAST(N'2018-12-23T21:27:55.000' AS DateTime), 691, 764, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1320, 10, CAST(N'2018-12-22T04:25:35.000' AS DateTime), CAST(N'2018-12-22T04:39:54.000' AS DateTime), 14, 765, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1321, 6, CAST(N'2018-12-17T14:04:11.000' AS DateTime), CAST(N'2018-12-17T14:23:38.000' AS DateTime), 19, 766, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1322, 10, CAST(N'2018-12-07T11:31:31.000' AS DateTime), CAST(N'2018-12-07T21:57:58.000' AS DateTime), 626, 767, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1323, 5, CAST(N'2018-12-15T18:20:23.000' AS DateTime), CAST(N'2018-12-15T20:13:19.000' AS DateTime), 112, 768, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1324, 9, CAST(N'2018-12-08T11:18:48.000' AS DateTime), CAST(N'2018-12-08T14:49:25.000' AS DateTime), 210, 769, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1325, 1, CAST(N'2018-12-01T15:22:37.000' AS DateTime), CAST(N'2018-12-01T21:17:54.000' AS DateTime), 355, 770, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1326, 3, CAST(N'2018-12-21T14:06:27.000' AS DateTime), CAST(N'2018-12-21T22:27:02.000' AS DateTime), 500, 771, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1327, 6, CAST(N'2018-12-18T11:24:50.000' AS DateTime), CAST(N'2018-12-18T23:20:29.000' AS DateTime), 715, 772, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1328, 8, CAST(N'2018-12-15T05:48:45.000' AS DateTime), CAST(N'2018-12-15T09:20:23.000' AS DateTime), 211, 773, 1)
GO
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (1329, 10, CAST(N'2018-12-10T01:00:04.000' AS DateTime), CAST(N'2018-12-10T12:02:45.000' AS DateTime), 662, 774, 1)
SET IDENTITY_INSERT [dbo].[ChitietHDTC] OFF
SET IDENTITY_INSERT [dbo].[FileLogSIM] ON 

INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (1, 2, CAST(N'2018-12-06T01:28:14.000' AS DateTime), CAST(N'2018-12-06T08:19:41.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (2, 6, CAST(N'2018-12-08T05:54:06.000' AS DateTime), CAST(N'2018-12-08T06:26:04.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (3, 4, CAST(N'2018-12-18T15:43:05.000' AS DateTime), CAST(N'2018-12-18T22:58:19.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (4, 7, CAST(N'2018-12-09T02:54:13.000' AS DateTime), CAST(N'2018-12-09T20:41:54.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (5, 1, CAST(N'2018-12-22T12:55:53.000' AS DateTime), CAST(N'2018-12-22T19:29:57.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (6, 9, CAST(N'2018-12-27T04:30:49.000' AS DateTime), CAST(N'2018-12-27T09:06:38.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (7, 3, CAST(N'2018-12-17T08:07:12.000' AS DateTime), CAST(N'2018-12-17T22:11:19.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (8, 1, CAST(N'2018-12-12T10:49:31.000' AS DateTime), CAST(N'2018-12-12T17:41:41.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (9, 5, CAST(N'2018-12-14T01:32:02.000' AS DateTime), CAST(N'2018-12-14T11:09:13.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (10, 9, CAST(N'2018-12-25T05:57:15.000' AS DateTime), CAST(N'2018-12-25T10:19:14.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (11, 7, CAST(N'2018-12-07T01:31:49.000' AS DateTime), CAST(N'2018-12-07T04:35:02.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (12, 1, CAST(N'2018-12-26T11:18:49.000' AS DateTime), CAST(N'2018-12-26T12:48:34.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (13, 4, CAST(N'2018-12-11T02:58:29.000' AS DateTime), CAST(N'2018-12-11T12:23:49.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (14, 2, CAST(N'2018-12-06T13:11:15.000' AS DateTime), CAST(N'2018-12-06T15:06:21.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (15, 6, CAST(N'2018-12-01T11:42:08.000' AS DateTime), CAST(N'2018-12-01T22:41:23.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (16, 4, CAST(N'2018-12-12T05:48:15.000' AS DateTime), CAST(N'2018-12-12T17:59:54.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (17, 8, CAST(N'2018-12-23T10:12:28.000' AS DateTime), CAST(N'2018-12-23T16:10:55.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (18, 2, CAST(N'2018-12-04T14:37:42.000' AS DateTime), CAST(N'2018-12-04T16:20:57.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (19, 10, CAST(N'2018-12-29T02:49:28.000' AS DateTime), CAST(N'2018-12-29T19:03:29.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (20, 4, CAST(N'2018-12-10T06:14:41.000' AS DateTime), CAST(N'2018-12-10T18:13:30.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (21, 7, CAST(N'2018-12-20T11:39:55.000' AS DateTime), CAST(N'2018-12-20T18:23:32.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (22, 5, CAST(N'2018-12-13T16:43:33.000' AS DateTime), CAST(N'2018-12-13T19:10:04.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (23, 9, CAST(N'2018-12-26T03:16:55.000' AS DateTime), CAST(N'2018-12-26T20:17:05.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (24, 7, CAST(N'2018-12-21T14:28:41.000' AS DateTime), CAST(N'2018-12-21T23:00:36.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (25, 1, CAST(N'2018-12-02T19:53:54.000' AS DateTime), CAST(N'2018-12-02T22:10:38.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (26, 5, CAST(N'2018-12-09T04:59:22.000' AS DateTime), CAST(N'2018-12-09T10:04:48.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (27, 3, CAST(N'2018-12-07T19:55:55.000' AS DateTime), CAST(N'2018-12-07T22:21:19.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (28, 7, CAST(N'2018-12-04T00:11:41.000' AS DateTime), CAST(N'2018-12-04T13:46:09.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (29, 10, CAST(N'2018-12-29T20:20:21.000' AS DateTime), CAST(N'2018-12-29T23:24:14.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (30, 9, CAST(N'2018-12-29T01:07:10.000' AS DateTime), CAST(N'2018-12-29T11:18:44.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (31, 2, CAST(N'2018-12-24T19:47:43.000' AS DateTime), CAST(N'2018-12-24T23:38:59.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (32, 10, CAST(N'2018-12-24T16:36:18.000' AS DateTime), CAST(N'2018-12-24T19:10:53.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (33, 4, CAST(N'2018-12-22T08:19:24.000' AS DateTime), CAST(N'2018-12-22T23:14:09.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (34, 8, CAST(N'2018-12-23T06:35:18.000' AS DateTime), CAST(N'2018-12-23T11:34:52.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (35, 6, CAST(N'2018-12-23T04:19:31.000' AS DateTime), CAST(N'2018-12-23T14:29:59.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (36, 10, CAST(N'2018-12-28T00:36:34.000' AS DateTime), CAST(N'2018-12-28T06:14:55.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (37, 3, CAST(N'2018-12-09T04:01:47.000' AS DateTime), CAST(N'2018-12-09T05:24:57.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (38, 2, CAST(N'2018-12-21T14:51:40.000' AS DateTime), CAST(N'2018-12-21T17:36:48.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (39, 5, CAST(N'2018-12-07T10:17:17.000' AS DateTime), CAST(N'2018-12-07T11:34:49.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (40, 4, CAST(N'2018-12-10T08:50:33.000' AS DateTime), CAST(N'2018-12-10T10:01:02.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (41, 7, CAST(N'2018-12-08T01:30:51.000' AS DateTime), CAST(N'2018-12-08T10:00:59.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (42, 1, CAST(N'2018-12-07T08:10:14.000' AS DateTime), CAST(N'2018-12-07T11:04:56.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (43, 9, CAST(N'2018-12-26T05:52:46.000' AS DateTime), CAST(N'2018-12-26T12:04:37.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (44, 3, CAST(N'2018-12-07T09:17:00.000' AS DateTime), CAST(N'2018-12-07T11:14:38.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (45, 6, CAST(N'2018-12-12T06:46:13.000' AS DateTime), CAST(N'2018-12-12T21:24:50.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (46, 5, CAST(N'2018-12-13T01:54:00.000' AS DateTime), CAST(N'2018-12-13T13:08:11.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (47, 8, CAST(N'2018-12-24T05:19:13.000' AS DateTime), CAST(N'2018-12-24T13:18:13.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (48, 7, CAST(N'2018-12-10T08:17:14.000' AS DateTime), CAST(N'2018-12-10T13:01:27.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (49, 10, CAST(N'2018-12-25T02:07:37.000' AS DateTime), CAST(N'2018-12-25T07:29:29.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (50, 4, CAST(N'2018-12-10T02:21:26.000' AS DateTime), CAST(N'2018-12-10T15:21:48.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (51, 2, CAST(N'2018-12-05T14:33:13.000' AS DateTime), CAST(N'2018-12-05T17:05:19.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (52, 6, CAST(N'2018-12-16T06:57:29.000' AS DateTime), CAST(N'2018-12-16T15:16:21.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (53, 9, CAST(N'2018-12-15T01:27:28.000' AS DateTime), CAST(N'2018-12-15T23:28:21.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (54, 8, CAST(N'2018-12-22T10:35:26.000' AS DateTime), CAST(N'2018-12-22T19:08:54.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (55, 1, CAST(N'2018-12-03T14:00:39.000' AS DateTime), CAST(N'2018-12-03T19:18:56.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (56, 10, CAST(N'2018-12-28T02:12:25.000' AS DateTime), CAST(N'2018-12-28T21:02:27.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (57, 3, CAST(N'2018-12-08T07:37:39.000' AS DateTime), CAST(N'2018-12-08T21:12:29.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (58, 7, CAST(N'2018-12-19T11:01:52.000' AS DateTime), CAST(N'2018-12-19T20:22:30.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (59, 5, CAST(N'2018-12-12T08:31:21.000' AS DateTime), CAST(N'2018-12-12T14:51:59.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (60, 9, CAST(N'2018-12-25T03:38:52.000' AS DateTime), CAST(N'2018-12-25T23:15:03.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (61, 2, CAST(N'2018-12-06T07:03:06.000' AS DateTime), CAST(N'2018-12-06T22:25:05.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (62, 1, CAST(N'2018-12-25T05:45:43.000' AS DateTime), CAST(N'2018-12-25T19:27:47.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (63, 4, CAST(N'2018-12-24T00:14:43.000' AS DateTime), CAST(N'2018-12-24T03:39:46.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (64, 3, CAST(N'2018-12-20T01:57:02.000' AS DateTime), CAST(N'2018-12-20T22:09:08.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (65, 6, CAST(N'2018-12-09T05:48:34.000' AS DateTime), CAST(N'2018-12-09T20:34:29.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (66, 10, CAST(N'2018-12-19T07:06:58.000' AS DateTime), CAST(N'2018-12-19T14:27:25.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (67, 8, CAST(N'2018-12-02T03:03:59.000' AS DateTime), CAST(N'2018-12-02T10:53:55.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (68, 2, CAST(N'2018-12-14T11:08:20.000' AS DateTime), CAST(N'2018-12-14T17:15:29.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (69, 5, CAST(N'2018-12-19T05:32:46.000' AS DateTime), CAST(N'2018-12-19T18:22:16.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (70, 4, CAST(N'2018-12-10T04:56:18.000' AS DateTime), CAST(N'2018-12-10T07:09:19.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (71, 7, CAST(N'2018-12-08T02:50:39.000' AS DateTime), CAST(N'2018-12-08T04:09:50.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (72, 6, CAST(N'2018-12-04T03:32:58.000' AS DateTime), CAST(N'2018-12-04T23:39:12.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (73, 9, CAST(N'2018-12-27T00:58:31.000' AS DateTime), CAST(N'2018-12-27T08:13:54.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (74, 3, CAST(N'2018-12-07T05:23:45.000' AS DateTime), CAST(N'2018-12-07T08:23:56.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (75, 1, CAST(N'2018-12-15T02:19:34.000' AS DateTime), CAST(N'2018-12-15T22:06:19.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (76, 5, CAST(N'2018-12-28T13:43:16.000' AS DateTime), CAST(N'2018-12-28T18:45:33.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (77, 8, CAST(N'2018-12-24T01:25:58.000' AS DateTime), CAST(N'2018-12-24T10:26:30.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (78, 7, CAST(N'2018-12-23T09:56:35.000' AS DateTime), CAST(N'2018-12-23T21:27:55.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (79, 10, CAST(N'2018-12-22T04:25:35.000' AS DateTime), CAST(N'2018-12-22T04:39:54.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (80, 9, CAST(N'2018-12-25T05:14:44.000' AS DateTime), CAST(N'2018-12-25T14:03:35.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (81, 2, CAST(N'2018-12-06T09:39:57.000' AS DateTime), CAST(N'2018-12-06T14:13:37.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (82, 6, CAST(N'2018-12-17T14:04:11.000' AS DateTime), CAST(N'2018-12-17T14:23:38.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (83, 4, CAST(N'2018-12-12T01:16:57.000' AS DateTime), CAST(N'2018-12-12T16:06:10.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (84, 8, CAST(N'2018-12-22T06:41:11.000' AS DateTime), CAST(N'2018-12-22T16:17:11.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (85, 1, CAST(N'2018-12-03T10:06:24.000' AS DateTime), CAST(N'2018-12-03T15:27:13.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (86, 10, CAST(N'2018-12-07T11:31:31.000' AS DateTime), CAST(N'2018-12-07T21:57:58.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (87, 3, CAST(N'2018-12-09T02:43:24.000' AS DateTime), CAST(N'2018-12-09T17:20:46.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (88, 2, CAST(N'2018-12-04T14:55:10.000' AS DateTime), CAST(N'2018-12-04T20:03:18.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (89, 5, CAST(N'2018-12-15T18:20:23.000' AS DateTime), CAST(N'2018-12-15T20:13:19.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (90, 9, CAST(N'2018-12-08T11:18:48.000' AS DateTime), CAST(N'2018-12-08T14:49:25.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (91, 7, CAST(N'2018-12-21T10:57:23.000' AS DateTime), CAST(N'2018-12-21T22:07:52.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (92, 1, CAST(N'2018-12-01T15:22:37.000' AS DateTime), CAST(N'2018-12-01T21:17:54.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (93, 4, CAST(N'2018-12-12T19:47:50.000' AS DateTime), CAST(N'2018-12-12T21:27:56.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (94, 3, CAST(N'2018-12-21T14:06:27.000' AS DateTime), CAST(N'2018-12-21T22:27:02.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (95, 6, CAST(N'2018-12-18T11:24:50.000' AS DateTime), CAST(N'2018-12-18T23:20:29.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (96, 5, CAST(N'2018-12-28T05:47:30.000' AS DateTime), CAST(N'2018-12-28T16:28:18.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (97, 8, CAST(N'2018-12-15T05:48:45.000' AS DateTime), CAST(N'2018-12-15T09:20:23.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (98, 2, CAST(N'2018-12-14T00:17:45.000' AS DateTime), CAST(N'2018-12-14T17:32:23.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (99, 10, CAST(N'2018-12-10T01:00:04.000' AS DateTime), CAST(N'2018-12-10T12:02:45.000' AS DateTime))
GO
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (100, 4, CAST(N'2018-12-11T00:03:03.000' AS DateTime), CAST(N'2018-12-11T03:17:37.000' AS DateTime))
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
SET IDENTITY_INSERT [dbo].[HoaDonTinhCuoc] ON 

INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (567, 7, 7, CAST(N'2018-12-22T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (568, 5, 5, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (569, 8, 8, CAST(N'2018-12-25T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (570, 6, 6, CAST(N'2018-12-20T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (571, 1, 1, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (572, 8, 8, CAST(N'2018-12-27T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (573, 2, 2, CAST(N'2018-12-06T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (574, 6, 6, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (575, 4, 4, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (576, 7, 7, CAST(N'2018-12-30T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (577, 2, 2, CAST(N'2018-12-30T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (578, 8, 9, CAST(N'2018-12-25T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (579, 3, 3, CAST(N'2018-12-20T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (580, 2, 2, CAST(N'2018-12-05T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (581, 5, 5, CAST(N'2018-12-16T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (582, 8, 8, CAST(N'2018-12-11T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (583, 7, 7, CAST(N'2018-12-21T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (584, 1, 1, CAST(N'2018-12-03T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (585, 4, 4, CAST(N'2018-12-13T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (586, 3, 3, CAST(N'2018-12-09T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (587, 6, 6, CAST(N'2018-12-09T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (588, 2, 2, CAST(N'2018-12-28T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (589, 4, 4, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (590, 7, 7, CAST(N'2018-12-28T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (591, 6, 6, CAST(N'2018-12-18T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (592, 8, 9, CAST(N'2018-12-28T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (593, 7, 7, CAST(N'2018-12-18T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (594, 2, 2, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (595, 5, 5, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (596, 3, 3, CAST(N'2018-12-10T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (597, 7, 7, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (598, 1, 1, CAST(N'2018-12-02T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (599, 3, 3, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (600, 8, 8, CAST(N'2018-12-24T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (601, 6, 6, CAST(N'2018-12-19T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (602, 8, 9, CAST(N'2018-12-02T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (603, 4, 4, CAST(N'2018-12-25T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (604, 2, 2, CAST(N'2018-12-21T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (605, 4, 4, CAST(N'2018-12-16T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (606, 7, 7, CAST(N'2018-12-16T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (607, 1, 1, CAST(N'2018-12-17T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (608, 8, 9, CAST(N'2018-12-06T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (609, 3, 3, CAST(N'2018-12-18T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (610, 8, 8, CAST(N'2018-12-10T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (611, 3, 3, CAST(N'2018-12-25T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (612, 6, 6, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (613, 8, 9, CAST(N'2018-12-29T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (614, 8, 8, CAST(N'2018-12-19T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (615, 8, 9, CAST(N'2018-12-30T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (616, 4, 4, CAST(N'2018-12-11T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (617, 7, 7, CAST(N'2018-12-13T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (618, 3, 3, CAST(N'2018-12-08T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (619, 4, 4, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (620, 8, 8, CAST(N'2018-12-22T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (621, 2, 2, CAST(N'2018-12-22T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (622, 5, 5, CAST(N'2018-12-18T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (623, 4, 4, CAST(N'2018-12-08T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (624, 7, 7, CAST(N'2018-12-29T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (625, 8, 9, CAST(N'2018-12-11T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (626, 3, 3, CAST(N'2018-12-11T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (627, 8, 8, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (628, 7, 7, CAST(N'2018-12-11T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (629, 3, 3, CAST(N'2018-12-29T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (630, 6, 6, CAST(N'2018-12-25T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (631, 2, 2, CAST(N'2018-12-10T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (632, 5, 5, CAST(N'2018-12-17T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (633, 7, 7, CAST(N'2018-12-23T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (634, 1, 1, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (635, 3, 3, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (636, 1, 1, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (637, 4, 4, CAST(N'2018-12-10T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (638, 8, 8, CAST(N'2018-12-28T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (639, 6, 6, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (640, 8, 9, CAST(N'2018-12-05T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (641, 8, 8, CAST(N'2018-12-25T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (642, 2, 2, CAST(N'2018-12-30T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (643, 5, 5, CAST(N'2018-12-29T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (644, 4, 4, CAST(N'2018-12-19T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (645, 7, 7, CAST(N'2018-12-23T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (646, 1, 1, CAST(N'2018-12-23T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (647, 8, 9, CAST(N'2018-12-24T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (648, 3, 3, CAST(N'2018-12-09T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (649, 2, 2, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (650, 5, 5, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (651, 8, 8, CAST(N'2018-12-13T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (652, 7, 7, CAST(N'2018-12-21T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (653, 1, 1, CAST(N'2018-12-02T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (654, 4, 4, CAST(N'2018-12-06T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (655, 3, 3, CAST(N'2018-12-08T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (656, 6, 6, CAST(N'2018-12-18T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (657, 4, 4, CAST(N'2018-12-11T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (658, 8, 8, CAST(N'2018-12-24T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (659, 2, 2, CAST(N'2018-12-05T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (660, 8, 9, CAST(N'2018-12-30T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (661, 4, 4, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (662, 7, 7, CAST(N'2018-12-22T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (663, 5, 5, CAST(N'2018-12-17T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (664, 8, 9, CAST(N'2018-12-27T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (665, 1, 1, CAST(N'2018-12-03T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
GO
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (666, 3, 3, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (667, 6, 6, CAST(N'2018-12-06T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (668, 1, 1, CAST(N'2018-12-11T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (669, 1, 1, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (670, 4, 4, CAST(N'2018-12-26T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (671, 7, 7, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (672, 6, 6, CAST(N'2018-12-21T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (673, 8, 9, CAST(N'2018-12-20T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (674, 3, 3, CAST(N'2018-12-20T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (675, 5, 5, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (676, 4, 4, CAST(N'2018-12-30T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (677, 6, 6, CAST(N'2018-12-19T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (678, 8, 8, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (679, 6, 6, CAST(N'2018-12-20T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (680, 4, 4, CAST(N'2018-12-20T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (681, 2, 2, CAST(N'2018-12-06T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (682, 8, 9, CAST(N'2018-12-28T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (683, 1, 1, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (684, 8, 9, CAST(N'2018-12-29T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (685, 3, 3, CAST(N'2018-12-10T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (686, 5, 5, CAST(N'2018-12-03T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (687, 8, 8, CAST(N'2018-12-26T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (688, 2, 2, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (689, 1, 1, CAST(N'2018-12-27T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (690, 8, 9, CAST(N'2018-12-03T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (691, 8, 8, CAST(N'2018-12-16T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (692, 5, 5, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (693, 7, 7, CAST(N'2018-12-10T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (694, 5, 5, CAST(N'2018-12-06T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (695, 3, 3, CAST(N'2018-12-13T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (696, 5, 5, CAST(N'2018-12-08T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (697, 8, 8, CAST(N'2018-12-29T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (698, 8, 8, CAST(N'2018-12-20T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (699, 4, 4, CAST(N'2018-12-13T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (700, 7, 7, CAST(N'2018-12-06T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (701, 5, 5, CAST(N'2018-12-16T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (702, 8, 8, CAST(N'2018-12-27T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (703, 2, 2, CAST(N'2018-12-06T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (704, 6, 6, CAST(N'2018-12-08T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (705, 4, 4, CAST(N'2018-12-18T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (706, 7, 7, CAST(N'2018-12-09T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (707, 1, 1, CAST(N'2018-12-22T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (708, 8, 9, CAST(N'2018-12-27T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (709, 3, 3, CAST(N'2018-12-17T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (710, 1, 1, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (711, 5, 5, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (712, 8, 9, CAST(N'2018-12-25T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (713, 7, 7, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (714, 1, 1, CAST(N'2018-12-26T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (715, 4, 4, CAST(N'2018-12-11T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (716, 6, 6, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (717, 4, 4, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (718, 8, 8, CAST(N'2018-12-23T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (719, 2, 2, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (720, 9, 10, CAST(N'2018-12-29T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (721, 4, 4, CAST(N'2018-12-10T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (722, 7, 7, CAST(N'2018-12-20T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (723, 5, 5, CAST(N'2018-12-13T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (724, 8, 9, CAST(N'2018-12-26T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (725, 7, 7, CAST(N'2018-12-21T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (726, 1, 1, CAST(N'2018-12-02T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (727, 5, 5, CAST(N'2018-12-09T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (728, 3, 3, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (729, 7, 7, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (730, 8, 9, CAST(N'2018-12-29T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (731, 2, 2, CAST(N'2018-12-24T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (732, 9, 10, CAST(N'2018-12-24T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (733, 4, 4, CAST(N'2018-12-22T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (734, 6, 6, CAST(N'2018-12-23T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (735, 9, 10, CAST(N'2018-12-28T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (736, 3, 3, CAST(N'2018-12-09T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (737, 2, 2, CAST(N'2018-12-21T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (738, 5, 5, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (739, 7, 7, CAST(N'2018-12-08T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (740, 1, 1, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (741, 6, 6, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (742, 8, 8, CAST(N'2018-12-24T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (743, 7, 7, CAST(N'2018-12-10T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (744, 9, 10, CAST(N'2018-12-25T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (745, 2, 2, CAST(N'2018-12-05T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (746, 6, 6, CAST(N'2018-12-16T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (747, 8, 9, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (748, 8, 8, CAST(N'2018-12-22T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (749, 1, 1, CAST(N'2018-12-03T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (750, 3, 3, CAST(N'2018-12-08T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (751, 7, 7, CAST(N'2018-12-19T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (752, 5, 5, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (753, 1, 1, CAST(N'2018-12-25T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (754, 4, 4, CAST(N'2018-12-24T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (755, 3, 3, CAST(N'2018-12-20T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (756, 6, 6, CAST(N'2018-12-09T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (757, 9, 10, CAST(N'2018-12-19T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (758, 8, 8, CAST(N'2018-12-02T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (759, 2, 2, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (760, 5, 5, CAST(N'2018-12-19T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (761, 6, 6, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (762, 1, 1, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (763, 5, 5, CAST(N'2018-12-28T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (764, 7, 7, CAST(N'2018-12-23T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (765, 9, 10, CAST(N'2018-12-22T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
GO
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (766, 6, 6, CAST(N'2018-12-17T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (767, 9, 10, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (768, 5, 5, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (769, 8, 9, CAST(N'2018-12-08T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (770, 1, 1, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (771, 3, 3, CAST(N'2018-12-21T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (772, 6, 6, CAST(N'2018-12-18T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (773, 8, 8, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (774, 9, 10, CAST(N'2018-12-10T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[HoaDonTinhCuoc] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (1, N'NGUYỄN NGỌC HUỲNH NHƯ', N'25454976', N'Bán Hàng', N'Nhân viên', N'huynhnhu@gmail.com                                                                                                                                                                                      ', N'30/32 - NGUYỄN BỈNH KHIÊM - P.1 - GÒ VẤP - TP HCM', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (2, N'ĐÀO VĂN PHÚC', N'25446098', N'Nội Trợ', N'Nhân viên', N'vanphuc@gmail.com                                                                                                                                                                                       ', N'58/647, NGUYỄN OANH, P.17, GÒ VẤP', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (3, N'CTY TNHH TM DV VẬN TẢI DƯƠNG THÀNH', N'25433339', N'Nhân viên', N'Kinh Doanh', N'duongthanh@gmail.com                                                                                                                                                                                    ', N'46/1, HÙNG VƯƠNG, P.1, Q.10', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (4, N'PHẠM THỊ VÂN KHÁNH', N'25488912', N'Giảng Viên', N'Nhân viên', N'vankhanh@gmail.com                                                                                                                                                                                      ', N'326, NGUYỄN CHÍ THANH, P.5, Q.10', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (5, N'TRỊNH THỊ HỒNG', N'25494671', N'Sinh Viên', N'Nhân viên', N'thihong@gmail.com                                                                                                                                                                                       ', N'161/3F, HÙNG VƯƠNG, P.6, Q.06', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (6, N'NGUYỄN THANH THẠCH', N'25450784', N'Văn Phòng', N'Nhân viên', N'thanhthach@gmail.com                                                                                                                                                                                    ', N'20, KHU 1, TÂN SƠN NHÌ, TÂN SƠN NHÌ, TÂN PHÚ', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (7, N'VÕ THANH BÌNH', N'25458659', N'Bán Hàng', N'Nhân viên', N'thanhbinh@gmail.com                                                                                                                                                                                     ', N'232/6, VÕ THỊ SÁU, P.7, Q.03', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (8, N'LÊ THỊ THU CÚC', N'25423812', N'Sinh Viên', N'Nhân viên', N'thucuc@gmail.com                                                                                                                                                                                        ', N'338A,NƠ TRANG LONG, P.13, BÌNH THẠNH', 1)
INSERT [dbo].[KhachHang] ([KhachHangID], [TenKH], [CMND], [NgheNghiep], [ChucVu], [Email], [DiaChi], [Flag]) VALUES (9, N'NGUYỄN TRUNG', N'777777777', N'Sinh Vien', N'Sinh Vien', N'trungnguyen@gmail.com                                                                                                                                                                                   ', N'12 Phố Cổ', 1)
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
ALTER TABLE [dbo].[HoaDonTinhCuoc] ADD  CONSTRAINT [DF__HoaDonTin__CuocT__412EB0B6]  DEFAULT ((50000)) FOR [CuocThueBao]
GO
ALTER TABLE [dbo].[ChitietHDTC]  WITH CHECK ADD  CONSTRAINT [FK__ChitietHD__SIMID__440B1D61] FOREIGN KEY([SIMID])
REFERENCES [dbo].[SIM] ([SIMID])
GO
ALTER TABLE [dbo].[ChitietHDTC] CHECK CONSTRAINT [FK__ChitietHD__SIMID__440B1D61]
GO
ALTER TABLE [dbo].[ChitietHDTC]  WITH CHECK ADD  CONSTRAINT [FK_ChitietHDTC_HoaDonTinhCuoc] FOREIGN KEY([HoaDonTinhCuocID])
REFERENCES [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID])
GO
ALTER TABLE [dbo].[ChitietHDTC] CHECK CONSTRAINT [FK_ChitietHDTC_HoaDonTinhCuoc]
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
