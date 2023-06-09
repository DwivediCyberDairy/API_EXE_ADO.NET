USE [master]
GO
/****** Object:  Database [Anupam]    Script Date: 17-04-2023 17:09:02 ******/
CREATE DATABASE [Anupam]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Anupam', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Anupam.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Anupam_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Anupam_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Anupam] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Anupam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Anupam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Anupam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Anupam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Anupam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Anupam] SET ARITHABORT OFF 
GO
ALTER DATABASE [Anupam] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Anupam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Anupam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Anupam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Anupam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Anupam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Anupam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Anupam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Anupam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Anupam] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Anupam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Anupam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Anupam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Anupam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Anupam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Anupam] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Anupam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Anupam] SET RECOVERY FULL 
GO
ALTER DATABASE [Anupam] SET  MULTI_USER 
GO
ALTER DATABASE [Anupam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Anupam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Anupam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Anupam] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Anupam] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Anupam] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Anupam', N'ON'
GO
ALTER DATABASE [Anupam] SET QUERY_STORE = OFF
GO
USE [Anupam]
GO
/****** Object:  Table [dbo].[AnupLogin]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnupLogin](
	[UserId] [varchar](50) NULL,
	[Passwords] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Case1]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Case1](
	[CaseId] [int] IDENTITY(1,1) NOT NULL,
	[Rupes] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casestore]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casestore](
	[caseId] [int] NULL,
	[totalCase] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caset1]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caset1](
	[CaseId] [int] IDENTITY(1,1) NOT NULL,
	[Rupees] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caset2]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caset2](
	[CaseId] [int] IDENTITY(1,1) NOT NULL,
	[Rupees] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caset3]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caset3](
	[CaseId] [int] IDENTITY(1,1) NOT NULL,
	[Rupees] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityMaster]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityMaster](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Degingnation]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Degingnation](
	[DgId] [int] NULL,
	[DegingnationName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[GenderId] [int] NULL,
	[GenderName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender1]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender1](
	[GenderId] [int] IDENTITY(1,1) NOT NULL,
	[GenderName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login1]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login1](
	[UserId] [varchar](50) NULL,
	[Passwords] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSP]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSP](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[FName] [varchar](50) NULL,
	[AadharNo] [varchar](50) NULL,
	[Addresss] [varchar](50) NULL,
	[Pincode] [int] NULL,
	[MobNo] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[GenderId] [int] NULL,
	[DOB] [datetime] NULL,
	[Captcha] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSPLogin]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSPLogin](
	[LoginId] [varchar](50) NULL,
	[Passwords] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSPPortal1]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSPPortal1](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[FName] [varchar](50) NULL,
	[AadharNo] [varchar](50) NULL,
	[Addresss] [varchar](50) NULL,
	[Pincode] [int] NULL,
	[MobNo] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[GenderId] [int] NULL,
	[DOB] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSPPortal2]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSPPortal2](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[FName] [varchar](50) NULL,
	[AadharNo] [varchar](50) NULL,
	[Addresss] [varchar](50) NULL,
	[Pincode] [int] NULL,
	[MobNo] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[GenderId] [int] NULL,
	[DOB] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_CityMaster]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_CityMaster](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_CollegeMaster]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_CollegeMaster](
	[CollegeId] [int] IDENTITY(1,1) NOT NULL,
	[CollegeName] [varchar](255) NULL,
	[CollegeMedium] [int] NULL,
	[ReletedCity] [int] NULL,
	[IsDel] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CollegeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_CollegeMedium]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_CollegeMedium](
	[MediumId] [int] IDENTITY(1,1) NOT NULL,
	[MediumType] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MediumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_CourseCategoryMaster]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_CourseCategoryMaster](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CourseCategory] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_CourseMaster]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_CourseMaster](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](50) NULL,
	[RelatedCategory] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_Login]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_Login](
	[UserId] [varchar](100) NOT NULL,
	[Password] [varchar](50) NULL,
	[Log_Count] [int] NULL,
	[Log_Date] [datetime] NULL,
	[Log_IP] [nvarchar](100) NULL,
	[IsDel] [bit] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Owl_Login] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_Status]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_Status](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_StatusMaster]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_StatusMaster](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_StudentDetails]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_StudentDetails](
	[StudentId] [varchar](100) NOT NULL,
	[FatherName] [varchar](50) NULL,
	[ProfilePic] [varchar](50) NULL,
	[FolderName] [varchar](50) NULL,
	[Year_Of_Pass] [date] NULL,
	[MobileNo] [varchar](50) NULL,
 CONSTRAINT [PK_Owl_StudentDetails] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_StudentMaster]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_StudentMaster](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[Email] [varchar](100) NOT NULL,
	[MobileNo] [varchar](50) NULL,
	[AadharNo] [varchar](20) NULL,
	[DOB] [datetime] NULL,
	[StudentAddress] [nvarchar](255) NULL,
	[ReletedCity] [int] NULL,
	[CollegeName] [int] NULL,
	[Category] [int] NULL,
	[Course] [int] NULL,
	[RegDT] [datetime] NULL,
	[StudentStatus] [int] NULL,
	[Remark] [varchar](50) NULL,
	[IsDel] [bit] NULL,
	[Fee] [int] NULL,
	[Passwords] [varchar](50) NULL,
 CONSTRAINT [PK_Owl_StudentMaster] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_StudentPic]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_StudentPic](
	[StudentId] [varchar](100) NOT NULL,
	[PicName] [varchar](50) NULL,
	[FolderName] [varchar](50) NULL,
	[DocName] [varchar](50) NULL,
 CONSTRAINT [PK_Owl_StudentPic] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owl_TblStuentDoc]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owl_TblStuentDoc](
	[StudentId] [int] NULL,
	[FolderPath] [varchar](100) NULL,
	[DocName] [varchar](50) NULL,
	[UploadedDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stateabp]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stateabp](
	[StateId] [int] NULL,
	[StateName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[FName] [varchar](50) NULL,
	[Addresss] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[MobileNo] [varchar](50) NULL,
	[StateId] [int] NULL,
	[DgId] [int] NULL,
	[DOB] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test1]    Script Date: 17-04-2023 17:09:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test1](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[Addresss] [varchar](50) NULL,
	[MobileNo] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[StateId] [int] NULL,
	[Files] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Case1] ON 

INSERT [dbo].[Case1] ([CaseId], [Rupes]) VALUES (1, 22)
INSERT [dbo].[Case1] ([CaseId], [Rupes]) VALUES (2, 23)
INSERT [dbo].[Case1] ([CaseId], [Rupes]) VALUES (3, 24)
INSERT [dbo].[Case1] ([CaseId], [Rupes]) VALUES (4, 11)
INSERT [dbo].[Case1] ([CaseId], [Rupes]) VALUES (5, 11)
INSERT [dbo].[Case1] ([CaseId], [Rupes]) VALUES (6, 10)
SET IDENTITY_INSERT [dbo].[Case1] OFF
GO
SET IDENTITY_INSERT [dbo].[caset1] ON 

INSERT [dbo].[caset1] ([CaseId], [Rupees]) VALUES (1, 1)
INSERT [dbo].[caset1] ([CaseId], [Rupees]) VALUES (2, 2)
INSERT [dbo].[caset1] ([CaseId], [Rupees]) VALUES (3, 3)
INSERT [dbo].[caset1] ([CaseId], [Rupees]) VALUES (4, 4)
INSERT [dbo].[caset1] ([CaseId], [Rupees]) VALUES (5, 5)
INSERT [dbo].[caset1] ([CaseId], [Rupees]) VALUES (6, 6)
INSERT [dbo].[caset1] ([CaseId], [Rupees]) VALUES (7, 7)
INSERT [dbo].[caset1] ([CaseId], [Rupees]) VALUES (8, 8)
INSERT [dbo].[caset1] ([CaseId], [Rupees]) VALUES (9, 9)
INSERT [dbo].[caset1] ([CaseId], [Rupees]) VALUES (10, 10)
INSERT [dbo].[caset1] ([CaseId], [Rupees]) VALUES (11, 11)
SET IDENTITY_INSERT [dbo].[caset1] OFF
GO
SET IDENTITY_INSERT [dbo].[caset2] ON 

INSERT [dbo].[caset2] ([CaseId], [Rupees]) VALUES (1, 1)
INSERT [dbo].[caset2] ([CaseId], [Rupees]) VALUES (2, 2)
INSERT [dbo].[caset2] ([CaseId], [Rupees]) VALUES (3, 3)
INSERT [dbo].[caset2] ([CaseId], [Rupees]) VALUES (4, 4)
INSERT [dbo].[caset2] ([CaseId], [Rupees]) VALUES (5, 5)
INSERT [dbo].[caset2] ([CaseId], [Rupees]) VALUES (6, 6)
INSERT [dbo].[caset2] ([CaseId], [Rupees]) VALUES (7, 7)
INSERT [dbo].[caset2] ([CaseId], [Rupees]) VALUES (8, 8)
INSERT [dbo].[caset2] ([CaseId], [Rupees]) VALUES (9, 9)
INSERT [dbo].[caset2] ([CaseId], [Rupees]) VALUES (10, 10)
SET IDENTITY_INSERT [dbo].[caset2] OFF
GO
SET IDENTITY_INSERT [dbo].[caset3] ON 

INSERT [dbo].[caset3] ([CaseId], [Rupees]) VALUES (1, 1)
INSERT [dbo].[caset3] ([CaseId], [Rupees]) VALUES (2, 2)
INSERT [dbo].[caset3] ([CaseId], [Rupees]) VALUES (3, 3)
INSERT [dbo].[caset3] ([CaseId], [Rupees]) VALUES (4, 4)
INSERT [dbo].[caset3] ([CaseId], [Rupees]) VALUES (5, 5)
INSERT [dbo].[caset3] ([CaseId], [Rupees]) VALUES (6, 6)
INSERT [dbo].[caset3] ([CaseId], [Rupees]) VALUES (7, 7)
INSERT [dbo].[caset3] ([CaseId], [Rupees]) VALUES (8, 8)
INSERT [dbo].[caset3] ([CaseId], [Rupees]) VALUES (9, 9)
INSERT [dbo].[caset3] ([CaseId], [Rupees]) VALUES (10, 10)
SET IDENTITY_INSERT [dbo].[caset3] OFF
GO
SET IDENTITY_INSERT [dbo].[CityMaster] ON 

INSERT [dbo].[CityMaster] ([CityId], [CityName]) VALUES (1, N'Delhi')
INSERT [dbo].[CityMaster] ([CityId], [CityName]) VALUES (2, N'Noida')
INSERT [dbo].[CityMaster] ([CityId], [CityName]) VALUES (3, N'Prayagraj')
INSERT [dbo].[CityMaster] ([CityId], [CityName]) VALUES (4, N'Bhopal')
INSERT [dbo].[CityMaster] ([CityId], [CityName]) VALUES (5, N'Indore')
INSERT [dbo].[CityMaster] ([CityId], [CityName]) VALUES (6, N'Nagpur')
INSERT [dbo].[CityMaster] ([CityId], [CityName]) VALUES (7, N'Pune ')
SET IDENTITY_INSERT [dbo].[CityMaster] OFF
GO
INSERT [dbo].[Degingnation] ([DgId], [DegingnationName]) VALUES (1, N'HR')
INSERT [dbo].[Degingnation] ([DgId], [DegingnationName]) VALUES (2, N'Maneger')
INSERT [dbo].[Degingnation] ([DgId], [DegingnationName]) VALUES (3, N'Chaprashi')
INSERT [dbo].[Degingnation] ([DgId], [DegingnationName]) VALUES (4, N'TL')
GO
SET IDENTITY_INSERT [dbo].[Gender1] ON 

INSERT [dbo].[Gender1] ([GenderId], [GenderName]) VALUES (1, N'Male')
INSERT [dbo].[Gender1] ([GenderId], [GenderName]) VALUES (2, N'Female')
INSERT [dbo].[Gender1] ([GenderId], [GenderName]) VALUES (3, N'Others')
SET IDENTITY_INSERT [dbo].[Gender1] OFF
GO
INSERT [dbo].[Login1] ([UserId], [Passwords]) VALUES (N'anupkumar734854@gmail.com', N'Qwer@123')
GO
INSERT [dbo].[NSPLogin] ([LoginId], [Passwords]) VALUES (N'anupkumar734854@gmail.com', N'Anup@123')
INSERT [dbo].[NSPLogin] ([LoginId], [Passwords]) VALUES (N'atulkumar9795@gmail.com', N'Atul@123')
INSERT [dbo].[NSPLogin] ([LoginId], [Passwords]) VALUES (N'Pramod.growel@gmail.com', N'Anup@123')
INSERT [dbo].[NSPLogin] ([LoginId], [Passwords]) VALUES (N'prmod.growel@gmail.com', N'Prmod1@1')
GO
SET IDENTITY_INSERT [dbo].[NSPPortal2] ON 

INSERT [dbo].[NSPPortal2] ([StudentId], [StudentName], [FName], [AadharNo], [Addresss], [Pincode], [MobNo], [Email], [GenderId], [DOB]) VALUES (1009, N'Pramod', N'hhhhhhh', N'5554447788883', N'Sultanpur', 228145, N'7800457815', N'Pramod.growel@gmail.com', 0, CAST(N'2023-03-31T00:00:00.000' AS DateTime))
INSERT [dbo].[NSPPortal2] ([StudentId], [StudentName], [FName], [AadharNo], [Addresss], [Pincode], [MobNo], [Email], [GenderId], [DOB]) VALUES (1011, N'Anupam kumar', N'Ram Shabd', N'123654789123', N'Sultanpur', 228145, N'7348547604', N'amitkumar9628@gmail.com', 0, CAST(N'2023-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[NSPPortal2] ([StudentId], [StudentName], [FName], [AadharNo], [Addresss], [Pincode], [MobNo], [Email], [GenderId], [DOB]) VALUES (18, N'Anupam', N'BABA', N'45124785236123', N'Orai', 226513, N'7800458725', N'priyambaba45@gmail.com', 0, CAST(N'2023-03-04T00:00:00.000' AS DateTime))
INSERT [dbo].[NSPPortal2] ([StudentId], [StudentName], [FName], [AadharNo], [Addresss], [Pincode], [MobNo], [Email], [GenderId], [DOB]) VALUES (1017, N'Amit kumar', N'Ram Shabd', N'123654789123', N'Sultanpur', 228145, N'9628899332', N'amitkumar9628@gmail.com', 2, CAST(N'2023-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[NSPPortal2] ([StudentId], [StudentName], [FName], [AadharNo], [Addresss], [Pincode], [MobNo], [Email], [GenderId], [DOB]) VALUES (1013, N'Amit kumar', N'Ram Shabd', N'123654789123', N'ghfghfhfh', 228145, N'9628899332', N'amitkumar9628@gmail.com', 0, CAST(N'2023-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[NSPPortal2] ([StudentId], [StudentName], [FName], [AadharNo], [Addresss], [Pincode], [MobNo], [Email], [GenderId], [DOB]) VALUES (1019, N'Ajeet', N'BABA', N'5554447788883', N'Orai', 123456, N'44444444444', N'priyambaba45@gmail.com', 0, CAST(N'2023-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[NSPPortal2] ([StudentId], [StudentName], [FName], [AadharNo], [Addresss], [Pincode], [MobNo], [Email], [GenderId], [DOB]) VALUES (1020, N'Anupam', N'RamNewal', N'233133412570', N'Sultanpur', 228145, N'7348547604', N'anupkumar734854@gmail.com', 1, CAST(N'2023-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[NSPPortal2] ([StudentId], [StudentName], [FName], [AadharNo], [Addresss], [Pincode], [MobNo], [Email], [GenderId], [DOB]) VALUES (1012, N'Amit kumar', N'Ram Shabd', N'123654789123', N'hjhjhjhj', 228145, N'9628899332', N'amitkumar9628@gmail.com', 0, CAST(N'2023-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[NSPPortal2] ([StudentId], [StudentName], [FName], [AadharNo], [Addresss], [Pincode], [MobNo], [Email], [GenderId], [DOB]) VALUES (1018, N'fdssd', N'Ram Shabd', N'123654789123', N'Sultanpur', 228145, N'9628899332', N'amitkumar9628@gmail.com', 0, CAST(N'2023-03-05T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[NSPPortal2] OFF
GO
SET IDENTITY_INSERT [dbo].[Owl_CityMaster] ON 

INSERT [dbo].[Owl_CityMaster] ([CityId], [CityName]) VALUES (1, N'Jhanshi')
INSERT [dbo].[Owl_CityMaster] ([CityId], [CityName]) VALUES (2, N'Sultanpur')
INSERT [dbo].[Owl_CityMaster] ([CityId], [CityName]) VALUES (3, N'Prayagraj')
INSERT [dbo].[Owl_CityMaster] ([CityId], [CityName]) VALUES (4, N'Mirzapur')
INSERT [dbo].[Owl_CityMaster] ([CityId], [CityName]) VALUES (5, N'Indore')
INSERT [dbo].[Owl_CityMaster] ([CityId], [CityName]) VALUES (6, N'Delhi')
INSERT [dbo].[Owl_CityMaster] ([CityId], [CityName]) VALUES (7, N'Kota')
SET IDENTITY_INSERT [dbo].[Owl_CityMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Owl_CollegeMaster] ON 

INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (1, N'MJPGP_Kaushambi', 2, 3, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (2, N'ALU', 3, 3, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (3, N'BU', 3, 1, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (4, N'BHU', 3, 3, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (5, N'MCU', 3, 5, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (6, N'AKTU', 3, 3, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (7, N'SVSU', 3, 1, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (8, N'AKS', 3, 5, 0)
INSERT [dbo].[Owl_CollegeMaster] ([CollegeId], [CollegeName], [CollegeMedium], [ReletedCity], [IsDel]) VALUES (9, N'AIM', 3, 6, 0)
SET IDENTITY_INSERT [dbo].[Owl_CollegeMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Owl_CollegeMedium] ON 

INSERT [dbo].[Owl_CollegeMedium] ([MediumId], [MediumType]) VALUES (1, N'Hindi')
INSERT [dbo].[Owl_CollegeMedium] ([MediumId], [MediumType]) VALUES (2, N'English')
INSERT [dbo].[Owl_CollegeMedium] ([MediumId], [MediumType]) VALUES (3, N'Both')
SET IDENTITY_INSERT [dbo].[Owl_CollegeMedium] OFF
GO
SET IDENTITY_INSERT [dbo].[Owl_CourseCategoryMaster] ON 

INSERT [dbo].[Owl_CourseCategoryMaster] ([CategoryId], [CourseCategory]) VALUES (1, N'Technical')
INSERT [dbo].[Owl_CourseCategoryMaster] ([CategoryId], [CourseCategory]) VALUES (2, N'Finance')
INSERT [dbo].[Owl_CourseCategoryMaster] ([CategoryId], [CourseCategory]) VALUES (3, N'Agriculture')
INSERT [dbo].[Owl_CourseCategoryMaster] ([CategoryId], [CourseCategory]) VALUES (4, N'NonTechnical')
INSERT [dbo].[Owl_CourseCategoryMaster] ([CategoryId], [CourseCategory]) VALUES (5, N'Politics')
INSERT [dbo].[Owl_CourseCategoryMaster] ([CategoryId], [CourseCategory]) VALUES (6, N'Social')
SET IDENTITY_INSERT [dbo].[Owl_CourseCategoryMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Owl_CourseMaster] ON 

INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (1, N'B.Tech', 1)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (2, N'MBA', 2)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (3, N'Polytechnic', 1)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (4, N'BCA', 1)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (5, N'MCA', 1)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (6, N'M.Tech', 1)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (7, N'B.Com', 2)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (8, N'BA', 4)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (9, N'MA', 5)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (10, N'B.Boc', 3)
INSERT [dbo].[Owl_CourseMaster] ([CourseId], [CourseName], [RelatedCategory]) VALUES (11, N'B.ed', 6)
SET IDENTITY_INSERT [dbo].[Owl_CourseMaster] OFF
GO
INSERT [dbo].[Owl_Login] ([UserId], [Password], [Log_Count], [Log_Date], [Log_IP], [IsDel], [Status]) VALUES (N'abp243@gmail.com', N'Anup@123', 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', 0, 1)
INSERT [dbo].[Owl_Login] ([UserId], [Password], [Log_Count], [Log_Date], [Log_IP], [IsDel], [Status]) VALUES (N'ajeetkumar739878@gmail.com', N'Ajeet@12', 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', 0, 1)
INSERT [dbo].[Owl_Login] ([UserId], [Password], [Log_Count], [Log_Date], [Log_IP], [IsDel], [Status]) VALUES (N'amitkumar6354@gmail.com', N'Amit@123', 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', 0, 1)
INSERT [dbo].[Owl_Login] ([UserId], [Password], [Log_Count], [Log_Date], [Log_IP], [IsDel], [Status]) VALUES (N'anupkumar734854@gmail.com', N'Anup@123', 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', 0, 1)
INSERT [dbo].[Owl_Login] ([UserId], [Password], [Log_Count], [Log_Date], [Log_IP], [IsDel], [Status]) VALUES (N'priyambaba45@gmail.com', N'Atul@123', 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', 0, 1)
INSERT [dbo].[Owl_Login] ([UserId], [Password], [Log_Count], [Log_Date], [Log_IP], [IsDel], [Status]) VALUES (N'prmod.growel@gmail.com', N'Prmo@123', 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', 0, 1)
INSERT [dbo].[Owl_Login] ([UserId], [Password], [Log_Count], [Log_Date], [Log_IP], [IsDel], [Status]) VALUES (N'shivamyadav5476@gmail.com', N'Shiv@123', 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Owl_Status] ON 

INSERT [dbo].[Owl_Status] ([StatusId], [Status]) VALUES (1, N'Active')
INSERT [dbo].[Owl_Status] ([StatusId], [Status]) VALUES (2, N'Draft')
INSERT [dbo].[Owl_Status] ([StatusId], [Status]) VALUES (3, N'Pending')
INSERT [dbo].[Owl_Status] ([StatusId], [Status]) VALUES (4, N'Hold')
INSERT [dbo].[Owl_Status] ([StatusId], [Status]) VALUES (5, N'Close')
SET IDENTITY_INSERT [dbo].[Owl_Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Owl_StatusMaster] ON 

INSERT [dbo].[Owl_StatusMaster] ([StatusId], [StatusType]) VALUES (1, N'Active')
INSERT [dbo].[Owl_StatusMaster] ([StatusId], [StatusType]) VALUES (2, N'De-Active')
SET IDENTITY_INSERT [dbo].[Owl_StatusMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Owl_StudentMaster] ON 

INSERT [dbo].[Owl_StudentMaster] ([StudentId], [StudentName], [Email], [MobileNo], [AadharNo], [DOB], [StudentAddress], [ReletedCity], [CollegeName], [Category], [Course], [RegDT], [StudentStatus], [Remark], [IsDel], [Fee], [Passwords]) VALUES (29, N'Anupam Kumar', N'abp243@gmail.com', N'7348547604', N'233133412570', CAST(N'2001-07-26T00:00:00.000' AS DateTime), N'Paliyadewapur', 3, 1, 3, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1, N'', 0, 4525, N'Anup@123')
INSERT [dbo].[Owl_StudentMaster] ([StudentId], [StudentName], [Email], [MobileNo], [AadharNo], [DOB], [StudentAddress], [ReletedCity], [CollegeName], [Category], [Course], [RegDT], [StudentStatus], [Remark], [IsDel], [Fee], [Passwords]) VALUES (26, N'Ajeet Kumar', N'ajeetkumar739878@gmail.com', N'7398780003', N'124578963832', CAST(N'2023-04-12T00:00:00.000' AS DateTime), N'Allahabaad', 3, 4, 1, 5, CAST(N'2023-04-12T11:04:09.007' AS DateTime), 1, N'', 0, 78000, N'Ajeet@12')
INSERT [dbo].[Owl_StudentMaster] ([StudentId], [StudentName], [Email], [MobileNo], [AadharNo], [DOB], [StudentAddress], [ReletedCity], [CollegeName], [Category], [Course], [RegDT], [StudentStatus], [Remark], [IsDel], [Fee], [Passwords]) VALUES (28, N'Amit', N'amitkumar6354@gmail.com', N'9628899332', N'124578963832', CAST(N'2023-04-15T00:00:00.000' AS DateTime), N'Paliyadewapur', 3, 1, 1, 5, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1, N'', 0, 45562, N'Amit@123')
INSERT [dbo].[Owl_StudentMaster] ([StudentId], [StudentName], [Email], [MobileNo], [AadharNo], [DOB], [StudentAddress], [ReletedCity], [CollegeName], [Category], [Course], [RegDT], [StudentStatus], [Remark], [IsDel], [Fee], [Passwords]) VALUES (25, N'Anupam Kumar', N'anupkumar734854@gmail.com', N'7348547604', N'233133412570', CAST(N'2023-04-10T00:00:00.000' AS DateTime), N'Paliyadewapur', 5, 5, 2, 2, CAST(N'2023-04-10T18:18:23.437' AS DateTime), 1, N'', 0, 4282, N'Anup@123')
INSERT [dbo].[Owl_StudentMaster] ([StudentId], [StudentName], [Email], [MobileNo], [AadharNo], [DOB], [StudentAddress], [ReletedCity], [CollegeName], [Category], [Course], [RegDT], [StudentStatus], [Remark], [IsDel], [Fee], [Passwords]) VALUES (21, N'Atul kumar', N'priyambaba45@gmail.com', N'7348547604', N'45124785236123', CAST(N'2023-04-08T00:00:00.000' AS DateTime), N'Muradabaad', 4, 9, 1, 6, CAST(N'2023-04-08T11:28:52.577' AS DateTime), 1, N'', 0, 7800, N'Atul@123')
INSERT [dbo].[Owl_StudentMaster] ([StudentId], [StudentName], [Email], [MobileNo], [AadharNo], [DOB], [StudentAddress], [ReletedCity], [CollegeName], [Category], [Course], [RegDT], [StudentStatus], [Remark], [IsDel], [Fee], [Passwords]) VALUES (22, N'Prmod sir', N'prmod.growel@gmail.com', N'9628899332', N'5554447788883', CAST(N'2023-04-09T00:00:00.000' AS DateTime), N'Paliyadewapur', 3, 6, 1, 6, CAST(N'2023-04-08T11:34:00.087' AS DateTime), 1, N'', 0, 452222, N'Prmo@123')
INSERT [dbo].[Owl_StudentMaster] ([StudentId], [StudentName], [Email], [MobileNo], [AadharNo], [DOB], [StudentAddress], [ReletedCity], [CollegeName], [Category], [Course], [RegDT], [StudentStatus], [Remark], [IsDel], [Fee], [Passwords]) VALUES (27, N'Shivam Yadav', N'shivamyadav5476@gmail.com', N'7398780003', N'124578963832', CAST(N'2023-04-13T00:00:00.000' AS DateTime), N'Chilbila', 4, 6, 2, 2, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1, N'', 0, 12004, N'Shiv@123')
SET IDENTITY_INSERT [dbo].[Owl_StudentMaster] OFF
GO
INSERT [dbo].[Owl_StudentPic] ([StudentId], [PicName], [FolderName], [DocName]) VALUES (N'abp243@gmail.com', N'29_Anupam.jpg', N'D:\AnupamKumar\pramodSourceSystem\images\29_Anupam', N'')
INSERT [dbo].[Owl_StudentPic] ([StudentId], [PicName], [FolderName], [DocName]) VALUES (N'ajeetkumar739878@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Owl_StudentPic] ([StudentId], [PicName], [FolderName], [DocName]) VALUES (N'amitkumar6354@gmail.com', N'28_Anupam.jpg', N'D:\AnupamKumar\pramodSourceSystem\images\28_Anupam', N'')
INSERT [dbo].[Owl_StudentPic] ([StudentId], [PicName], [FolderName], [DocName]) VALUES (N'anupkumar734854@gmail.com', N'25_Anupam.jpg', N'D:\AnupamKumar\pramodSourceSystem\images\25_Anupam', N'')
INSERT [dbo].[Owl_StudentPic] ([StudentId], [PicName], [FolderName], [DocName]) VALUES (N'priyambaba45@gmail.com', N'21_Atul.jpg', N'D:\AnupamKumar\pramodSourceSystem\images\21_Atul.j', N'')
INSERT [dbo].[Owl_StudentPic] ([StudentId], [PicName], [FolderName], [DocName]) VALUES (N'prmod.growel@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Owl_StudentPic] ([StudentId], [PicName], [FolderName], [DocName]) VALUES (N'shivamyadav5476@gmail.com', N'27_Atul.jpg', N'D:\AnupamKumar\pramodSourceSystem\images\27_Atul.j', N'')
GO
INSERT [dbo].[Stateabp] ([StateId], [StateName]) VALUES (1, N'Asham')
INSERT [dbo].[Stateabp] ([StateId], [StateName]) VALUES (2, N'Bihaar')
INSERT [dbo].[Stateabp] ([StateId], [StateName]) VALUES (3, N'Uttar_Pradesh')
INSERT [dbo].[Stateabp] ([StateId], [StateName]) VALUES (4, N'Madhay_Pradesh')
INSERT [dbo].[Stateabp] ([StateId], [StateName]) VALUES (5, N'GujRaat')
INSERT [dbo].[Stateabp] ([StateId], [StateName]) VALUES (6, N'PanJab')
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentId], [StudentName], [FName], [Addresss], [Email], [MobileNo], [StateId], [DgId], [DOB]) VALUES (37, N'Anupam', N'Ramnewal', N'Plaiyadewapur', N'anupkumar734854@gmail.com', N'7348547604', 3, 1, CAST(N'2001-07-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([StudentId], [StudentName], [FName], [Addresss], [Email], [MobileNo], [StateId], [DgId], [DOB]) VALUES (39, N'Amit kumar', N'Ram Shabd', N'Plaiyadewapur', N'amitkumar9628@gmail.com', N'9628899332', 3, 1, CAST(N'2004-07-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([StudentId], [StudentName], [FName], [Addresss], [Email], [MobileNo], [StateId], [DgId], [DOB]) VALUES (40, N'ada', N'', N'sdas', N'asdas', N'', 2, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([StudentId], [StudentName], [FName], [Addresss], [Email], [MobileNo], [StateId], [DgId], [DOB]) VALUES (41, N'Anupam kumar', N'', N'Paliyadewapur', N'anupkumar734854@gmail.com', N'', 3, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([StudentId], [StudentName], [FName], [Addresss], [Email], [MobileNo], [StateId], [DgId], [DOB]) VALUES (42, N'Anupam kumar', N'', N'Paliyadewapur', N'anupkumar734854@gmail.com', N'', 3, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([StudentId], [StudentName], [FName], [Addresss], [Email], [MobileNo], [StateId], [DgId], [DOB]) VALUES (32, N'Ajeet', N'Rajendra', N'Allahabaad', N'atulkumar8881@gmail.com', N'9628899332', 2, 2, CAST(N'2005-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([StudentId], [StudentName], [FName], [Addresss], [Email], [MobileNo], [StateId], [DgId], [DOB]) VALUES (43, N'Anupam kumar', N'', N'Paliyadewapur', N'anupkumar734854@gmail.com', N'', 3, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([StudentId], [StudentName], [FName], [Addresss], [Email], [MobileNo], [StateId], [DgId], [DOB]) VALUES (44, NULL, NULL, NULL, NULL, NULL, NULL, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([StudentId], [StudentName], [FName], [Addresss], [Email], [MobileNo], [StateId], [DgId], [DOB]) VALUES (45, NULL, NULL, NULL, NULL, NULL, NULL, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([StudentId], [StudentName], [FName], [Addresss], [Email], [MobileNo], [StateId], [DgId], [DOB]) VALUES (33, N'Nandni', N'Rajesh', N'MaaliPur', N'anupkumar734854@gmail.com', N'9795546361', 3, 4, CAST(N'2001-07-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([StudentId], [StudentName], [FName], [Addresss], [Email], [MobileNo], [StateId], [DgId], [DOB]) VALUES (34, N'Anupam', N'Ram Newal', N'Paliyadewapur', N'anupkumar734854@gmail.com', N'7348547604', 3, 2, CAST(N'2001-07-26T00:00:00.000' AS DateTime))
INSERT [dbo].[Student] ([StudentId], [StudentName], [FName], [Addresss], [Email], [MobileNo], [StateId], [DgId], [DOB]) VALUES (38, N'Anupam', N'Ramnewal', N'Plaiyadewapur', N'anupkumar734854@gmail.com', N'7348547604', 2, 4, CAST(N'2001-07-26T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Test1] ON 

INSERT [dbo].[Test1] ([StudentId], [StudentName], [Addresss], [MobileNo], [Email], [StateId], [Files]) VALUES (1013, N'Manoj kumar', N'Gorakhpur', N'55555555', N'manojkumar433@gmail.com', 3, N'lotestempl.jpg')
INSERT [dbo].[Test1] ([StudentId], [StudentName], [Addresss], [MobileNo], [Email], [StateId], [Files]) VALUES (1014, N'Anupam kumar', N'Paliyadewapur', N'7348547604', N'anupkumar734854@gmail.com', 3, N'India.jpg')
SET IDENTITY_INSERT [dbo].[Test1] OFF
GO
ALTER TABLE [dbo].[Owl_CollegeMaster]  WITH CHECK ADD FOREIGN KEY([CollegeMedium])
REFERENCES [dbo].[Owl_CollegeMedium] ([MediumId])
GO
ALTER TABLE [dbo].[Owl_CollegeMaster]  WITH CHECK ADD FOREIGN KEY([ReletedCity])
REFERENCES [dbo].[Owl_CityMaster] ([CityId])
GO
ALTER TABLE [dbo].[Owl_CourseMaster]  WITH CHECK ADD FOREIGN KEY([RelatedCategory])
REFERENCES [dbo].[Owl_CourseCategoryMaster] ([CategoryId])
GO
ALTER TABLE [dbo].[Owl_Login]  WITH CHECK ADD  CONSTRAINT [FK_Owl_Login_Owl_StatusMaster] FOREIGN KEY([Status])
REFERENCES [dbo].[Owl_StatusMaster] ([StatusId])
GO
ALTER TABLE [dbo].[Owl_Login] CHECK CONSTRAINT [FK_Owl_Login_Owl_StatusMaster]
GO
ALTER TABLE [dbo].[Owl_Login]  WITH CHECK ADD  CONSTRAINT [FK_Owl_Login_Owl_StudentMaster] FOREIGN KEY([UserId])
REFERENCES [dbo].[Owl_StudentMaster] ([Email])
GO
ALTER TABLE [dbo].[Owl_Login] CHECK CONSTRAINT [FK_Owl_Login_Owl_StudentMaster]
GO
ALTER TABLE [dbo].[Owl_StudentDetails]  WITH CHECK ADD  CONSTRAINT [FK_Owl_StudentDetails_Owl_StudentMaster] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Owl_StudentMaster] ([Email])
GO
ALTER TABLE [dbo].[Owl_StudentDetails] CHECK CONSTRAINT [FK_Owl_StudentDetails_Owl_StudentMaster]
GO
ALTER TABLE [dbo].[Owl_StudentMaster]  WITH CHECK ADD  CONSTRAINT [FK__Owl_Stude__Categ__114A936A] FOREIGN KEY([Category])
REFERENCES [dbo].[Owl_CourseCategoryMaster] ([CategoryId])
GO
ALTER TABLE [dbo].[Owl_StudentMaster] CHECK CONSTRAINT [FK__Owl_Stude__Categ__114A936A]
GO
ALTER TABLE [dbo].[Owl_StudentMaster]  WITH CHECK ADD  CONSTRAINT [FK__Owl_Stude__Colle__10566F31] FOREIGN KEY([CollegeName])
REFERENCES [dbo].[Owl_CollegeMaster] ([CollegeId])
GO
ALTER TABLE [dbo].[Owl_StudentMaster] CHECK CONSTRAINT [FK__Owl_Stude__Colle__10566F31]
GO
ALTER TABLE [dbo].[Owl_StudentMaster]  WITH CHECK ADD  CONSTRAINT [FK__Owl_Stude__Cours__123EB7A3] FOREIGN KEY([Course])
REFERENCES [dbo].[Owl_CourseMaster] ([CourseId])
GO
ALTER TABLE [dbo].[Owl_StudentMaster] CHECK CONSTRAINT [FK__Owl_Stude__Cours__123EB7A3]
GO
ALTER TABLE [dbo].[Owl_StudentMaster]  WITH CHECK ADD  CONSTRAINT [FK__Owl_Stude__Relet__0F624AF8] FOREIGN KEY([ReletedCity])
REFERENCES [dbo].[Owl_CityMaster] ([CityId])
GO
ALTER TABLE [dbo].[Owl_StudentMaster] CHECK CONSTRAINT [FK__Owl_Stude__Relet__0F624AF8]
GO
ALTER TABLE [dbo].[Owl_StudentPic]  WITH CHECK ADD  CONSTRAINT [FK_Owl_StudentPic_Owl_StudentMaster] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Owl_StudentMaster] ([Email])
GO
ALTER TABLE [dbo].[Owl_StudentPic] CHECK CONSTRAINT [FK_Owl_StudentPic_Owl_StudentMaster]
GO
/****** Object:  StoredProcedure [dbo].[abp]    Script Date: 17-04-2023 17:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[abp]
(
	@ind int=0,
	@StudentId int=0,
	@StudentName varchar(50)='',
	@FName varchar(50)='',
	@Addresss varchar(50)='',
	@Email varchar(50)='',
	@MobileNo varchar(50)='',
	@DOB datetime=0,
	@StateId int=0,           
	@DgId int=0
)
As
Begin	
    --select '' StudentId,'' StudentName,'' FName,'' Addresss,'' Email,'' MobileNo,'' StateId,''StateName,''DegingnationName,''DOB
	If(@ind=1)
	  Begin
		Select StateId,StateName From Stateabp
	   End
	if(@ind=2)
	Begin
	      insert into Student Values(@StudentName,@FName,@Addresss,@Email,@MobileNo,@StateId,@DgId,@DOB) 
		   Select '1' SuccessCode,'Data Saved successfully !!!' msg
	End
	if(@ind=3)
	  Begin
		 select s.StudentName,s.FName,s.Addresss,s.Email,s.StudentId,s.MobileNo,b.StateName,d.DegingnationName,cast(s.DOB as date)DOB
		 from Student s
		 inner join Degingnation d on s.DgId=d.DgId
		 inner join Stateabp b on s.StateId=b.StateId
		
	  End
	if(@ind=4)
	Begin
	    Update Student set StudentName=@StudentName,FName=@FName,Addresss=@Addresss,Email=@Email,DOB=@DOB,StateId=@StateId,DgId=@DgId  where StudentId=@StudentId
		select '1' successcode,'Data Update successfully !!!' msg 
	End
	if(@ind=5)
	Begin
	      Delete from Student Where StudentId=@StudentId
		  select '1' successcode,'Data Deleted successfully !!!' msg 
	End
	if(@ind=6)
	Begin
	      select DgId, UPPER(DegingnationName)DegingnationName from Degingnation
		 -- select '1' successcode,'Data Deleted successfully !!!' msg 
	End
End
GO
/****** Object:  StoredProcedure [dbo].[case2]    Script Date: 17-04-2023 17:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[case2]
(
@ind int=0,
@CaseId int=0,
@TotalCase int=0
)
as
Begin
  if(@ind=1)
  begin
      select * from caset1
     select * from caset2
    select * from caset3
	 select * from caset3
	  select * from caset2
	 

   End
End
GO
/****** Object:  StoredProcedure [dbo].[NSP1]    Script Date: 17-04-2023 17:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[NSP1]
(
@Ind int=0,
@StudentId int=0,
@StudentName varchar(50)='',
@FName varchar(50)='',
@AadharNo varchar(50)='',
@Addresss varchar(50)='',
@Pincode int=0,
@MobNo varchar(50)='',
@DOB datetime='1900/01/01',
@Email varchar(50)='',
@GenderId int=0
)
as

Begin
     --select '' StudentId,'' StudentName,'' FName,''AadharNo,''Addresss,''Pincode,''MobNo,''Email,''Gender,''DOB 
if(@Ind=1)
Begin
    Select GenderId,GenderName From Gender1
End
if(@Ind=2)
Begin
   insert into  NSPPortal2 values(@StudentName,@FName,@AadharNo,@Addresss,@Pincode,@MobNo,@Email,@GenderId,@DOB)
    Select '1' SuccessCode,'Data Saved successfully !!!' msg
End
if(@Ind=3)
  begin
       select s.StudentId, s.StudentName,s.FName,s.AadharNo,s.Addresss,s.Pincode,s.MobNo,s.Email,b.GenderName,s.DOB
	   from NSPPortal2 s
	   inner join Gender1 b on s.GenderId=b.GenderId
  End
  if(@Ind=4)
  Begin
      update NSPPortal2 set StudentName=@StudentName,FName=@FName,AadharNo=@AadharNo,Pincode=@Pincode,MobNo=@MobNo,Addresss=@Addresss,Email=@Email,DOB=@DOB,GenderId=@GenderId where StudentId=@StudentId
	  Select '1' SuccessCode,'Data Updated successfully !!!' msg
  End
  if(@Ind=5)
   begin
          Delete from NSPPortal2 where StudentId=@StudentId
		 
   End
End

GO
/****** Object:  StoredProcedure [dbo].[NSPLogin1]    Script Date: 17-04-2023 17:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[NSPLogin1]
(
@Ind int=0,
@LoginId varchar(50)='',
@Password varchar(50)=''
)
As
BEgin
if(@Ind=1)
Begin
insert into NSPLogin  values(@LoginId,@Password)
  Select '1' SuccessCode,'Login successfully !!!' msg
  End
 if(@Ind=2)
   begin
       Update NSPLogin set Passwords=@Password where LoginId=@LoginId
	    select '1' successcode,'Forget successfully !!!' msg 
 End
 End
GO
/****** Object:  StoredProcedure [dbo].[poojaLogin]    Script Date: 17-04-2023 17:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[poojaLogin]
(
@Ind int=0,
@UserId varchar(50)='',
@Passwords varchar(50)=''
)
as
Begin
if(@Ind=1)
Begin
insert into Login1 values(@UserId,@Passwords)
 Select '1' SuccessCode,'Login successfully !!!' msg
End
  if(@Ind=2)
  BEgin
       Update Login1 set Passwords=@Passwords where UserId=@UserId
	   Select '1' SuccessCode,'Forget successfully !!!' msg
  End
End
GO
/****** Object:  StoredProcedure [dbo].[Sp_Report]    Script Date: 17-04-2023 17:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Sp_Report]
(
	@ind int=0
	
)
As
Begin	
    --select '' StudentId,'' StudentName,'' FName,'' Addresss,'' Email,'' MobileNo,'' StateId,''StateName,''DegingnationName,''DOB
	If(@ind=1)
	  Begin
		Select StateId,StateName From Stateabp
	   End
	if(@ind=2)
	  Begin
		 select s.StudentName,s.FName,s.Addresss,s.Email,s.StudentId,s.MobileNo,b.StateName,d.DegingnationName,cast(s.DOB as date)DOB
		 from Student s
		 inner join Degingnation d on s.DgId=d.DgId
		 inner join Stateabp b on s.StateId=b.StateId
		
	  End
	if(@ind=3)
	Begin
	      select DgId, UPPER(DegingnationName)DegingnationName from Degingnation
		 -- select '1' successcode,'Data Deleted successfully !!!' msg 
	End
End
GO
/****** Object:  StoredProcedure [dbo].[StudentDataOperation]    Script Date: 17-04-2023 17:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[StudentDataOperation]
(
@Ind int=0,
@StudentId int=0,
@StudentName varchar(50)='',
@Email varchar(100)='',
@MobileNo varchar(50)='',
@Aadhar varchar(20)='',
@DOB datetime='1900/01/01',
@StudentAddress varchar(510)='',
@ReletedCity int='',
@CollegeName int='',
@Category int='',
@Course int='',
@RegDT datetime ='' ,
@StudentStatus int='',
@Remark varchar(50)='',
@IsDel bit=0,
@Fee int='',
@PIC varchar(50)='',
@FolderPath varchar(50)='',
@DocName varchar(50)='',
@Passwords varchar(50)='',
@Log_Count int='',
@Log_Date datetime='',
@Log_IP nvarchar(50)='',
@PicName varchar(50)='',
@FolderName varchar(50)=''
)
as
Begin
     --select '' StudentName,''Email,''MobileNo,''AadharNo,''StudentAddress,''DOB,''CityName,''CollegeName,''CourseName,''CourseCategory
  If(@Ind=1)
  Begin
       Select * From Owl_CollegeMaster order by CollegeName desc
	   Select * From Owl_CityMaster
	   Select * From Owl_CourseCategoryMaster
	   Select * From Owl_CourseMaster
	 
   End
   If(@ind=2)
   Begin	
	 Declare @DblCount TinyInt=0;
	 Select @DblCount=Count(*) From Owl_StudentMaster Where upper(Email)=upper(@Email);	
	 If(@DblCount=0)
	 Begin
		insert into Owl_StudentMaster values(@StudentName,@Email,@MobileNo,@Aadhar,@DOB,@StudentAddress,@ReletedCity,
		@CollegeName,@Category,@Course,@RegDT,@StudentStatus,@Remark,@IsDel,@Fee,@Passwords);
		insert into Owl_Login values (@Email,@Passwords,@Log_Count,@Log_Date,@Log_IP,@IsDel,@StudentStatus)
		insert into Owl_StudentPic(StudentId)values (@Email)
		Select '1' SuccessCode,'Data Saved successfully !!!' msg
	End
	Else
	Begin
		Select '0' SuccessCode,'Email id already exists !!!' msg
	End
   End
   if(@Ind=3)
   Begin
         Select s.StudentId,s.StudentName,s.Email,s.MobileNo,s.AadharNo,s.StudentAddress,cast(s.DOB as date)DOB,d.CityName,
		 b.CollegeName,c.CourseName,e.CourseCategory
		 from Owl_StudentMaster s
		 inner join Owl_CityMaster d on  s.ReletedCity=d.CityId
		 inner join Owl_CollegeMaster b on s.CollegeName=b.CollegeId
		 inner join Owl_CourseMaster c on s.Course=c.CourseId
		 inner join Owl_CourseCategoryMaster e on s.Category=e.CategoryId
		 
		 
   End
   If(@Ind=4)
   Begin
     Declare @IsTrue SmallInt;
       select @IsTrue =Count(UserId) from Owl_Login where UserId=@Email and Password=@Passwords	  
	   if(@IsTrue>0) 
	   Begin
	       select '1' Result,   Upper(MT.StudentName) StudentName,	MT.Email,MT.MobileNo,MT.AadharNo,
		   convert(varchar, MT.DOB, 105) DOB, MT.StudentAddress,MT.Fee,MT.StudentId,MT.CollegeName,
		   MT.ReletedCity as CityName,MT.Course as CourseName,MT.Category  CourseCategory,sp.PicName from  Owl_StudentMaster MT 
           inner join Owl_CollegeMaster CT on CT.CollegeId=MT.CollegeName
		   inner join Owl_CityMaster c on c.CityId=MT.ReletedCity
		   inner join Owl_CourseMaster d on d.CourseId=MT.Course
		   inner join Owl_CourseCategoryMaster e on e.CategoryId=MT.Category
		   inner join Owl_StudentPic sp on sp.StudentId =MT.Email
		   where MT.Email=@Email
		
	   END
	   Else
	   Begin
	    Select '0' Result,'User id or Password Not Match !!!' ResultMsg;
	   END
       
   End
    if(@Ind=5)
	 begin
	        Update Owl_StudentMaster set MobileNo=@MobileNo,DOB=@DOB,StudentAddress=@StudentAddress,ReletedCity=@ReletedCity,
			CollegeName=@CollegeName,Category=@Category,Course=@Course,Fee=@Fee where Email=@Email
            Update Owl_StudentPic set PicName=@PicName,FolderName=@FolderName,DocName=@DocName where StudentId=@Email
			
	 End	 
End 
GO
/****** Object:  StoredProcedure [dbo].[test]    Script Date: 17-04-2023 17:09:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[test]
(
@ind int=0,
@StudentId int=0,
@StudentName varchar(50)='',
@Addresss varchar(50)='',
@MobileNo varchar(50)='',
@Email varchar(50)='',
@Files varchar(50)='',
@StateId int=0
)
As
Begin
if(@ind=1)
begin
     select StateId, UPPER(StateName)StateName from Stateabp
End
if(@ind=2)
Begin
     insert into Test1 values(@StudentName,@Addresss,@MobileNo,@Email,@StateId,@Files)
	  Select '1' SuccessCode,'Data Saved successfully !!!' msg
End
if(@ind=3)
Begin
  Select s.StudentName,s.StudentId,s.Addresss,s.MobileNo,s.Email,s.Files,b.StateName,b.StateId
  from Test1 s
  inner join Stateabp b on s.StateId=b.StateId
End
  if(@ind=4)
  Begin
       update Test1 set StudentName=@StudentName,Addresss=@Addresss,MobileNo=@MobileNo,Email=@Email,StateId=@StateId where StudentId=@StudentId;
	   if(@@ROWCOUNT>0)
	   Begin
			select '1' SuccessCode,'Data Updated Successfully !!!' msg;
	   End
	   
  End
if(@ind=5)
Begin
     Delete from Test1 where StudentId=@StudentId
	  select '1' successcode,'Data Deleted successfully !!!' msg 
End
End


GO
USE [master]
GO
ALTER DATABASE [Anupam] SET  READ_WRITE 
GO
