USE [master]
GO
/****** Object:  Database [Fvax]    Script Date: 3/7/2022 5:09:32 PM ******/
CREATE DATABASE [Fvax]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Fvax', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Fvax.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Fvax_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Fvax_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Fvax] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Fvax].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Fvax] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Fvax] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Fvax] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Fvax] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Fvax] SET ARITHABORT OFF 
GO
ALTER DATABASE [Fvax] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Fvax] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Fvax] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Fvax] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Fvax] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Fvax] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Fvax] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Fvax] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Fvax] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Fvax] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Fvax] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Fvax] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Fvax] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Fvax] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Fvax] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Fvax] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Fvax] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Fvax] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Fvax] SET  MULTI_USER 
GO
ALTER DATABASE [Fvax] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Fvax] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Fvax] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Fvax] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Fvax] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Fvax] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Fvax', N'ON'
GO
ALTER DATABASE [Fvax] SET QUERY_STORE = OFF
GO
USE [Fvax]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/7/2022 5:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [varchar](100) NOT NULL,
	[role] [varchar](30) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK__Account__349DA586EDFBA692] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 3/7/2022 5:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NULL,
 CONSTRAINT [PK__Admin__719FE4E8331942BB] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 3/7/2022 5:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[BillId] [int] IDENTITY(1,1) NOT NULL,
	[Total_price] [real] NULL,
	[CustomerID] [int] NULL,
	[PackageID] [int] NULL,
	[vaccineId] [int] NULL,
 CONSTRAINT [PK__Bill__11F2FC6A6838D46B] PRIMARY KEY CLUSTERED 
(
	[BillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/7/2022 5:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [varchar](50) NULL,
	[DOB] [datetime] NOT NULL,
	[Phone] [varchar](10) NULL,
	[AccountID] [int] NULL,
	[Gender] [bit] NULL,
	[SignedBy] [int] NULL,
	[SocialId] [varchar](30) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK__Customer__A4AE64B8ECA59B4E] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 3/7/2022 5:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[packageId] [int] NULL,
	[DiscountRate] [float] NULL,
 CONSTRAINT [PK__Discount__3214EC078086F9CE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 3/7/2022 5:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[DoctorID] [int] IDENTITY(1,1) NOT NULL,
	[Information] [nvarchar](1000) NULL,
	[Phone] [int] NULL,
	[Exp_year] [int] NULL,
	[Gender] [bit] NULL,
	[Email] [varchar](50) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[AccountID] [int] NULL,
	[Image] [nvarchar](50) NULL,
	[DOB] [date] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK__Doctor__2DC00EDF87B0E19C] PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 3/7/2022 5:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NULL,
	[Detail] [nvarchar](1000) NULL,
	[CustomerID] [int] NULL,
	[DoctorID] [int] NULL,
	[Type] [nvarchar](250) NULL,
	[status] [nchar](10) NULL,
	[CustomerName] [nchar](50) NULL,
 CONSTRAINT [PK__Feedback__6A4BEDF6DCE4D77A] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HealthForm]    Script Date: 3/7/2022 5:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HealthForm](
	[FormID] [int] IDENTITY(1,1) NOT NULL,
	[Temperature] [int] NULL,
	[Symptom] [varchar](10) NULL,
	[CustomerID] [int] NULL,
 CONSTRAINT [PK__HealthFo__FB05B7BDDA81478B] PRIMARY KEY CLUSTERED 
(
	[FormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalRecord]    Script Date: 3/7/2022 5:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[injectionDate] [datetime] NULL,
	[vaccineInjected] [int] NULL,
	[DoctorID] [int] NULL,
	[ReservationID] [int] NULL,
 CONSTRAINT [PK__MedicalR__3213E83FB9134FFA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PackageDetail]    Script Date: 3/7/2022 5:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PackageDetail](
	[PackageDetailID] [int] IDENTITY(1,1) NOT NULL,
	[Price] [real] NULL,
	[vaccineId] [int] NULL,
	[PackageID] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK__PackageD__A7D8258A2402D2BC] PRIMARY KEY CLUSTERED 
(
	[PackageDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 3/7/2022 5:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[ReservationID] [int] IDENTITY(1,1) NOT NULL,
	[BookingDate] [datetime] NULL,
	[SlotID] [int] NULL,
	[Status] [varchar](10) NULL,
	[CustomerId] [int] NULL,
	[DoctorID] [int] NULL,
 CONSTRAINT [PK__Reservat__B7EE5F04BEB55D08] PRIMARY KEY CLUSTERED 
(
	[ReservationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 3/7/2022 5:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot](
	[SlotID] [int] NOT NULL,
	[BeginTime] [varchar](5) NULL,
	[EndTime] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[SlotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vaccine]    Script Date: 3/7/2022 5:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vaccine](
	[vaccineId] [int] IDENTITY(1,1) NOT NULL,
	[vaccineName] [nvarchar](30) NULL,
	[vaccinePrice] [real] NULL,
	[vaccineOrigin] [nvarchar](50) NULL,
	[vaccineDetail] [nvarchar](200) NULL,
	[image] [nvarchar](100) NULL,
	[quantity] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK__Vaccine__C1ED3DF5755EFA9E] PRIMARY KEY CLUSTERED 
(
	[vaccineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaccinePackage]    Script Date: 3/7/2022 5:09:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaccinePackage](
	[PackageID] [int] NOT NULL,
	[PackageName] [varchar](30) NULL,
	[Detail] [varchar](100) NULL,
	[PackagePrice] [real] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PackageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (1, N'admin', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'admin', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (2, N'Hai', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'customer', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (3, N'Duc', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'customer', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (4, N'Huy', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'customer', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (5, N'Hieu', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'customer', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (6, N'Hoang', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'customer', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (7, N'co.admin2', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'admin', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (8, N'co.admin3', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'admin', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (9, N'DrChinh', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (10, N'DrThuy', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (11, N'DrNga', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (12, N'DrToan', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (13, N'DrDa', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (14, N'DrNu', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (15, N'DrLan', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (16, N'DrDat', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (17, N'DrTien', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (18, N'DrAnh', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (19, N'DrCuc', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (20, N'DrGam', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (21, N'DrPhuong', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (22, N'DrManh', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (23, N'DrSon', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (24, N'DrHanh', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (25, N'DrNguyen', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (26, N'DrThi', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (27, N'DrVAnh', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'doctor', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (30, N'HaiDuong', N'B1FB4CB834EDC43966AA094FE26B565DDE923ACBBCCFE49A11F55DCAC991FA1A', N'customer', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (31, N'manager ', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'manager ', 1)
INSERT [dbo].[Account] ([AccountID], [Username], [Password], [role], [status]) VALUES (32, N'comanager ', N'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', N'manager ', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([AdminID], [AccountID]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [DOB], [Phone], [AccountID], [Gender], [SignedBy], [SocialId], [status]) VALUES (1, N'Duong Hong Hai', N'Haidhhe151032@fpt.edu.vn', N'Ha Noi', CAST(N'2001-11-10T00:00:00.000' AS DateTime), N'0963418230', 2, 1, NULL, N'09234829294', 1)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [DOB], [Phone], [AccountID], [Gender], [SignedBy], [SocialId], [status]) VALUES (2, N'Can Hoang Duc', N'hoangducpro001@gmail.com', N'Ha Noi', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'0912345678', 3, 1, NULL, N'297438927438', 1)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [DOB], [Phone], [AccountID], [Gender], [SignedBy], [SocialId], [status]) VALUES (3, N'Nguyen Huu Huy', N'Huynhhe153159@fpt.edu.vn', N'Nghe An ', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'0912345678', 4, 1, NULL, N'456476567576', 1)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [DOB], [Phone], [AccountID], [Gender], [SignedBy], [SocialId], [status]) VALUES (4, N'Nguyen Minh Hieu', N'Hieunmhe151248@fpt.edu.vn', N'Ha Noi', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'0912345678', 5, 1, NULL, N'2342342341', 1)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [DOB], [Phone], [AccountID], [Gender], [SignedBy], [SocialId], [status]) VALUES (5, N'Nguyen Viet Hoang', N'Hoangnvhe150377@fpt.edu.vn', N'Ha Noi', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'0912345678', 6, 1, NULL, N'234234234', 1)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [DOB], [Phone], [AccountID], [Gender], [SignedBy], [SocialId], [status]) VALUES (6, N'CR Bưởi', NULL, N'Ha Noi', CAST(N'2007-02-02T00:00:00.000' AS DateTime), NULL, NULL, 1, 2, N'012039485654', 1)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [DOB], [Phone], [AccountID], [Gender], [SignedBy], [SocialId], [status]) VALUES (7, N'Hoa', NULL, N'Ha Noi', CAST(N'2020-05-06T00:00:00.000' AS DateTime), NULL, NULL, 1, 2, N'0239403234234', 1)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [DOB], [Phone], [AccountID], [Gender], [SignedBy], [SocialId], [status]) VALUES (8, N'Hoang Bach', NULL, NULL, CAST(N'2021-01-03T00:00:00.000' AS DateTime), NULL, NULL, 1, 2, N'0123402836232', 1)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [DOB], [Phone], [AccountID], [Gender], [SignedBy], [SocialId], [status]) VALUES (9, N'duc can', NULL, N'duytan', CAST(N'2022-03-07T00:00:00.000' AS DateTime), NULL, NULL, 0, 2, N'0123402836232', 1)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [DOB], [Phone], [AccountID], [Gender], [SignedBy], [SocialId], [status]) VALUES (12, N'duc can4 ', NULL, N'duytan2', CAST(N'2022-03-08T00:00:00.000' AS DateTime), NULL, NULL, 1, 2, N'012340283623123', 1)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [DOB], [Phone], [AccountID], [Gender], [SignedBy], [SocialId], [status]) VALUES (13, N'duc can4 ', NULL, N'duytan2', CAST(N'2022-03-08T00:00:00.000' AS DateTime), NULL, NULL, 1, 2, N'012340283623123', 1)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [DOB], [Phone], [AccountID], [Gender], [SignedBy], [SocialId], [status]) VALUES (14, N'Hoang Ha', NULL, N'duytan', CAST(N'2020-05-03T00:00:00.000' AS DateTime), NULL, NULL, 1, 2, N'9283363839304', 1)
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [Email], [Address], [DOB], [Phone], [AccountID], [Gender], [SignedBy], [SocialId], [status]) VALUES (16, N'Duong Hong Hai', N'haihde151032@fpt.edu.vn', N'Ha noi', CAST(N'2001-10-11T00:00:00.000' AS DateTime), N'0963418230', 30, 1, 2, N'001201022859', 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Discount] ON 

INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (1, 101, 0.1)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (2, 102, 0.1)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (3, 103, 0.1)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (4, 104, 0.1)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (5, 105, 0.1)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (6, 106, 0.1)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (7, 201, 0.2)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (8, 202, 0.2)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (9, 203, 0.2)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (10, 204, 0.2)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (11, 205, 0.2)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (12, 206, 0.2)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (13, 207, 0.2)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (14, 208, 0.2)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (15, 209, 0.2)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (16, 210, 0.2)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (17, 301, 0.3)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (18, 401, 0.4)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (19, 402, 0.4)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (20, 403, 0.4)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (21, 501, 0.5)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (22, 601, 0.1)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (23, 701, 0.2)
INSERT [dbo].[Discount] ([Id], [packageId], [DiscountRate]) VALUES (24, 801, 0.3)
SET IDENTITY_INSERT [dbo].[Discount] OFF
GO
SET IDENTITY_INSERT [dbo].[Doctor] ON 

INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (1, N'Với gần 30 năm kinh nghiệm trong lĩnh vực y tế dự phòng, thấu hiểu những lo lắng, trăn trở của phụ huynh về vắc xin và bệnh truyền nhiễm, bác sĩ Bạch Thị Chính luôn mong muốn cộng đồng, đặc biệt là trẻ nhỏ, người lớn tuổi, phụ nữ mang thai có cơ hội được tiêm chủng an toàn, đầy đủ và chất lượng, nhất là trước tình trạng biến đổi phức tạp của các chủng vi khuẩn gây bệnh.

Trong suốt nhiều năm công tác, bác sĩ Bạch Thị Chính đã giúp hàng triệu trẻ em Việt Nam được chủ động phòng ngừa bệnh bằng vắc xin, xóa bỏ nguy cơ bệnh tật, tạo nền tảng sức khỏe và phát triển trong tương lai, phát triển tốt với tất cả sự tận tâm, yêu nghề của người thầy thuốc và luôn nhận được những lời cảm ơn, phản hồi tích cực từ phía người bệnh.

Một chặng đường dài gắn bó với lĩnh vực Y học dự phòng, bác sĩ Chính nhận được sự yêu quý của đông đảo người bệnh bởi phẩm chất “thầy thuốc như mẹ hiền”. Hiện tại, BS.CKI Bạch Thị Chính đang đảm nhận vị trí Giám đốc Y khoa, Hệ thống Trung tâm tiêm chủng Trẻ em và Người', 963418230, 30, 0, N'chinhbthe@fpt.edu.vn', N' Bạch Thị Chính', N'Ha Noi', 9, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (2, N'Gần 20 năm công tác trong lĩnh vực Y tế dự phòng và Tiêm chủng mở rộng, Thạc sĩ Nguyễn Diệu Thúy luôn nuôi khát vọng mang đến kiến thức và cơ hội tiêm chủng vắc xin nhiều hơn cho cộng đồng, xóa bỏ nguy cơ bệnh tật. Với thái độ làm việc nghiêm túc, tận tâm, Thạc sĩ Nguyễn Diệu Thúy luôn được các đồng nghiệp tin yêu, Khách hàng quý trọng.

Thạc sĩ Nguyễn Diệu Thúy không ngừng nghiên cứu, nỗ lực học hỏi, nâng cao chuyên môn và năng lực của bản thân bằng các khóa tu nghiệp trong và ngoài nước, được các đơn vị y tế tin tưởng lựa chọn và giao nhiều trọng trách.', 962418230, 20, 0, N'thuyndhe@fpt.edu.vn', N'Nguyễn Diệu Thúy', N'Ha Noi', 10, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (3, N'Hiểu rõ vai trò của y tế cộng đồng, y tế dự phòng trong việc chủ động chăm sóc sức khỏe và nâng cao chất lượng sống của xã hội, bác sĩ Nguyễn Lê Nga đã sớm lựa chọn chuyên khoa Y tế Công cộng tại Đại học Y tế Công cộng Hà Nội. Trong suốt 13 năm công tác, bác sĩ Lê Nga luôn nỗ lực rèn luyện, nâng cao năng lực thực hành để phục vụ các dịch vụ y tế chất lượng cho cộng đồng.

BS.CKI Nguyễn Lê Nga đã có kinh nghiệm công tác tại các đơn vị y tế lớn như: Bệnh viện Việt Nam – Cuba, Trung tâm Kiểm dịch y tế Quốc tế Hà Nội, Trung tâm Kiểm soát dịch bệnh Hà Nội, Trung tâm Tiêm chủng VNVC. Tại VNVC, không chỉ đóng vai trò quản lý y khoa của khu vực… Bác sĩ Lê Nga còn là một bác sĩ sàng lọc trước tiêm với tinh thần làm việc mẫn cán, thân thiện, nhận được nhiều cảm tình của khách hàng, đặc biệt là các khách hàng nhí.', 963418230, 13, 0, N'nganlhe@fpt.edu.vn', N'Nguyễn Lê Nga', N'Ha Noi', 11, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (4, N'god of doctor', 963418230, 34, 0, N'toanvthe@fpt.edu.vn', N'Vũ Thị Toàn', N'Ha Noi', 12, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (5, N'none', 963418230, 30, 0, N'damhe@fpt.edu.vn', N'Minh Đa', N'Ha Noi', 13, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (6, N'none', 963418230, 13, 0, N'nuthe@fpt.edu.vn', N'Tố Nữ', N'Ha Noi', 14, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (7, N'Là Bác sỹ có nhiều năm làm việc trong lĩnh vực Tiêm chủng. Bác sỹ Đoàn Thị Lan nhận thấy rằng tiêm chủng là cách tốt nhất để Cha mẹ bảo vệ bé khỏi các tác nhân gây bệnh và phòng ngừa bệnh cho trẻ. Làm việc với  tâm huyết yêu nghề, yêu trẻ, luôn đồng hành cùng phụ huynh để giải đáp những thắc mắc và trăn trở để bé có một tương lai an toàn và khỏe mạnh.', 963418230, 20, 0, N'landthe@fpt.edu.vn', N'Đoàn Thị Lan', N'Ha Noi', 15, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (8, N'Bác sĩ Đỗ Duy Đạt đã hoàn thành khóa học và được cấp chứng chỉ về An toàn tiêm chủng. Với kiến thức y khoa và kinh nghiệm bản thân, Bác sĩ sẽ tư vấn cho phụ huynh và khách hàng những mũi tiêm an toàn và tốt nhất cho khách hàng. Bác sĩ hi vọng trong không khí vui vẻ và thoải mái trong buổi tư vấn và tinh thần làm việc chuyên nghiệp tại VNVC TpHCM sẽ giúp phụ huynh và khách hàng lựa chọn được những mũi tiêm tốt nhất cho sức khỏe con nhỏ và cho chính bản thân mình.', 963418230, 20, 1, N'datdhe@fpt.edu.vn', N'Đỗ Duy Đạt', N'HCM', 16, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (9, N'Hơn 10 năm kinh nghiệm lâm sàng trong chuyên ngành Lão khoa, tôi nhận thấy có rất nhiều tác nhân gây ra những bệnh nguy hiểm mà chúng ta có khả năng phòng ngừa được bằng cách tiêm vắc xin. Với phương châm “Phòng bệnh trước khi quá muộn”, người lớn, đặc biệt là người cao tuổi cũng cần phải tiêm ngừa một số vắc xin: Viêm gan siêu vi, Viêm não Nhật Bản, Viêm màng não do não mô cầu, Viêm phổi do Phế cầu, Cúm, Rubella, trái rạ…..Là Bác sĩ đã được đào tạo và được cấp Chứng Chỉ hành nghề về An toàn tiêm chủng. Bác sĩ có kinh nghiệm tư vấn cho ngươi lớn có phác đồ tiêm chủng an toàn.', 963418230, 10, 0, N'tienmhe@fpt.edu.vn', N'Mỹ Tiên', N'Ha Noi', 17, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (10, N'Hơn 10 năm kinh nghiệm làm việc trong lĩnh vực cấp cứu, nội khoa và dinh dưỡng, Bác sĩ Nguyễn Văn Anh biết rất rõ vai trò của việc phòng bệnh để nâng cao sức khỏe. Tiêm chủng là một trong những biện pháp phòng bệnh chủ động không thể thiếu, đặc biệt đối với trẻ nhỏ, nhằm giúp cơ thể tạo ra kháng thể chống lại các tác nhân gây bệnh bên ngoài. Đồng hành với VNVC, Bác sĩ Nguyễn Văn Anh mong muốn góp phần giúp cho cộng đồng có được sự bảo vệ sức khỏe tốt nhất, thông qua các dịch vụ AN TOÀN, CHẤT LƯỢNG, CHUYÊN NGHIỆP tại VNVC.', 963418230, 10, 1, N'anhnvhe@fpt.edu.vn', N'Nguyễn Văn Anh', N'Ha Noi', 18, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (11, N'Với hơn 10 năm làm việc chuyên ngành phòng chống dịch bệnh và tiêm chủng, thấu hiểu được những lo lắng của phụ huynh khi con trẻ được tiêm chủng. Bác sĩ có nhiều kinh nghiệm tư vấn sẽ làm cho phụ huynh thoải mái, an tâm khi lựa chọn cho bé yêu một phác đồ tiêm chủng hiệu quả, an toàn.', 963418230, 10, 0, N'cucnthe@fpt.edu.vn', N'Nguyễn Thị Cúc', N'Ha Noi', 19, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (12, N'Với hơn 10 năm kinh nghiệm làm việc trong lĩnh vực Nội khoa và tham gia công tác khám chỉ định tiêm chủng, Bác sĩ Lê Thị Gấm thấu hiểu những lo lắng về tính an toàn vắc xin của các phụ huynh khi con cần tiêm chủng thường xuyên. Với công việc khám sàng lọc trước tiêm tại VNVC, Bác sĩ sẽ cùng phụ huynh chia sẻ những trăn trở và giải đáp tất cả những thắc mắc của phụ huynh trong không khí vui vẻ và thoải mái. ', 963418230, 10, 0, N'gamlthe@fpt.edu.vn', N'Lê Thị Gấm', N'Ha Noi', 20, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (13, N'Với nhiều năm kinh nghiệm khám sàng lọc tiêm chủng,  Bác sỹ sẽ đồng hành với phụ huynh trong việc bảo vệ sức khoẻ bé yêu thông qua những mũi tiêm an toàn và hiệu quả.', 963418230, 10, 0, N'phuongthe@fpt.edy.vn', N'Thanh Phương', N'Ha Noi', 21, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (14, N'Công tác trong lĩnh vực sản khoa, tôi thường gặp những thai phụ chưa nhìn nhận đúng tầm quan trọng của việc chích ngừa trước và trong khi mang thai, đem lại những hậu quả đau lòng như những bé con mang hình hài không trọn vẹn, những dị tật bẩm sinh theo suốt cả đời con. Hy vọng cùng với VNVC, tôi sẽ cung cấp tất cả những nhu cầu về tiêm chủng nhằm góp phần đem đến sức khoẻ tốt nhất cho mẹ và bé nói riêng, nâng cao sức khoẻ cộng đồng nói chung.', 963418230, 10, 0, N'manhnhe@fpt.edu.vn', N'Ngọc Mảnh', N'Ha Noi', 22, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (15, N'Nhiều năm công tác trong lĩnh vực Y tế, tôi luôn tận tâm với người bệnh, nhiệt tình với đồng nghiệp, và luôn sáng tạo, đổi mới trong công việc. Tôi hiểu được tầm quan trọng của tiêm chủng bởi nó không chỉ bảo vệ bản thân trẻ mà còn bảo vệ những người xung quanh, đó là lý do tiêm chủng được coi là yếu tố quan trọng trong việc bảo vệ sức khỏe cho người dân, giảm tối đa chi phí chữa bệnh trong suốt thời gian dài.', 963418230, 20, 1, N'sonxhe@fpt.edu.vn', N'Xuân Sơn', N'Ha Noi', 23, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (16, N'solder doctor', 963418230, 52, 1, N'hanhdhe@fpt.edu.vn', N'Đức Hạnh', N'Ha Noi', 24, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (17, N'doctor academy', 963418230, 44, 0, N'nguyenhhe@fpt.edu.vn', N'Hạnh Nguyên', N'Ha Noi', 25, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (18, N'Bác sĩ đa khoa', 963418230, 14, 0, N'thiahe@fpt.edu.vn', N'Anh Thi', N'Ha Noi', 26, NULL, NULL, NULL)
INSERT [dbo].[Doctor] ([DoctorID], [Information], [Phone], [Exp_year], [Gender], [Email], [Name], [Address], [AccountID], [Image], [DOB], [status]) VALUES (20, N'doctor academy ', 963418230, 27, 0, N'anhvhe@fpt.edu.vn', N'Vân Anh', N'Ha Noi', 27, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Doctor] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([FeedbackID], [CreateDate], [Detail], [CustomerID], [DoctorID], [Type], [status], [CustomerName]) VALUES (2, CAST(N'2022-03-06T21:02:06.960' AS DateTime), N'dont no', 2, 2, N'VeryGood', NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackID], [CreateDate], [Detail], [CustomerID], [DoctorID], [Type], [status], [CustomerName]) VALUES (3, CAST(N'2022-03-06T21:34:15.757' AS DateTime), N'dont no', 16, 2, N'VeryGood', NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackID], [CreateDate], [Detail], [CustomerID], [DoctorID], [Type], [status], [CustomerName]) VALUES (4, CAST(N'2022-03-06T21:36:25.013' AS DateTime), N'dont no', 16, NULL, N'VeryGood', NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackID], [CreateDate], [Detail], [CustomerID], [DoctorID], [Type], [status], [CustomerName]) VALUES (5, CAST(N'2022-03-06T21:41:20.690' AS DateTime), N'dont no', 16, NULL, N'VeryGood', N'waitting  ', NULL)
INSERT [dbo].[Feedback] ([FeedbackID], [CreateDate], [Detail], [CustomerID], [DoctorID], [Type], [status], [CustomerName]) VALUES (11, CAST(N'2022-03-06T22:50:56.763' AS DateTime), N'dont no', 2, 2, N'VeryGood', NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackID], [CreateDate], [Detail], [CustomerID], [DoctorID], [Type], [status], [CustomerName]) VALUES (12, CAST(N'2022-03-06T22:53:15.927' AS DateTime), N'dont no', 16, 2, N'VeryGood', NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackID], [CreateDate], [Detail], [CustomerID], [DoctorID], [Type], [status], [CustomerName]) VALUES (13, CAST(N'2022-03-06T22:55:28.140' AS DateTime), N'dont no', 16, NULL, N'VeryGood', N'waitting  ', NULL)
INSERT [dbo].[Feedback] ([FeedbackID], [CreateDate], [Detail], [CustomerID], [DoctorID], [Type], [status], [CustomerName]) VALUES (22, CAST(N'2022-03-07T14:17:17.887' AS DateTime), N'tại sao lại không chọn FVAX nhỉ ?', 16, 1, N'VeryGood', N'checked   ', N'Duong Hong Hai                                    ')
INSERT [dbo].[Feedback] ([FeedbackID], [CreateDate], [Detail], [CustomerID], [DoctorID], [Type], [status], [CustomerName]) VALUES (23, CAST(N'2022-03-07T14:17:41.127' AS DateTime), N'Quá là an toàn luôn đấy ', 16, 1, N'VeryGood', N'checked   ', N'Duong Hong Hai                                    ')
INSERT [dbo].[Feedback] ([FeedbackID], [CreateDate], [Detail], [CustomerID], [DoctorID], [Type], [status], [CustomerName]) VALUES (24, CAST(N'2022-03-07T14:27:33.423' AS DateTime), N'Mình nghe bác sĩ bảo mẹ mình có nguy cơ loãng xương , mình lo lắm nên mình quyết định chọn FVAX  mình nghe nói FVAX làm giảm nguy cơ loãng xương trong 4 tuần nên mình sẽ đi tiêm . Phòng ngừa ngay vẫn hơn', 16, 1, N'VeryGood', N'checked   ', N'Duong Hong Hai                                    ')
INSERT [dbo].[Feedback] ([FeedbackID], [CreateDate], [Detail], [CustomerID], [DoctorID], [Type], [status], [CustomerName]) VALUES (25, CAST(N'2022-03-07T16:02:56.183' AS DateTime), N'test', 16, 1, N'VeryGood', N'checked   ', N'Duong Hong Hai                                    ')
INSERT [dbo].[Feedback] ([FeedbackID], [CreateDate], [Detail], [CustomerID], [DoctorID], [Type], [status], [CustomerName]) VALUES (26, CAST(N'2022-03-07T16:56:51.790' AS DateTime), N'UwU', 16, 1, N'VeryGood', N'checked   ', N'Duong Hong Hai                                    ')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[PackageDetail] ON 

INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (1, 852000, 5, 101, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (2, 665000, 4, 101, 2)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (3, 1048000, 3, 101, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (4, 1045000, 7, 101, 2)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (5, 356000, 22, 101, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (6, 315000, 16, 101, 2)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (7, 665000, 30, 101, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (8, 1260000, 15, 101, 2)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (9, 852000, 5, 102, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (10, 665000, 4, 102, 2)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (11, 1015000, 2, 102, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (12, 1045000, 7, 102, 2)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (13, 356000, 22, 102, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (14, 315000, 16, 102, 2)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (15, 665000, 30, 102, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (16, 1260000, 15, 102, 2)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (17, 852000, 5, 103, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (18, 665000, 4, 103, 2)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (19, 1048000, 3, 103, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (20, 235000, 10, 103, 2)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (21, 1045000, 7, 103, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (22, 356000, 22, 103, 2)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (23, 315000, 16, 103, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (24, 665000, 30, 103, 2)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (25, 1260000, 15, 103, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (26, 852000, 5, 104, 2)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (27, 665000, 4, 104, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (28, 1048000, 3, 104, 2)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (29, 1045000, 7, 104, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (30, 356000, 22, 104, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (31, 315000, 16, 104, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (32, 945000, 20, 104, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (33, 665000, 30, 104, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (34, 1260000, 15, 104, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (35, 852000, 5, 105, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (36, 665000, 4, 105, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (37, 1015000, 2, 105, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (38, 1045000, 7, 105, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (39, 356000, 22, 105, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (40, 315000, 16, 105, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (45, 945000, 20, 105, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (46, 665000, 30, 105, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (47, 1260000, 15, 105, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (48, 852000, 5, 106, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (49, 665000, 4, 106, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (50, 1048000, 3, 106, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (51, 235000, 10, 106, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (52, 1045000, 7, 106, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (53, 356000, 22, 106, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (54, 315000, 16, 106, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (55, 945000, 20, 106, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (56, 665000, 30, 106, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (57, 1260000, 15, 106, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (58, 852000, 5, 201, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (59, 1048000, 3, 201, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (60, 1015000, 2, 201, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (61, 1045000, 7, 201, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (62, 356000, 22, 201, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (63, 315000, 16, 201, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (64, 305000, 18, 201, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (65, 560000, 41, 201, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (66, 665000, 30, 201, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (67, 1260000, 15, 201, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (68, 145000, 44, 201, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (69, 852000, 45, 202, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (70, 1048000, 3, 202, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (71, 1015000, 2, 202, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (72, 1045000, 7, 202, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (73, 356000, 22, 202, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (74, 315000, 16, 202, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (75, 305000, 18, 202, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (76, 560000, 41, 202, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (77, 915000, 19, 202, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (78, 665000, 30, 202, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (79, 1260000, 15, 202, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (80, 145000, 44, 202, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (81, 665000, 4, 203, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (82, 1048000, 3, 203, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (83, 1015000, 2, 203, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (84, 1045000, 7, 203, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (85, 356000, 22, 203, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (86, 315000, 16, 203, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (87, 305000, 18, 203, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (88, 560000, 41, 203, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (89, 945000, 20, 203, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (90, 665000, 30, 203, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (91, 145000, 44, 203, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (92, 1260000, 15, 203, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (93, 665000, 4, 204, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (94, 1048000, 3, 204, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (95, 1015000, 2, 204, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (96, 1045000, 7, 204, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (97, 356000, 22, 204, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (98, 315000, 16, 204, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (99, 305000, 18, 204, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (100, 560000, 41, 204, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (101, 915000, 19, 204, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (102, 665000, 30, 204, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (103, 145000, 44, 204, 1)
GO
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (104, 1260000, 15, 204, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (105, 852000, 5, 205, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (106, 1015000, 2, 205, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (107, 1048000, 48, 205, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (108, 1045000, 7, 205, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (109, 356000, 22, 205, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (110, 315000, 16, 205, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (111, 305000, 18, 205, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (112, 560000, 41, 205, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (113, 945000, 20, 205, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (114, 665000, 30, 205, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (115, 665000, 15, 205, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (116, 145000, 44, 205, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (117, 852000, 5, 206, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (118, 1015000, 2, 206, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (119, 1048000, 48, 206, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (120, 1045000, 7, 206, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (121, 356000, 22, 206, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (122, 315000, 16, 206, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (123, 305000, 18, 206, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (124, 560000, 41, 206, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (125, 915000, 19, 206, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (126, 665000, 30, 206, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (127, 1260000, 15, 206, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (128, 145000, 44, 206, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (129, 665000, 4, 207, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (130, 1015000, 2, 207, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (131, 1048000, 48, 207, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (132, 1045000, 7, 207, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (133, 356000, 22, 207, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (134, 315000, 16, 207, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (135, 305000, 18, 207, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (136, 560000, 41, 207, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (137, 915000, 19, 207, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (138, 945000, 20, 207, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (139, 665000, 30, 207, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (140, 145000, 44, 207, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (141, 1260000, 15, 207, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (142, 665000, 4, 208, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (143, 1015000, 2, 208, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (144, 1048000, 48, 208, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (145, 1045000, 7, 208, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (146, 356000, 22, 208, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (147, 315000, 16, 208, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (148, 305000, 18, 208, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (149, 560000, 41, 208, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (150, 915000, 19, 208, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (151, 945000, 20, 208, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (152, 665000, 30, 208, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (153, 145000, 44, 208, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (154, 1260000, 15, 208, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (155, 852000, 5, 209, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (156, 1048000, 48, 209, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (157, 1045000, 7, 209, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (158, 356000, 22, 209, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (159, 315000, 16, 209, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (160, 305000, 18, 209, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (161, 190000, 13, 209, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (162, 915000, 19, 209, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (163, 945000, 20, 209, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (164, 665000, 30, 209, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (165, 1260000, 15, 209, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (166, 560000, 41, 209, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (167, 665000, 4, 210, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (168, 1048000, 48, 210, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (169, 1045000, 7, 210, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (170, 356000, 22, 210, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (171, 315000, 16, 210, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (172, 305000, 18, 210, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (173, 560000, 41, 210, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (174, 915000, 19, 210, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (175, 945000, 20, 210, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (176, 190000, 13, 210, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (177, 665000, 30, 210, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (178, 1260000, 15, 210, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (179, 1048000, 48, 301, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (180, 1045000, 7, 301, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (181, 356000, 22, 301, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (182, 315000, 16, 301, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (183, 305000, 18, 301, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (184, 560000, 41, 301, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (185, 915000, 19, 301, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (186, 945000, 20, 301, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (187, 665000, 30, 301, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (188, 1260000, 15, 301, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (189, 145000, 44, 301, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (190, 1048000, 3, 401, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (191, 356000, 22, 401, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (192, 915000, 19, 401, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (193, 945000, 20, 401, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (194, 665000, 30, 401, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (195, 560000, 41, 401, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (196, 145000, 44, 401, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (197, 305000, 18, 401, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (198, 1260000, 15, 401, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (199, 1015000, 2, 402, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (200, 356000, 22, 402, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (201, 915000, 19, 402, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (202, 945000, 20, 402, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (203, 665000, 30, 402, 1)
GO
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (204, 560000, 41, 402, 1)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (205, 145000, 44, 402, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (206, 305000, 18, 402, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (207, 1260000, 15, 402, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (208, 1048000, 48, 403, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (209, 356000, 22, 403, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (210, 915000, 19, 403, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (211, 945000, 20, 403, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (212, 665000, 30, 403, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (213, 305000, 18, 403, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (214, 560000, 41, 403, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (215, 145000, 44, 403, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (216, 1260000, 15, 403, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (217, 458000, 37, 501, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (218, 356000, 22, 501, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (219, 305000, 18, 501, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (220, 665000, 30, 501, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (221, 560000, 41, 501, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (222, 1260000, 15, 501, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (223, 1290000, 13, 501, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (224, 115000, 47, 501, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (225, 1790000, 27, 601, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (226, 305000, 18, 601, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (227, 915000, 19, 601, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (228, 735000, 36, 601, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (229, 356000, 22, 601, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (230, 1290000, 8, 601, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (231, 1260000, 15, 601, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (232, 735000, 36, 701, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (233, 115000, 28, 701, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (234, 356000, 24, 701, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (235, 305000, 18, 701, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (236, 915000, 19, 701, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (237, 235000, 10, 701, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (238, 560000, 41, 701, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (239, 1290000, 8, 701, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (240, 1260000, 15, 701, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (241, 305000, 18, 801, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (242, 915000, 19, 801, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (243, 735000, 36, 801, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (244, 620000, 35, 801, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (245, 235000, 10, 801, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (246, 560000, 41, 801, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (247, 356000, 22, 801, NULL)
INSERT [dbo].[PackageDetail] ([PackageDetailID], [Price], [vaccineId], [PackageID], [quantity]) VALUES (248, 115000, 28, 801, NULL)
SET IDENTITY_INSERT [dbo].[PackageDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Reservation] ON 

INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (1, CAST(N'2022-02-28T00:00:00.000' AS DateTime), NULL, N'Failed', 2, NULL)
INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (2, CAST(N'1905-07-12T00:00:00.000' AS DateTime), 1, N'Pending', 2, NULL)
INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (3, CAST(N'2022-03-01T00:00:00.000' AS DateTime), 1, N'Pending', 3, NULL)
INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (4, CAST(N'2022-04-01T00:00:00.000' AS DateTime), 2, N'Pending', 2, NULL)
INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (8, CAST(N'2022-02-20T00:00:00.000' AS DateTime), 7, N'Pending', 6, NULL)
INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (9, CAST(N'2022-04-05T00:00:00.000' AS DateTime), 2, N'Pending', 1, NULL)
INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (15, CAST(N'2022-03-31T00:00:00.000' AS DateTime), 4, N'Pending', 2, NULL)
INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (16, CAST(N'2022-03-31T00:00:00.000' AS DateTime), 4, N'Pending', 2, NULL)
INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (17, CAST(N'2022-03-28T00:00:00.000' AS DateTime), 3, N'Pending', 2, NULL)
INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (18, CAST(N'2021-01-03T00:00:00.000' AS DateTime), 3, N'Pending', 2, NULL)
INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (19, CAST(N'2022-03-07T00:00:00.000' AS DateTime), 4, N'Pending', 2, NULL)
INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (20, CAST(N'2022-03-07T00:00:00.000' AS DateTime), 4, N'Pending', 8, NULL)
INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (23, CAST(N'2022-02-20T00:00:00.000' AS DateTime), 7, N'Pending', 12, NULL)
INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (24, CAST(N'2022-03-08T00:00:00.000' AS DateTime), 1, N'Pending', 12, NULL)
INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (25, CAST(N'2020-05-03T00:00:00.000' AS DateTime), 4, N'Pending', 14, NULL)
INSERT [dbo].[Reservation] ([ReservationID], [BookingDate], [SlotID], [Status], [CustomerId], [DoctorID]) VALUES (26, CAST(N'2022-03-31T00:00:00.000' AS DateTime), 4, N'Pending', 2, NULL)
SET IDENTITY_INSERT [dbo].[Reservation] OFF
GO
INSERT [dbo].[Slot] ([SlotID], [BeginTime], [EndTime]) VALUES (1, N'7h30', N'9h')
INSERT [dbo].[Slot] ([SlotID], [BeginTime], [EndTime]) VALUES (2, N'9h10', N'10h40')
INSERT [dbo].[Slot] ([SlotID], [BeginTime], [EndTime]) VALUES (3, N'10h50', N'12h20')
INSERT [dbo].[Slot] ([SlotID], [BeginTime], [EndTime]) VALUES (4, N'12h50', N'14h20')
INSERT [dbo].[Slot] ([SlotID], [BeginTime], [EndTime]) VALUES (5, N'14h30', N'16h')
INSERT [dbo].[Slot] ([SlotID], [BeginTime], [EndTime]) VALUES (6, N'16h10', N'17h40')
INSERT [dbo].[Slot] ([SlotID], [BeginTime], [EndTime]) VALUES (7, N'17h50', N'19h20')
GO
SET IDENTITY_INSERT [dbo].[Vaccine] ON 

INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (1, N'Infanrix IPV+Hib', 785000, N'Belgium', N'Diphtheria, pertussis, tetanus, polio and Hib', N'vaccines/ipv-hib.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (2, N'Infanrix Hexa (6in1)', 1015000, N'Belgium', N'Diphtheria, pertussis, tetanus, polio, Hib and hepatitis B', N'vaccines/INFANRIX-6.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (3, N'Hexaxim (6in1)', 1048000, N'France', N'Diphtheria, pertussis, tetanus, polio, Hib and hepatitis B', N'vaccines/hexaxim.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (4, N'Rotateq', 665000, N'USA', N'Rota virus	', N'vaccines/ROTATEQ.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (5, N'Rotarix', 852000, N'Belgium', N'Rota virus	', N'vaccines/ROTARIX.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (6, N'Rotavin-M1', 490000, N'VN', N'Rota virus	', N'vaccines/vacxin-rotavin-m1.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (7, N'Synflorix', 1045000, N'Belgium', N'Pneumococcal diseases', N'vaccines/SYNFLORIX.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (8, N'Prevenar 13	', 1290000, N'Belgium', N'Pneumococcal diseases', N'vaccines/prevenar.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (9, N'BCG', 125000, N'VN', N'TB disease', N'vaccines/bcg.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (10, N'Engerix B 1ml	', 235000, N'Belgium', N'Hepatitis B Adult', N'vaccines/engerixB.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (11, N'Euvax B 1ml	', 170000, N'Korea', N'Hepatitis B Adult', N'vaccines/EuvaxB.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (12, N'Euvax B 0.5ml	', 116000, N'Korea', N'Hepatitis B in children', N'vaccines/EUVAX.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (13, N'Engerix B 0,5ml	', 190000, N'Belgium', N'Hepatitis B in children', N'vaccines/ENGERIX-B.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (14, N'VA-Mengoc-BC	', 295000, N'Cuba', N'Meningococcal BC', N'vaccines/VA-MENGOC-BC.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (15, N'Menactra', 1260000, N'USA', N'Meningococcal meningitis ACYW', N'vaccines/menactra-1.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (16, N'MVVac (Lọ 5ml)', 315000, N'VN', N'Measles', N'vaccines/vacxin-MVVac.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (17, N'MVVac (Liều 0.5ml)', 180000, N'VN', N'Measles', N'vaccines/MVVac0.5.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (18, N'MMR II (3 in 1)', 305000, N'USA', N'Measles – Mumps – Rubella', N'vaccines/MMR-II.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (19, N'Varivax', 915000, N'USA', N'Chicken pox', N'vaccines/VARIVAX.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (20, N'Varilrix', 945000, N'Belgium', N'Chicken pox', N'vaccines/vacxin-varilrix-2.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (21, N'Varicella', 700000, N'Korea', N'Chicken pox', N'vaccines/Varicella.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (22, N'Vaxigrip Tetra 0.5ml', 356000, N'France', N'Flu', N'vaccines/vaxigrip-tetra.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (23, N'Influvac 0.5ml	', 348000, N'Netherlands', N'Flu', N'vaccines/influvac.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (24, N'Influvac tetra 0,5ml', 356000, N'Netherlands', N'Flu', N'vaccines/influvac-tetra.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (25, N'GCFlu Quadrivalent 0,5ml', 345000, N'Korea', N'Flu', N'vaccines/GCFlu-Quadrivalent.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (26, N'Ivacflu-S 0,5ml', 190000, N'VN', N'Flu (adults > 18 years old)', N'vaccines/ivacflu.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (27, N'Gardasil 0.5ml', 1790000, N'USA', N'Cervical cancer and genital papillomas, genital warts', N'vaccines/GARDASIL.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (28, N'VAT', 115000, N'VN', N'Tetanus room', N'vaccines/uonvanhapphu.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (29, N'SAT', 100000, N'VN', N'Tetanus room', N'vaccines/huyet-thanh-uon-van.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (30, N'Imojev', 665000, N'Thai', N'Japanese encephalitis', N'vaccines/Imojev-boom.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (31, N'Jevax 1ml', 170000, N'VN', N'Japanese encephalitis', N'vaccines/JEVAX.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (32, N'Verorab 0,5ml (TB, TTD)', 323000, N'France', N'Rabies vaccine', N'vaccines/Verorab.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (33, N'Abhayrab 0,5ml (TB)', 255000, N'India', N'Rabies vaccine', N'vaccines/vacxin-ABHAYRAB.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (34, N'Abhayrab 0,5ml (TTD)	', 215000, N'India', N'Rabies vaccine', N'vaccines/Abhayrab0.5.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (35, N'Adacel', 620000, N'Canada', N'Diphtheria – Tetanus – Whooping cough', N'vaccines/ADACELpsd.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (36, N'Boostrix', 735000, N'Belgium', N'Diphtheria – Tetanus – Whooping cough', N'vaccines/boostrix.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (37, N'Tetraxim', 458000, N'France', N'Diphtheria – Pertussis – Tetanus – Polio', N'vaccines/TETRAXIM.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (38, N'Tetanus, Diphtheria Adsorbed', 125000, N'VN', N'Diphtheria – Tetanus', N'vaccines/VX_BachHau.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (39, N'Tetanus, Diphtheria Adsorbed', 95000, N'VN', N'Diphtheria – Tetanus', N'vaccines/VX_BachHau.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (40, N'Tetanus, Diphtheria Adsorbed', 580000, N'VN', N'Diphtheria – Tetanus', N'vaccines/VX_BachHau.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (41, N'Twinrix', 560000, N'Belgium', N'Hepatitis B and Hepatitis A', N'vaccines/TWINRIX.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (42, N'Havax 0,5ml', 235000, N'VN', N'Hepatitis A', N'vaccines/HAVAX.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (43, N'AVAXIM 80U	', 590000, N'France', N'Hepatitis A', N'vaccines/121-Avaxim.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (44, N'Typhoid VI	', 145000, N'VN', N'Typhoid', N'vaccines/TYPHOID-VI-1.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (45, N'Typhim VI', 300000, N'France', N'Typhoid', N'vaccines/TYPHIM.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (46, N'Quimi-Hib', 239000, N'Cuba', N'Diseases caused by Hib', N'vaccines/QUIMIHIB.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (47, N'mORCVAX', 115000, N'VN', N'Cholera', N'vaccines/vacxin-mocrvax.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (48, N'Pentaxim', 1048000, N'France', N'Diphtheria, pertussis, tetanus, polio, Hib and hepatitis B', N'vaccines/PENTAXIM-5.jpg', 100, 1)
INSERT [dbo].[Vaccine] ([vaccineId], [vaccineName], [vaccinePrice], [vaccineOrigin], [vaccineDetail], [image], [quantity], [status]) VALUES (49, N'ASTRAZENECA', 600000, N'UK', N'VACCINES FOR AMERICAN RECOVERY DISEASE BECAUSE OF COVID-19', N'vaccines/vacxin-covid-19.jpg', 100, 1)
SET IDENTITY_INSERT [dbo].[Vaccine] OFF
GO
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (101, N'Hexaxim vaccine package', N'VACCINE PACKAGE FOR 0-9 MONTHS CHILDREN', 1.431E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (102, N'Infanrix vaccine pack', N'VACCINE PACKAGE FOR 0-9 MONTHS CHILDREN', 1.419E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (103, N'Pentaxim vaccine pack', N'VACCINE PACKAGE FOR 0-9 MONTHS CHILDREN', 1.4046E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (104, N'Hexaxim-Varilrix vaccine pack', N'VACCINE PACKAGE FOR 0-9 MONTHS CHILDREN', 1.5448E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (105, N'Infanrix-Varilrix vaccine pack', N'VACCINE PACKAGE FOR 0-9 MONTHS CHILDREN', 1.5328E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (106, N'Pentaxim-Varilrix vaccine pack', N'VACCINE PACKAGE FOR 0-9 MONTHS CHILDREN', 1.5184E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (201, N'Hexaxim-Rotarix-Varilrix', N'(PACKAGE for 0-12 MONTH babies AND 0-24 MONTH baby pack)', 1.9132E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (202, N'Hexaxim-Rotarix-Varivax', N'(PACKAGE for 0-12 MONTH babies AND 0-24 MONTH baby pack)', 1.7958E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (203, N'Hexaxim-Rotateq-Varilrix', N'(PACKAGE for 0-12 MONTH babies AND 0-24 MONTH baby pack)', 1.9546E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (204, N'Hexaxim-Rotateq-Varivax', N'(PACKAGE for 0-12 MONTH babies AND 0-24 MONTH baby pack)', 1.8372E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (205, N'Infanrix – Rotarix – Varilrix', N'(PACKAGE for 0-12 MONTH babies AND 0-24 MONTH baby pack)', 1.9012E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (206, N'Infanrix – Rotarix – Varivax', N'(PACKAGE for 0-12 MONTH babies AND 0-24 MONTH baby pack)', 1.7838E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (207, N'Infanrix – Rotateq – Varilrix', N'(PACKAGE for 0-12 MONTH babies AND 0-24 MONTH baby pack)', 1.9426E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (208, N'Infanrix – Rotateq – Varivax', N'(PACKAGE for 0-12 MONTH babies AND 0-24 MONTH baby pack)', 1.8252E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (209, N'Pentaxim – Rotarix', N'(PACKAGE for 0-12 MONTH babies AND 0-24 MONTH baby pack)', 1.7694E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (210, N'Pentaxim – Rotateq', N'(PACKAGE for 0-12 MONTH babies AND 0-24 MONTH baby pack)', 1.8108E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (301, N'children 6-24 months', N'List of vaccine packages for children 6-24 months', 1.2918E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (401, N'Hexaxim vaccine pack', N'List of vaccine packages for children 12-24 months', 4566000, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (402, N'Infanrix vaccine pack', N'List of vaccine packages for children 12-24 months', 4525000, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (403, N'Pentaxim vaccine pack', N'List of vaccine packages for children 12-24 months', 4241000, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (501, N'children before school vaccine', N'LIST OF VACCIUM PACKAGES FOR CHILDREN BEFORE SCHOOL', 6822000, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (601, N' Adolescents Vaccines', N'PACKAGE LIST OF Adolescents . Vaccines', 1.2078E+07, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (701, N'adults vaccine', N'LIST OF PACKAGES FOR adults', 8420000, 1)
INSERT [dbo].[VaccinePackage] ([PackageID], [PackageName], [Detail], [PackagePrice], [status]) VALUES (801, N'pregnancy women vaccine', N'VACCINE PACKAGE FOR PREGNANCY WOMEN', 5360000, 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Account__536C85E4FE84E090]    Script Date: 3/7/2022 5:09:32 PM ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [UQ__Account__536C85E4FE84E090] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Customer]    Script Date: 3/7/2022 5:09:32 PM ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [IX_Customer] UNIQUE NONCLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Doctor] ADD  CONSTRAINT [DF__Doctor__Gender__2D27B809]  DEFAULT ((1)) FOR [Gender]
GO
ALTER TABLE [dbo].[Doctor] ADD  CONSTRAINT [DF_Doctor_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Vaccine] ADD  CONSTRAINT [DF_Vaccine_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[VaccinePackage] ADD  CONSTRAINT [DF_VaccinePackage_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK__Admin__AccountID__276EDEB3] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK__Admin__AccountID__276EDEB3]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK__Bill__CustomerID__3C69FB99] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK__Bill__CustomerID__3C69FB99]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK__Bill__vaccineId__3E52440B] FOREIGN KEY([vaccineId])
REFERENCES [dbo].[Vaccine] ([vaccineId])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK__Bill__vaccineId__3E52440B]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_vaccinepackage] FOREIGN KEY([PackageID])
REFERENCES [dbo].[VaccinePackage] ([PackageID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_vaccinepackage]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK__Customer__Accoun__2A4B4B5E] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK__Customer__Accoun__2A4B4B5E]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK__Doctor__AccountI__2E1BDC42] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK__Doctor__AccountI__2E1BDC42]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK__Feedback__Custom__30F848ED] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK__Feedback__Custom__30F848ED]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK__Feedback__Doctor__31EC6D26] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctor] ([DoctorID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK__Feedback__Doctor__31EC6D26]
GO
ALTER TABLE [dbo].[HealthForm]  WITH CHECK ADD  CONSTRAINT [FK__HealthFor__Custo__49C3F6B7] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[HealthForm] CHECK CONSTRAINT [FK__HealthFor__Custo__49C3F6B7]
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD  CONSTRAINT [FK__MedicalRe__Docto__45F365D3] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctor] ([DoctorID])
GO
ALTER TABLE [dbo].[MedicalRecord] CHECK CONSTRAINT [FK__MedicalRe__Docto__45F365D3]
GO
ALTER TABLE [dbo].[MedicalRecord]  WITH CHECK ADD  CONSTRAINT [FK__MedicalRe__Reser__46E78A0C] FOREIGN KEY([ReservationID])
REFERENCES [dbo].[Reservation] ([ReservationID])
GO
ALTER TABLE [dbo].[MedicalRecord] CHECK CONSTRAINT [FK__MedicalRe__Reser__46E78A0C]
GO
ALTER TABLE [dbo].[PackageDetail]  WITH CHECK ADD  CONSTRAINT [FK__PackageDe__Packa__398D8EEE] FOREIGN KEY([PackageID])
REFERENCES [dbo].[VaccinePackage] ([PackageID])
GO
ALTER TABLE [dbo].[PackageDetail] CHECK CONSTRAINT [FK__PackageDe__Packa__398D8EEE]
GO
ALTER TABLE [dbo].[PackageDetail]  WITH CHECK ADD  CONSTRAINT [FK__PackageDe__vacci__38996AB5] FOREIGN KEY([vaccineId])
REFERENCES [dbo].[Vaccine] ([vaccineId])
GO
ALTER TABLE [dbo].[PackageDetail] CHECK CONSTRAINT [FK__PackageDe__vacci__38996AB5]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK__Reservati__SlotI__4316F928] FOREIGN KEY([SlotID])
REFERENCES [dbo].[Slot] ([SlotID])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK__Reservati__SlotI__4316F928]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Customer]
GO
USE [master]
GO
ALTER DATABASE [Fvax] SET  READ_WRITE 
GO
