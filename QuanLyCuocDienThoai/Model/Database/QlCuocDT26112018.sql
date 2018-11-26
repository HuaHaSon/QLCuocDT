USE [QLCuocDT]
GO
/****** Object:  Table [dbo].[ChitietHDTC]    Script Date: 26/11/2018 9:57:07 PM ******/
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
/****** Object:  Table [dbo].[FileLogSIM]    Script Date: 26/11/2018 9:57:07 PM ******/
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
/****** Object:  Table [dbo].[GiaCuoc]    Script Date: 26/11/2018 9:57:07 PM ******/
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
/****** Object:  Table [dbo].[HoaDonDangKy]    Script Date: 26/11/2018 9:57:07 PM ******/
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
/****** Object:  Table [dbo].[HoaDonTinhCuoc]    Script Date: 26/11/2018 9:57:07 PM ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 26/11/2018 9:57:08 PM ******/
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
/****** Object:  Table [dbo].[SIM]    Script Date: 26/11/2018 9:57:08 PM ******/
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

INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (430, 8, CAST(N'2018-12-18T00:00:00.000' AS DateTime), CAST(N'2018-12-18T18:56:09.000' AS DateTime), 56, 153, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (431, 9, CAST(N'2018-12-29T00:00:00.000' AS DateTime), CAST(N'2018-12-29T18:13:02.000' AS DateTime), 13, 154, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (432, 9, CAST(N'2018-12-29T00:00:00.000' AS DateTime), CAST(N'2018-12-29T14:21:20.000' AS DateTime), 21, 154, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (433, 9, CAST(N'2018-12-29T00:00:00.000' AS DateTime), CAST(N'2018-12-29T13:33:33.000' AS DateTime), 33, 154, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (434, 7, CAST(N'2018-12-29T00:00:00.000' AS DateTime), CAST(N'2018-12-29T18:13:02.000' AS DateTime), 13, 155, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (435, 7, CAST(N'2018-12-24T00:00:00.000' AS DateTime), CAST(N'2018-12-24T20:56:34.000' AS DateTime), 56, 156, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (436, 2, CAST(N'2018-12-05T00:00:00.000' AS DateTime), CAST(N'2018-12-05T20:06:36.000' AS DateTime), 6, 157, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (437, 2, CAST(N'2018-12-05T00:00:00.000' AS DateTime), CAST(N'2018-12-05T17:15:53.000' AS DateTime), 15, 157, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (438, 2, CAST(N'2018-12-05T00:00:00.000' AS DateTime), CAST(N'2018-12-05T08:02:25.000' AS DateTime), 2, 157, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (439, 5, CAST(N'2018-12-15T00:00:00.000' AS DateTime), CAST(N'2018-12-15T19:17:37.000' AS DateTime), 17, 158, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (440, 5, CAST(N'2018-12-15T00:00:00.000' AS DateTime), CAST(N'2018-12-15T19:24:53.000' AS DateTime), 24, 158, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (441, 3, CAST(N'2018-12-10T00:00:00.000' AS DateTime), CAST(N'2018-12-10T22:00:09.000' AS DateTime), 0, 159, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (442, 3, CAST(N'2018-12-10T00:00:00.000' AS DateTime), CAST(N'2018-12-10T19:29:42.000' AS DateTime), 29, 159, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (443, 7, CAST(N'2018-12-21T00:00:00.000' AS DateTime), CAST(N'2018-12-21T22:10:10.000' AS DateTime), 10, 160, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (444, 7, CAST(N'2018-12-21T00:00:00.000' AS DateTime), CAST(N'2018-12-21T13:58:42.000' AS DateTime), 58, 160, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (445, 7, CAST(N'2018-12-21T00:00:00.000' AS DateTime), CAST(N'2018-12-21T21:17:26.000' AS DateTime), 17, 160, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (446, 1, CAST(N'2018-12-02T00:00:00.000' AS DateTime), CAST(N'2018-12-02T21:20:12.000' AS DateTime), 20, 161, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (447, 1, CAST(N'2018-12-02T00:00:00.000' AS DateTime), CAST(N'2018-12-02T13:08:44.000' AS DateTime), 8, 161, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (448, 1, CAST(N'2018-12-02T00:00:00.000' AS DateTime), CAST(N'2018-12-02T10:16:01.000' AS DateTime), 16, 161, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (449, 8, CAST(N'2018-12-30T00:00:00.000' AS DateTime), CAST(N'2018-12-30T17:18:19.000' AS DateTime), 18, 162, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (450, 8, CAST(N'2018-12-30T00:00:00.000' AS DateTime), CAST(N'2018-12-30T17:33:28.000' AS DateTime), 33, 162, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (451, 3, CAST(N'2018-12-08T00:00:00.000' AS DateTime), CAST(N'2018-12-08T23:14:45.000' AS DateTime), 14, 163, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (452, 3, CAST(N'2018-12-08T00:00:00.000' AS DateTime), CAST(N'2018-12-08T15:01:17.000' AS DateTime), 1, 163, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (453, 3, CAST(N'2018-12-08T00:00:00.000' AS DateTime), CAST(N'2018-12-08T12:09:34.000' AS DateTime), 9, 163, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (454, 1, CAST(N'2018-12-04T00:00:00.000' AS DateTime), CAST(N'2018-12-04T20:07:08.000' AS DateTime), 7, 164, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (455, 4, CAST(N'2018-12-10T00:00:00.000' AS DateTime), CAST(N'2018-12-10T21:43:49.000' AS DateTime), 43, 165, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (456, 4, CAST(N'2018-12-10T00:00:00.000' AS DateTime), CAST(N'2018-12-10T16:17:41.000' AS DateTime), 17, 165, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (457, 8, CAST(N'2018-12-03T00:00:00.000' AS DateTime), CAST(N'2018-12-03T11:31:07.000' AS DateTime), 31, 166, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (458, 6, CAST(N'2018-12-23T00:00:00.000' AS DateTime), CAST(N'2018-12-23T21:29:34.000' AS DateTime), 29, 167, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (459, 9, CAST(N'2018-12-28T00:00:00.000' AS DateTime), CAST(N'2018-12-28T14:13:29.000' AS DateTime), 13, 168, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (460, 9, CAST(N'2018-12-28T00:00:00.000' AS DateTime), CAST(N'2018-12-28T20:12:01.000' AS DateTime), 12, 168, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (461, 9, CAST(N'2018-12-28T00:00:00.000' AS DateTime), CAST(N'2018-12-28T17:20:18.000' AS DateTime), 20, 168, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (462, 4, CAST(N'2018-12-27T00:00:00.000' AS DateTime), CAST(N'2018-12-27T22:25:28.000' AS DateTime), 25, 169, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (463, 2, CAST(N'2018-12-23T00:00:00.000' AS DateTime), CAST(N'2018-12-23T17:55:50.000' AS DateTime), 55, 170, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (464, 5, CAST(N'2018-12-08T00:00:00.000' AS DateTime), CAST(N'2018-12-08T07:08:35.000' AS DateTime), 8, 171, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (465, 5, CAST(N'2018-12-08T00:00:00.000' AS DateTime), CAST(N'2018-12-08T18:42:48.000' AS DateTime), 42, 171, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (466, 5, CAST(N'2018-12-08T00:00:00.000' AS DateTime), CAST(N'2018-12-08T18:59:42.000' AS DateTime), 59, 171, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (467, 4, CAST(N'2018-12-17T00:00:00.000' AS DateTime), CAST(N'2018-12-17T20:42:20.000' AS DateTime), 42, 172, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (468, 7, CAST(N'2018-12-23T00:00:00.000' AS DateTime), CAST(N'2018-12-23T07:07:01.000' AS DateTime), 7, 173, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (469, 7, CAST(N'2018-12-23T00:00:00.000' AS DateTime), CAST(N'2018-12-23T20:03:50.000' AS DateTime), 3, 173, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (470, 1, CAST(N'2018-12-17T00:00:00.000' AS DateTime), CAST(N'2018-12-17T12:01:11.000' AS DateTime), 1, 174, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (471, 9, CAST(N'2018-12-15T00:00:00.000' AS DateTime), CAST(N'2018-12-15T19:49:23.000' AS DateTime), 49, 175, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (472, 3, CAST(N'2018-12-09T00:00:00.000' AS DateTime), CAST(N'2018-12-09T09:11:36.000' AS DateTime), 11, 176, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (473, 6, CAST(N'2018-12-20T00:00:00.000' AS DateTime), CAST(N'2018-12-20T09:21:37.000' AS DateTime), 21, 177, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (474, 6, CAST(N'2018-12-20T00:00:00.000' AS DateTime), CAST(N'2018-12-20T13:05:58.000' AS DateTime), 5, 177, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (475, 5, CAST(N'2018-12-07T00:00:00.000' AS DateTime), CAST(N'2018-12-07T18:25:54.000' AS DateTime), 25, 178, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (476, 8, CAST(N'2018-12-24T00:00:00.000' AS DateTime), CAST(N'2018-12-24T23:16:15.000' AS DateTime), 16, 179, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (477, 8, CAST(N'2018-12-24T00:00:00.000' AS DateTime), CAST(N'2018-12-24T17:05:51.000' AS DateTime), 5, 179, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (478, 6, CAST(N'2018-12-18T00:00:00.000' AS DateTime), CAST(N'2018-12-18T15:11:18.000' AS DateTime), 11, 180, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (479, 6, CAST(N'2018-12-18T00:00:00.000' AS DateTime), CAST(N'2018-12-18T14:18:34.000' AS DateTime), 18, 180, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (480, 9, CAST(N'2018-12-30T00:00:00.000' AS DateTime), CAST(N'2018-12-30T19:58:25.000' AS DateTime), 58, 181, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (481, 4, CAST(N'2018-12-04T00:00:00.000' AS DateTime), CAST(N'2018-12-04T10:56:44.000' AS DateTime), 56, 182, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (482, 4, CAST(N'2018-12-04T00:00:00.000' AS DateTime), CAST(N'2018-12-04T13:29:04.000' AS DateTime), 29, 182, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (483, 7, CAST(N'2018-12-22T00:00:00.000' AS DateTime), CAST(N'2018-12-22T18:18:28.000' AS DateTime), 18, 183, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (484, 7, CAST(N'2018-12-22T00:00:00.000' AS DateTime), CAST(N'2018-12-22T10:06:59.000' AS DateTime), 6, 183, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (485, 5, CAST(N'2018-12-17T00:00:00.000' AS DateTime), CAST(N'2018-12-17T21:02:59.000' AS DateTime), 2, 184, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (486, 3, CAST(N'2018-12-26T00:00:00.000' AS DateTime), CAST(N'2018-12-26T17:17:45.000' AS DateTime), 17, 185, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (487, 1, CAST(N'2018-12-03T00:00:00.000' AS DateTime), CAST(N'2018-12-03T23:05:34.000' AS DateTime), 5, 186, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (488, 1, CAST(N'2018-12-03T00:00:00.000' AS DateTime), CAST(N'2018-12-03T06:24:18.000' AS DateTime), 24, 186, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (489, 5, CAST(N'2018-12-14T00:00:00.000' AS DateTime), CAST(N'2018-12-14T22:15:36.000' AS DateTime), 15, 187, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (490, 3, CAST(N'2018-12-30T00:00:00.000' AS DateTime), CAST(N'2018-12-30T23:06:23.000' AS DateTime), 6, 188, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (491, 6, CAST(N'2018-12-28T00:00:00.000' AS DateTime), CAST(N'2018-12-28T22:45:25.000' AS DateTime), 45, 189, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (492, 1, CAST(N'2018-12-20T00:00:00.000' AS DateTime), CAST(N'2018-12-20T20:27:00.000' AS DateTime), 27, 190, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (493, 1, CAST(N'2018-12-20T00:00:00.000' AS DateTime), CAST(N'2018-12-20T13:59:00.000' AS DateTime), 59, 190, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (494, 8, CAST(N'2018-12-27T00:00:00.000' AS DateTime), CAST(N'2018-12-27T17:30:29.000' AS DateTime), 30, 191, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (495, 2, CAST(N'2018-12-24T00:00:00.000' AS DateTime), CAST(N'2018-12-24T17:12:44.000' AS DateTime), 12, 192, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (496, 6, CAST(N'2018-12-22T00:00:00.000' AS DateTime), CAST(N'2018-12-22T13:08:29.000' AS DateTime), 8, 193, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (497, 4, CAST(N'2018-12-19T00:00:00.000' AS DateTime), CAST(N'2018-12-19T20:54:06.000' AS DateTime), 54, 194, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (498, 7, CAST(N'2018-12-13T00:00:00.000' AS DateTime), CAST(N'2018-12-13T23:38:15.000' AS DateTime), 38, 195, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (499, 6, CAST(N'2018-12-14T00:00:00.000' AS DateTime), CAST(N'2018-12-14T23:36:27.000' AS DateTime), 36, 196, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (500, 9, CAST(N'2018-12-13T00:00:00.000' AS DateTime), CAST(N'2018-12-13T07:48:27.000' AS DateTime), 48, 197, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (501, 9, CAST(N'2018-12-13T00:00:00.000' AS DateTime), CAST(N'2018-12-13T09:34:00.000' AS DateTime), 34, 197, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (502, 3, CAST(N'2018-12-03T00:00:00.000' AS DateTime), CAST(N'2018-12-03T17:30:47.000' AS DateTime), 30, 198, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (503, 6, CAST(N'2018-12-19T00:00:00.000' AS DateTime), CAST(N'2018-12-19T11:20:36.000' AS DateTime), 20, 199, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (504, 5, CAST(N'2018-12-02T00:00:00.000' AS DateTime), CAST(N'2018-12-02T21:15:35.000' AS DateTime), 15, 200, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (505, 8, CAST(N'2018-12-22T00:00:00.000' AS DateTime), CAST(N'2018-12-22T19:12:52.000' AS DateTime), 12, 201, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (506, 8, CAST(N'2018-12-22T00:00:00.000' AS DateTime), CAST(N'2018-12-22T19:29:46.000' AS DateTime), 29, 201, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (507, 2, CAST(N'2018-12-06T00:00:00.000' AS DateTime), CAST(N'2018-12-06T13:23:10.000' AS DateTime), 23, 202, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (508, 2, CAST(N'2018-12-06T00:00:00.000' AS DateTime), CAST(N'2018-12-06T05:11:42.000' AS DateTime), 11, 202, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (509, 1, CAST(N'2018-12-01T00:00:00.000' AS DateTime), CAST(N'2018-12-01T16:06:42.000' AS DateTime), 6, 203, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (510, 1, CAST(N'2018-12-01T00:00:00.000' AS DateTime), CAST(N'2018-12-01T12:15:59.000' AS DateTime), 15, 203, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (511, 4, CAST(N'2018-12-18T00:00:00.000' AS DateTime), CAST(N'2018-12-18T19:03:56.000' AS DateTime), 3, 204, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (512, 2, CAST(N'2018-12-07T00:00:00.000' AS DateTime), CAST(N'2018-12-07T18:00:15.000' AS DateTime), 0, 205, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (513, 2, CAST(N'2018-12-07T00:00:00.000' AS DateTime), CAST(N'2018-12-07T14:08:32.000' AS DateTime), 8, 205, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (514, 6, CAST(N'2018-12-17T00:00:00.000' AS DateTime), CAST(N'2018-12-17T17:10:17.000' AS DateTime), 10, 206, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (515, 2, CAST(N'2018-12-04T00:00:00.000' AS DateTime), CAST(N'2018-12-04T19:13:51.000' AS DateTime), 13, 207, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (516, 2, CAST(N'2018-12-04T00:00:00.000' AS DateTime), CAST(N'2018-12-04T11:01:23.000' AS DateTime), 1, 207, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (517, 3, CAST(N'2018-12-01T00:00:00.000' AS DateTime), CAST(N'2018-12-01T23:23:17.000' AS DateTime), 23, 208, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (518, 5, CAST(N'2018-12-12T00:00:00.000' AS DateTime), CAST(N'2018-12-12T16:33:30.000' AS DateTime), 33, 209, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (519, 8, CAST(N'2018-12-26T00:00:00.000' AS DateTime), CAST(N'2018-12-26T23:10:59.000' AS DateTime), 10, 210, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (520, 3, CAST(N'2018-12-07T00:00:00.000' AS DateTime), CAST(N'2018-12-07T23:20:01.000' AS DateTime), 20, 211, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (521, 4, CAST(N'2018-12-11T00:00:00.000' AS DateTime), CAST(N'2018-12-11T09:01:18.000' AS DateTime), 1, 212, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (522, 7, CAST(N'2018-12-17T00:00:00.000' AS DateTime), CAST(N'2018-12-17T22:25:11.000' AS DateTime), 25, 213, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (523, 6, CAST(N'2018-12-15T00:00:00.000' AS DateTime), CAST(N'2018-12-15T23:53:21.000' AS DateTime), 53, 214, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (524, 9, CAST(N'2018-12-19T00:00:00.000' AS DateTime), CAST(N'2018-12-19T16:09:56.000' AS DateTime), 9, 215, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (525, 8, CAST(N'2018-12-17T00:00:00.000' AS DateTime), CAST(N'2018-12-17T05:53:44.000' AS DateTime), 53, 216, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (526, 7, CAST(N'2018-12-03T00:00:00.000' AS DateTime), CAST(N'2018-12-03T21:41:04.000' AS DateTime), 41, 217, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (527, 5, CAST(N'2018-12-06T00:00:00.000' AS DateTime), CAST(N'2018-12-06T22:30:26.000' AS DateTime), 30, 218, 1)
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (528, 4, CAST(N'2018-12-20T00:00:00.000' AS DateTime), CAST(N'2018-12-20T09:09:26.000' AS DateTime), 9, 219, 1)
GO
INSERT [dbo].[ChitietHDTC] ([ChitietHDTCID], [SIMID], [ThoiGianBD], [ThoiGianKT], [SoPhutSD], [HoaDonTinhCuocID], [Flag]) VALUES (529, 4, CAST(N'2018-12-13T00:00:00.000' AS DateTime), CAST(N'2018-12-13T17:01:06.000' AS DateTime), 1, 220, 1)
SET IDENTITY_INSERT [dbo].[ChitietHDTC] OFF
SET IDENTITY_INSERT [dbo].[FileLogSIM] ON 

INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (201, 8, CAST(N'2018-12-18T00:00:00.000' AS DateTime), CAST(N'2018-12-18T18:56:09.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (202, 9, CAST(N'2018-12-29T00:00:00.000' AS DateTime), CAST(N'2018-12-29T18:13:02.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (203, 7, CAST(N'2018-12-29T00:00:00.000' AS DateTime), CAST(N'2018-12-29T18:13:02.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (204, 7, CAST(N'2018-12-24T00:00:00.000' AS DateTime), CAST(N'2018-12-24T20:56:34.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (205, 2, CAST(N'2018-12-05T00:00:00.000' AS DateTime), CAST(N'2018-12-05T20:06:36.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (206, 5, CAST(N'2018-12-15T00:00:00.000' AS DateTime), CAST(N'2018-12-15T19:17:37.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (207, 3, CAST(N'2018-12-10T00:00:00.000' AS DateTime), CAST(N'2018-12-10T22:00:09.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (208, 7, CAST(N'2018-12-21T00:00:00.000' AS DateTime), CAST(N'2018-12-21T22:10:10.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (209, 1, CAST(N'2018-12-02T00:00:00.000' AS DateTime), CAST(N'2018-12-02T21:20:12.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (210, 8, CAST(N'2018-12-30T00:00:00.000' AS DateTime), CAST(N'2018-12-30T17:18:19.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (211, 3, CAST(N'2018-12-08T00:00:00.000' AS DateTime), CAST(N'2018-12-08T23:14:45.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (212, 1, CAST(N'2018-12-04T00:00:00.000' AS DateTime), CAST(N'2018-12-04T20:07:08.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (213, 4, CAST(N'2018-12-10T00:00:00.000' AS DateTime), CAST(N'2018-12-10T21:43:49.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (214, 8, CAST(N'2018-12-03T00:00:00.000' AS DateTime), CAST(N'2018-12-03T11:31:07.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (215, 6, CAST(N'2018-12-23T00:00:00.000' AS DateTime), CAST(N'2018-12-23T21:29:34.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (216, 9, CAST(N'2018-12-28T00:00:00.000' AS DateTime), CAST(N'2018-12-28T14:13:29.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (217, 4, CAST(N'2018-12-27T00:00:00.000' AS DateTime), CAST(N'2018-12-27T22:25:28.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (218, 2, CAST(N'2018-12-23T00:00:00.000' AS DateTime), CAST(N'2018-12-23T17:55:50.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (219, 5, CAST(N'2018-12-08T00:00:00.000' AS DateTime), CAST(N'2018-12-08T07:08:35.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (220, 4, CAST(N'2018-12-17T00:00:00.000' AS DateTime), CAST(N'2018-12-17T20:42:20.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (221, 7, CAST(N'2018-12-23T00:00:00.000' AS DateTime), CAST(N'2018-12-23T07:07:01.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (222, 1, CAST(N'2018-12-17T00:00:00.000' AS DateTime), CAST(N'2018-12-17T12:01:11.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (223, 9, CAST(N'2018-12-15T00:00:00.000' AS DateTime), CAST(N'2018-12-15T19:49:23.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (224, 3, CAST(N'2018-12-09T00:00:00.000' AS DateTime), CAST(N'2018-12-09T09:11:36.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (225, 6, CAST(N'2018-12-20T00:00:00.000' AS DateTime), CAST(N'2018-12-20T09:21:37.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (226, 5, CAST(N'2018-12-07T00:00:00.000' AS DateTime), CAST(N'2018-12-07T18:25:54.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (227, 8, CAST(N'2018-12-24T00:00:00.000' AS DateTime), CAST(N'2018-12-24T23:16:15.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (228, 7, CAST(N'2018-12-21T00:00:00.000' AS DateTime), CAST(N'2018-12-21T13:58:42.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (229, 1, CAST(N'2018-12-02T00:00:00.000' AS DateTime), CAST(N'2018-12-02T13:08:44.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (230, 4, CAST(N'2018-12-10T00:00:00.000' AS DateTime), CAST(N'2018-12-10T16:17:41.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (231, 3, CAST(N'2018-12-08T00:00:00.000' AS DateTime), CAST(N'2018-12-08T15:01:17.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (232, 6, CAST(N'2018-12-18T00:00:00.000' AS DateTime), CAST(N'2018-12-18T15:11:18.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (233, 9, CAST(N'2018-12-29T00:00:00.000' AS DateTime), CAST(N'2018-12-29T14:21:20.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (234, 8, CAST(N'2018-12-24T00:00:00.000' AS DateTime), CAST(N'2018-12-24T17:05:51.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (235, 2, CAST(N'2018-12-05T00:00:00.000' AS DateTime), CAST(N'2018-12-05T17:15:53.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (236, 9, CAST(N'2018-12-30T00:00:00.000' AS DateTime), CAST(N'2018-12-30T19:58:25.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (237, 4, CAST(N'2018-12-04T00:00:00.000' AS DateTime), CAST(N'2018-12-04T10:56:44.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (238, 7, CAST(N'2018-12-22T00:00:00.000' AS DateTime), CAST(N'2018-12-22T18:18:28.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (239, 5, CAST(N'2018-12-17T00:00:00.000' AS DateTime), CAST(N'2018-12-17T21:02:59.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (240, 9, CAST(N'2018-12-28T00:00:00.000' AS DateTime), CAST(N'2018-12-28T20:12:01.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (241, 3, CAST(N'2018-12-26T00:00:00.000' AS DateTime), CAST(N'2018-12-26T17:17:45.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (242, 1, CAST(N'2018-12-03T00:00:00.000' AS DateTime), CAST(N'2018-12-03T23:05:34.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (243, 5, CAST(N'2018-12-14T00:00:00.000' AS DateTime), CAST(N'2018-12-14T22:15:36.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (244, 3, CAST(N'2018-12-30T00:00:00.000' AS DateTime), CAST(N'2018-12-30T23:06:23.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (245, 6, CAST(N'2018-12-28T00:00:00.000' AS DateTime), CAST(N'2018-12-28T22:45:25.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (246, 1, CAST(N'2018-12-20T00:00:00.000' AS DateTime), CAST(N'2018-12-20T20:27:00.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (247, 8, CAST(N'2018-12-27T00:00:00.000' AS DateTime), CAST(N'2018-12-27T17:30:29.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (248, 2, CAST(N'2018-12-24T00:00:00.000' AS DateTime), CAST(N'2018-12-24T17:12:44.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (249, 6, CAST(N'2018-12-22T00:00:00.000' AS DateTime), CAST(N'2018-12-22T13:08:29.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (250, 4, CAST(N'2018-12-19T00:00:00.000' AS DateTime), CAST(N'2018-12-19T20:54:06.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (251, 7, CAST(N'2018-12-13T00:00:00.000' AS DateTime), CAST(N'2018-12-13T23:38:15.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (252, 6, CAST(N'2018-12-14T00:00:00.000' AS DateTime), CAST(N'2018-12-14T23:36:27.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (253, 9, CAST(N'2018-12-13T00:00:00.000' AS DateTime), CAST(N'2018-12-13T07:48:27.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (254, 3, CAST(N'2018-12-03T00:00:00.000' AS DateTime), CAST(N'2018-12-03T17:30:47.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (255, 2, CAST(N'2018-12-05T00:00:00.000' AS DateTime), CAST(N'2018-12-05T08:02:25.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (256, 5, CAST(N'2018-12-08T00:00:00.000' AS DateTime), CAST(N'2018-12-08T18:42:48.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (257, 8, CAST(N'2018-12-30T00:00:00.000' AS DateTime), CAST(N'2018-12-30T17:33:28.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (258, 7, CAST(N'2018-12-22T00:00:00.000' AS DateTime), CAST(N'2018-12-22T10:06:59.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (259, 1, CAST(N'2018-12-02T00:00:00.000' AS DateTime), CAST(N'2018-12-02T10:16:01.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (260, 9, CAST(N'2018-12-29T00:00:00.000' AS DateTime), CAST(N'2018-12-29T13:33:33.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (261, 3, CAST(N'2018-12-08T00:00:00.000' AS DateTime), CAST(N'2018-12-08T12:09:34.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (262, 6, CAST(N'2018-12-19T00:00:00.000' AS DateTime), CAST(N'2018-12-19T11:20:36.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (263, 5, CAST(N'2018-12-02T00:00:00.000' AS DateTime), CAST(N'2018-12-02T21:15:35.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (264, 8, CAST(N'2018-12-22T00:00:00.000' AS DateTime), CAST(N'2018-12-22T19:12:52.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (265, 2, CAST(N'2018-12-06T00:00:00.000' AS DateTime), CAST(N'2018-12-06T13:23:10.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (266, 1, CAST(N'2018-12-01T00:00:00.000' AS DateTime), CAST(N'2018-12-01T16:06:42.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (267, 4, CAST(N'2018-12-18T00:00:00.000' AS DateTime), CAST(N'2018-12-18T19:03:56.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (268, 2, CAST(N'2018-12-07T00:00:00.000' AS DateTime), CAST(N'2018-12-07T18:00:15.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (269, 6, CAST(N'2018-12-17T00:00:00.000' AS DateTime), CAST(N'2018-12-17T17:10:17.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (270, 9, CAST(N'2018-12-28T00:00:00.000' AS DateTime), CAST(N'2018-12-28T17:20:18.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (271, 7, CAST(N'2018-12-23T00:00:00.000' AS DateTime), CAST(N'2018-12-23T20:03:50.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (272, 2, CAST(N'2018-12-04T00:00:00.000' AS DateTime), CAST(N'2018-12-04T19:13:51.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (273, 5, CAST(N'2018-12-15T00:00:00.000' AS DateTime), CAST(N'2018-12-15T19:24:53.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (274, 3, CAST(N'2018-12-01T00:00:00.000' AS DateTime), CAST(N'2018-12-01T23:23:17.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (275, 7, CAST(N'2018-12-21T00:00:00.000' AS DateTime), CAST(N'2018-12-21T21:17:26.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (276, 5, CAST(N'2018-12-12T00:00:00.000' AS DateTime), CAST(N'2018-12-12T16:33:30.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (277, 8, CAST(N'2018-12-26T00:00:00.000' AS DateTime), CAST(N'2018-12-26T23:10:59.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (278, 3, CAST(N'2018-12-07T00:00:00.000' AS DateTime), CAST(N'2018-12-07T23:20:01.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (279, 1, CAST(N'2018-12-20T00:00:00.000' AS DateTime), CAST(N'2018-12-20T13:59:00.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (280, 4, CAST(N'2018-12-11T00:00:00.000' AS DateTime), CAST(N'2018-12-11T09:01:18.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (281, 7, CAST(N'2018-12-17T00:00:00.000' AS DateTime), CAST(N'2018-12-17T22:25:11.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (282, 6, CAST(N'2018-12-15T00:00:00.000' AS DateTime), CAST(N'2018-12-15T23:53:21.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (283, 9, CAST(N'2018-12-19T00:00:00.000' AS DateTime), CAST(N'2018-12-19T16:09:56.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (284, 8, CAST(N'2018-12-17T00:00:00.000' AS DateTime), CAST(N'2018-12-17T05:53:44.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (285, 2, CAST(N'2018-12-06T00:00:00.000' AS DateTime), CAST(N'2018-12-06T05:11:42.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (286, 5, CAST(N'2018-12-08T00:00:00.000' AS DateTime), CAST(N'2018-12-08T18:59:42.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (287, 4, CAST(N'2018-12-04T00:00:00.000' AS DateTime), CAST(N'2018-12-04T13:29:04.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (288, 7, CAST(N'2018-12-03T00:00:00.000' AS DateTime), CAST(N'2018-12-03T21:41:04.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (289, 1, CAST(N'2018-12-03T00:00:00.000' AS DateTime), CAST(N'2018-12-03T06:24:18.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (290, 9, CAST(N'2018-12-13T00:00:00.000' AS DateTime), CAST(N'2018-12-13T09:34:00.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (291, 3, CAST(N'2018-12-10T00:00:00.000' AS DateTime), CAST(N'2018-12-10T19:29:42.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (292, 2, CAST(N'2018-12-04T00:00:00.000' AS DateTime), CAST(N'2018-12-04T11:01:23.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (293, 5, CAST(N'2018-12-06T00:00:00.000' AS DateTime), CAST(N'2018-12-06T22:30:26.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (294, 8, CAST(N'2018-12-22T00:00:00.000' AS DateTime), CAST(N'2018-12-22T19:29:46.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (295, 6, CAST(N'2018-12-20T00:00:00.000' AS DateTime), CAST(N'2018-12-20T13:05:58.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (296, 1, CAST(N'2018-12-01T00:00:00.000' AS DateTime), CAST(N'2018-12-01T12:15:59.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (297, 4, CAST(N'2018-12-20T00:00:00.000' AS DateTime), CAST(N'2018-12-20T09:09:26.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (298, 2, CAST(N'2018-12-07T00:00:00.000' AS DateTime), CAST(N'2018-12-07T14:08:32.000' AS DateTime))
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (299, 6, CAST(N'2018-12-18T00:00:00.000' AS DateTime), CAST(N'2018-12-18T14:18:34.000' AS DateTime))
GO
INSERT [dbo].[FileLogSIM] ([FileLogSIMID], [SIMID], [ThoiGianBD], [ThoiGianKT]) VALUES (300, 4, CAST(N'2018-12-13T00:00:00.000' AS DateTime), CAST(N'2018-12-13T17:01:06.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[FileLogSIM] OFF
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

INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (153, 8, 8, CAST(N'2018-12-18T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (154, 8, 9, CAST(N'2018-12-29T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (155, 7, 7, CAST(N'2018-12-29T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (156, 7, 7, CAST(N'2018-12-24T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (157, 2, 2, CAST(N'2018-12-05T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (158, 5, 5, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (159, 3, 3, CAST(N'2018-12-10T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (160, 7, 7, CAST(N'2018-12-21T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (161, 1, 1, CAST(N'2018-12-02T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (162, 8, 8, CAST(N'2018-12-30T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (163, 3, 3, CAST(N'2018-12-08T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (164, 1, 1, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (165, 4, 4, CAST(N'2018-12-10T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (166, 8, 8, CAST(N'2018-12-03T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (167, 6, 6, CAST(N'2018-12-23T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (168, 8, 9, CAST(N'2018-12-28T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (169, 4, 4, CAST(N'2018-12-27T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (170, 2, 2, CAST(N'2018-12-23T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (171, 5, 5, CAST(N'2018-12-08T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (172, 4, 4, CAST(N'2018-12-17T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (173, 7, 7, CAST(N'2018-12-23T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (174, 1, 1, CAST(N'2018-12-17T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (175, 8, 9, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (176, 3, 3, CAST(N'2018-12-09T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (177, 6, 6, CAST(N'2018-12-20T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (178, 5, 5, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (179, 8, 8, CAST(N'2018-12-24T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (180, 6, 6, CAST(N'2018-12-18T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (181, 8, 9, CAST(N'2018-12-30T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (182, 4, 4, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (183, 7, 7, CAST(N'2018-12-22T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (184, 5, 5, CAST(N'2018-12-17T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (185, 3, 3, CAST(N'2018-12-26T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (186, 1, 1, CAST(N'2018-12-03T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (187, 5, 5, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (188, 3, 3, CAST(N'2018-12-30T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (189, 6, 6, CAST(N'2018-12-28T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (190, 1, 1, CAST(N'2018-12-20T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (191, 8, 8, CAST(N'2018-12-27T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (192, 2, 2, CAST(N'2018-12-24T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (193, 6, 6, CAST(N'2018-12-22T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (194, 4, 4, CAST(N'2018-12-19T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (195, 7, 7, CAST(N'2018-12-13T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (196, 6, 6, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (197, 8, 9, CAST(N'2018-12-13T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (198, 3, 3, CAST(N'2018-12-03T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (199, 6, 6, CAST(N'2018-12-19T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (200, 5, 5, CAST(N'2018-12-02T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (201, 8, 8, CAST(N'2018-12-22T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (202, 2, 2, CAST(N'2018-12-06T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (203, 1, 1, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (204, 4, 4, CAST(N'2018-12-18T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (205, 2, 2, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (206, 6, 6, CAST(N'2018-12-17T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (207, 2, 2, CAST(N'2018-12-04T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (208, 3, 3, CAST(N'2018-12-01T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (209, 5, 5, CAST(N'2018-12-12T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (210, 8, 8, CAST(N'2018-12-26T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (211, 3, 3, CAST(N'2018-12-07T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (212, 4, 4, CAST(N'2018-12-11T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (213, 7, 7, CAST(N'2018-12-17T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (214, 6, 6, CAST(N'2018-12-15T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (215, 8, 9, CAST(N'2018-12-19T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (216, 8, 8, CAST(N'2018-12-17T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (217, 7, 7, CAST(N'2018-12-03T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (218, 5, 5, CAST(N'2018-12-06T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (219, 4, 4, CAST(N'2018-12-20T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[HoaDonTinhCuoc] ([HoaDonTinhCuocID], [KhachHangID], [SIMID], [NgayHD], [CuocThueBao], [ThanhTien], [TongTien], [Flag]) VALUES (220, 4, 4, CAST(N'2018-12-13T00:00:00.000' AS DateTime), 50000, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 1)
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
