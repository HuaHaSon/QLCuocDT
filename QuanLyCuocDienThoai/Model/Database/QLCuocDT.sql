
CREATE DATABASE QLCuocDT
go
USE [QLCuocDT]
GO
/****** Object:  Table [dbo].[ChitietHDTC]    Script Date: 27/11/2018 10:05:15 PM ******/
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
/****** Object:  Table [dbo].[FileLogSIM]    Script Date: 27/11/2018 10:05:15 PM ******/
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
/****** Object:  Table [dbo].[GiaCuoc]    Script Date: 27/11/2018 10:05:15 PM ******/
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
/****** Object:  Table [dbo].[HoaDonDangKy]    Script Date: 27/11/2018 10:05:15 PM ******/
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
/****** Object:  Table [dbo].[HoaDonTinhCuoc]    Script Date: 27/11/2018 10:05:15 PM ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 27/11/2018 10:05:15 PM ******/
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
/****** Object:  Table [dbo].[SIM]    Script Date: 27/11/2018 10:05:15 PM ******/
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
SET IDENTITY_INSERT [dbo].[ChitietHDTC] OFF
SET IDENTITY_INSERT [dbo].[FileLogSIM] ON 

INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (801, 7, CAST(N'2018-12-22T13:35:38.000' AS DateTime), CAST(N'2018-12-22T19:48:27.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (802, 5, CAST(N'2018-12-14T09:58:28.000' AS DateTime), CAST(N'2018-12-14T21:52:37.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (803, 8, CAST(N'2018-12-25T13:23:42.000' AS DateTime), CAST(N'2018-12-25T20:02:38.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (804, 6, CAST(N'2018-12-20T01:35:28.000' AS DateTime), CAST(N'2018-12-20T23:45:10.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (805, 1, CAST(N'2018-12-01T05:00:42.000' AS DateTime), CAST(N'2018-12-01T23:55:12.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (806, 8, CAST(N'2018-12-27T01:28:54.000' AS DateTime), CAST(N'2018-12-27T02:04:58.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (807, 2, CAST(N'2018-12-06T15:13:21.000' AS DateTime), CAST(N'2018-12-06T23:02:24.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (808, 6, CAST(N'2018-12-01T13:17:45.000' AS DateTime), CAST(N'2018-12-01T21:52:24.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (809, 4, CAST(N'2018-12-04T20:59:49.000' AS DateTime), CAST(N'2018-12-04T23:21:42.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (810, 7, CAST(N'2018-12-30T06:54:40.000' AS DateTime), CAST(N'2018-12-30T10:56:45.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (811, 2, CAST(N'2018-12-30T01:24:40.000' AS DateTime), CAST(N'2018-12-30T17:08:45.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (812, 9, CAST(N'2018-12-25T03:07:58.000' AS DateTime), CAST(N'2018-12-25T13:38:07.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (813, 3, CAST(N'2018-12-20T15:37:17.000' AS DateTime), CAST(N'2018-12-20T16:40:57.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (814, 2, CAST(N'2018-12-05T02:53:54.000' AS DateTime), CAST(N'2018-12-05T07:39:26.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (815, 5, CAST(N'2018-12-16T06:18:07.000' AS DateTime), CAST(N'2018-12-16T06:49:27.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (816, 8, CAST(N'2018-12-11T19:34:26.000' AS DateTime), CAST(N'2018-12-11T22:57:08.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (817, 7, CAST(N'2018-12-21T05:23:26.000' AS DateTime), CAST(N'2018-12-21T15:29:23.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (818, 1, CAST(N'2018-12-03T03:20:21.000' AS DateTime), CAST(N'2018-12-03T08:53:02.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (819, 4, CAST(N'2018-12-13T07:45:34.000' AS DateTime), CAST(N'2018-12-13T08:03:04.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (820, 3, CAST(N'2018-12-09T05:42:54.000' AS DateTime), CAST(N'2018-12-09T13:08:11.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (821, 6, CAST(N'2018-12-09T00:11:54.000' AS DateTime), CAST(N'2018-12-09T21:20:10.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (822, 5, CAST(N'2018-12-14T11:34:20.000' AS DateTime), CAST(N'2018-12-14T13:39:08.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (823, 8, CAST(N'2018-12-27T01:06:40.000' AS DateTime), CAST(N'2018-12-27T14:18:07.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (824, 2, CAST(N'2018-12-28T04:58:03.000' AS DateTime), CAST(N'2018-12-28T14:04:48.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (825, 1, CAST(N'2018-12-01T07:36:33.000' AS DateTime), CAST(N'2018-12-01T14:43:43.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (826, 4, CAST(N'2018-12-12T12:01:47.000' AS DateTime), CAST(N'2018-12-12T14:53:45.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (827, 7, CAST(N'2018-12-28T06:35:31.000' AS DateTime), CAST(N'2018-12-28T19:08:52.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (828, 6, CAST(N'2018-12-18T04:38:47.000' AS DateTime), CAST(N'2018-12-18T16:46:18.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (829, 9, CAST(N'2018-12-28T08:03:00.000' AS DateTime), CAST(N'2018-12-28T16:57:20.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (830, 7, CAST(N'2018-12-18T03:29:09.000' AS DateTime), CAST(N'2018-12-18T17:20:36.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (831, 2, CAST(N'2018-12-04T00:40:00.000' AS DateTime), CAST(N'2018-12-04T18:50:53.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (832, 5, CAST(N'2018-12-15T05:05:13.000' AS DateTime), CAST(N'2018-12-15T17:00:54.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (833, 3, CAST(N'2018-12-10T16:17:00.000' AS DateTime), CAST(N'2018-12-10T20:43:26.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (834, 7, CAST(N'2018-12-15T10:23:47.000' AS DateTime), CAST(N'2018-12-15T21:26:18.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (835, 1, CAST(N'2018-12-02T01:07:26.000' AS DateTime), CAST(N'2018-12-02T19:04:29.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (836, 8, CAST(N'2018-12-27T13:19:13.000' AS DateTime), CAST(N'2018-12-27T22:47:01.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (837, 3, CAST(N'2018-12-07T17:44:26.000' AS DateTime), CAST(N'2018-12-07T21:57:02.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (838, 1, CAST(N'2018-12-02T05:05:05.000' AS DateTime), CAST(N'2018-12-02T18:49:40.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (839, 4, CAST(N'2018-12-13T09:21:26.000' AS DateTime), CAST(N'2018-12-13T23:50:35.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (840, 8, CAST(N'2018-12-24T14:46:39.000' AS DateTime), CAST(N'2018-12-24T23:01:37.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (841, 6, CAST(N'2018-12-19T01:58:26.000' AS DateTime), CAST(N'2018-12-19T02:44:08.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (842, 9, CAST(N'2018-12-02T02:18:25.000' AS DateTime), CAST(N'2018-12-02T12:54:16.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (843, 4, CAST(N'2018-12-25T10:45:23.000' AS DateTime), CAST(N'2018-12-25T20:07:00.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (844, 2, CAST(N'2018-12-21T11:28:42.000' AS DateTime), CAST(N'2018-12-21T16:37:22.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (845, 5, CAST(N'2018-12-16T02:24:52.000' AS DateTime), CAST(N'2018-12-16T03:57:45.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (846, 4, CAST(N'2018-12-16T07:40:00.000' AS DateTime), CAST(N'2018-12-16T19:19:44.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (847, 7, CAST(N'2018-12-16T02:10:00.000' AS DateTime), CAST(N'2018-12-16T03:31:43.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (848, 1, CAST(N'2018-12-17T08:11:52.000' AS DateTime), CAST(N'2018-12-17T14:27:49.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (849, 9, CAST(N'2018-12-06T04:05:25.000' AS DateTime), CAST(N'2018-12-06T19:40:18.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (850, 3, CAST(N'2018-12-18T04:11:00.000' AS DateTime), CAST(N'2018-12-18T05:41:38.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (851, 6, CAST(N'2018-12-09T12:21:19.000' AS DateTime), CAST(N'2018-12-09T21:37:04.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (852, 5, CAST(N'2018-12-15T07:40:05.000' AS DateTime), CAST(N'2018-12-15T09:48:26.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (853, 8, CAST(N'2018-12-10T11:23:14.000' AS DateTime), CAST(N'2018-12-10T18:38:03.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (854, 7, CAST(N'2018-12-30T10:15:56.000' AS DateTime), CAST(N'2018-12-30T20:49:48.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (855, 1, CAST(N'2018-12-01T03:42:18.000' AS DateTime), CAST(N'2018-12-01T11:51:01.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (856, 4, CAST(N'2018-12-12T07:07:32.000' AS DateTime), CAST(N'2018-12-12T10:01:02.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (857, 3, CAST(N'2018-12-25T01:57:15.000' AS DateTime), CAST(N'2018-12-25T06:43:09.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (858, 6, CAST(N'2018-12-04T13:35:36.000' AS DateTime), CAST(N'2018-12-04T21:49:18.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (859, 9, CAST(N'2018-12-29T04:09:45.000' AS DateTime), CAST(N'2018-12-29T12:05:37.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (860, 8, CAST(N'2018-12-19T16:39:34.000' AS DateTime), CAST(N'2018-12-19T17:37:30.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (861, 2, CAST(N'2018-12-05T10:20:27.000' AS DateTime), CAST(N'2018-12-05T17:33:30.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (862, 9, CAST(N'2018-12-30T08:58:31.000' AS DateTime), CAST(N'2018-12-30T17:42:42.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (863, 4, CAST(N'2018-12-11T12:23:44.000' AS DateTime), CAST(N'2018-12-11T17:52:43.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (864, 7, CAST(N'2018-12-13T02:50:52.000' AS DateTime), CAST(N'2018-12-13T12:43:51.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (865, 5, CAST(N'2018-12-16T04:00:44.000' AS DateTime), CAST(N'2018-12-16T19:45:16.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (866, 8, CAST(N'2018-12-27T08:25:58.000' AS DateTime), CAST(N'2018-12-27T18:55:18.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (867, 3, CAST(N'2018-12-08T13:50:11.000' AS DateTime), CAST(N'2018-12-08T18:05:20.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (868, 1, CAST(N'2018-12-03T00:02:57.000' AS DateTime), CAST(N'2018-12-03T21:49:51.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (869, 4, CAST(N'2018-12-14T05:27:11.000' AS DateTime), CAST(N'2018-12-14T20:59:53.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (870, 3, CAST(N'2018-12-09T17:39:57.000' AS DateTime), CAST(N'2018-12-09T23:42:24.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (871, 6, CAST(N'2018-12-20T21:04:10.000' AS DateTime), CAST(N'2018-12-20T22:52:26.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (872, 9, CAST(N'2018-12-30T01:29:24.000' AS DateTime), CAST(N'2018-12-30T22:02:27.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (873, 8, CAST(N'2018-12-22T05:08:07.000' AS DateTime), CAST(N'2018-12-22T08:42:17.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (874, 2, CAST(N'2018-12-22T00:37:07.000' AS DateTime), CAST(N'2018-12-22T16:54:16.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (875, 5, CAST(N'2018-12-18T06:31:40.000' AS DateTime), CAST(N'2018-12-18T09:42:45.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (876, 4, CAST(N'2018-12-08T04:23:56.000' AS DateTime), CAST(N'2018-12-08T19:18:28.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (877, 7, CAST(N'2018-12-29T14:35:04.000' AS DateTime), CAST(N'2018-12-29T18:00:04.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (878, 6, CAST(N'2018-12-18T02:20:23.000' AS DateTime), CAST(N'2018-12-18T04:42:07.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (879, 9, CAST(N'2018-12-11T17:27:35.000' AS DateTime), CAST(N'2018-12-11T20:30:34.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (880, 3, CAST(N'2018-12-11T06:01:44.000' AS DateTime), CAST(N'2018-12-11T13:42:59.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (881, 2, CAST(N'2018-12-06T07:43:03.000' AS DateTime), CAST(N'2018-12-06T09:12:21.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (882, 5, CAST(N'2018-12-15T02:47:50.000' AS DateTime), CAST(N'2018-12-15T06:56:43.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (883, 8, CAST(N'2018-12-15T03:59:33.000' AS DateTime), CAST(N'2018-12-15T19:54:54.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (884, 7, CAST(N'2018-12-11T02:46:37.000' AS DateTime), CAST(N'2018-12-11T20:05:04.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (885, 1, CAST(N'2018-12-03T05:19:29.000' AS DateTime), CAST(N'2018-12-03T21:48:16.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (886, 8, CAST(N'2018-12-27T10:01:49.000' AS DateTime), CAST(N'2018-12-27T10:43:49.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (887, 3, CAST(N'2018-12-29T12:53:36.000' AS DateTime), CAST(N'2018-12-29T16:26:26.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (888, 6, CAST(N'2018-12-25T08:36:40.000' AS DateTime), CAST(N'2018-12-25T14:12:03.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (889, 4, CAST(N'2018-12-14T07:03:03.000' AS DateTime), CAST(N'2018-12-14T12:46:24.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (890, 8, CAST(N'2018-12-24T11:28:16.000' AS DateTime), CAST(N'2018-12-24T11:56:26.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (891, 2, CAST(N'2018-12-06T05:25:52.000' AS DateTime), CAST(N'2018-12-06T12:49:13.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (892, 9, CAST(N'2018-12-30T03:05:16.000' AS DateTime), CAST(N'2018-12-30T14:50:59.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (893, 4, CAST(N'2018-12-11T08:29:29.000' AS DateTime), CAST(N'2018-12-11T13:00:01.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (894, 2, CAST(N'2018-12-10T21:12:36.000' AS DateTime), CAST(N'2018-12-10T23:18:07.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (895, 5, CAST(N'2018-12-17T00:06:29.000' AS DateTime), CAST(N'2018-12-17T15:53:34.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (896, 9, CAST(N'2018-12-28T04:31:42.000' AS DateTime), CAST(N'2018-12-28T15:03:35.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (897, 7, CAST(N'2018-12-23T16:43:29.000' AS DateTime), CAST(N'2018-12-23T18:47:07.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (898, 1, CAST(N'2018-12-04T07:23:54.000' AS DateTime), CAST(N'2018-12-04T18:24:28.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (899, 5, CAST(N'2018-12-14T01:33:56.000' AS DateTime), CAST(N'2018-12-14T17:07:10.000' AS DateTime))
GO
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (900, 3, CAST(N'2018-12-09T12:45:42.000' AS DateTime), CAST(N'2018-12-09T19:50:42.000' AS DateTime))
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
