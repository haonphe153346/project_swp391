USE [master]
GO
/****** Object:  Database [ChildrenCare]    Script Date: 6/3/2022 10:03:49 AM ******/
CREATE DATABASE [ChildrenCare]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChildrenCare].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChildrenCare] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChildrenCare] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChildrenCare] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChildrenCare] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChildrenCare] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChildrenCare] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ChildrenCare] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChildrenCare] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChildrenCare] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChildrenCare] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChildrenCare] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChildrenCare] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChildrenCare] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChildrenCare] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChildrenCare] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ChildrenCare] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChildrenCare] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChildrenCare] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChildrenCare] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChildrenCare] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChildrenCare] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChildrenCare] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChildrenCare] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ChildrenCare] SET  MULTI_USER 
GO
ALTER DATABASE [ChildrenCare] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChildrenCare] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChildrenCare] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChildrenCare] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ChildrenCare] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ChildrenCare] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ChildrenCare] SET QUERY_STORE = OFF
GO
USE [ChildrenCare]
GO
/****** Object:  Table [dbo].[blogs]    Script Date: 6/3/2022 10:03:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blogs](
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[title] [nvarchar](255) NULL,
	[bi] [nvarchar](255) NULL,
	[blog_created_date] [date] NULL,
	[category_id] [int] NULL,
	[detail] [nvarchar](255) NULL,
	[blog_image] [nvarchar](255) NULL,
	[view_able] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 6/3/2022 10:03:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](255) NULL,
	[icon] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 6/3/2022 10:03:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[reservation_id] [int] NULL,
	[content] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[gender] [bit] NULL,
	[email] [nvarchar](255) NULL,
	[mobile] [nvarchar](255) NULL,
	[feedback_image] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicine]    Script Date: 6/3/2022 10:03:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicine](
	[medicine_id] [int] IDENTITY(1,1) NOT NULL,
	[medicine_name] [nvarchar](255) NULL,
	[medicine_image] [nvarchar](255) NULL,
	[medicine_price] [float] NULL,
	[medicine_unit] [int] NULL,
	[medicine_quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[medicine_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicine_unit]    Script Date: 6/3/2022 10:03:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicine_unit](
	[unit_id] [int] IDENTITY(1,1) NOT NULL,
	[unit_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[unit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prescription_details]    Script Date: 6/3/2022 10:03:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prescription_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[medical_id] [int] NULL,
	[medicine_id] [int] NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation]    Script Date: 6/3/2022 10:03:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation](
	[reservation_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[total_price] [float] NULL,
	[note] [nvarchar](255) NULL,
	[reservation_status] [int] NULL,
	[created_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[reservation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation_detail]    Script Date: 6/3/2022 10:03:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation_detail](
	[reservation_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[reservation_id] [int] NULL,
	[service_id] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[num_of_person] [int] NULL,
	[category_id] [int] NULL,
	[doctor_id] [int] NULL,
	[nurse_id] [int] NULL,
	[begin_time] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[reservation_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation_medical]    Script Date: 6/3/2022 10:03:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation_medical](
	[medical_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[name_children] [nvarchar](255) NULL,
	[diagnosis] [nvarchar](255) NULL,
	[created_date] [date] NULL,
	[doctor_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[medical_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 6/3/2022 10:03:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[service]    Script Date: 6/3/2022 10:03:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service](
	[service_id] [int] IDENTITY(1,1) NOT NULL,
	[service_title] [nvarchar](255) NULL,
	[service_bi] [nvarchar](255) NULL,
	[service_created_date] [date] NULL,
	[category_id] [int] NULL,
	[service_price] [float] NULL,
	[service_discount] [float] NULL,
	[service_detail] [nvarchar](255) NULL,
	[service_rateStar] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[service_image]    Script Date: 6/3/2022 10:03:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service_image](
	[image_id] [int] IDENTITY(1,1) NOT NULL,
	[service_id] [int] NULL,
	[image_link] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slider]    Script Date: 6/3/2022 10:03:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slider](
	[slider_id] [int] IDENTITY(1,1) NOT NULL,
	[slider_title] [nvarchar](255) NULL,
	[category_id] [int] NULL,
	[slider_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[slider_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 6/3/2022 10:03:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_fullname] [nvarchar](255) NULL,
	[user_gender] [bit] NULL,
	[user_address] [nvarchar](255) NULL,
	[user_password] [varchar](255) NULL,
	[user_email] [varchar](255) NULL,
	[user_phone] [varchar](255) NULL,
	[role_id] [int] NULL,
	[user_status] [bit] NULL,
	[user_image] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[blogs] ON 

INSERT [dbo].[blogs] ([blog_id], [user_id], [title], [bi], [blog_created_date], [category_id], [detail], [blog_image], [view_able]) VALUES (3, 40, N'Nowadays covid-19 broken eyes of children', N'Eyes health tips and care', CAST(N'2001-02-02' AS Date), 1, N'Eyes health tips and care', N'departments-5.jpg', 1)
INSERT [dbo].[blogs] ([blog_id], [user_id], [title], [bi], [blog_created_date], [category_id], [detail], [blog_image], [view_able]) VALUES (4, 40, N'The children care for eyes 2020', N'The Centers for Disease Control and Prevention recently recommended that children ages 5 through 11 receive a COVID-19 booster shot five months after completing the vaccine series. In this Q&A, Kristin O', CAST(N'2001-02-02' AS Date), 1, N'Eyes health tips and care', N'departments-3.jpg', 1)
INSERT [dbo].[blogs] ([blog_id], [user_id], [title], [bi], [blog_created_date], [category_id], [detail], [blog_image], [view_able]) VALUES (5, 40, N'Why You Should Get a COVID-19 Booster Shot for Your Child Age 5 to 11', N'Nurses Week Is Celebrated Across the Health System', CAST(N'2001-02-02' AS Date), 1, N'Eyes health tips and care', N'departments-4.jpg', 1)
SET IDENTITY_INSERT [dbo].[blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([category_id], [category_name], [icon]) VALUES (1, N'Eyes', N'bi bi-binoculars color-cyan')
INSERT [dbo].[category] ([category_id], [category_name], [icon]) VALUES (2, N'Mouth', N'bi bi-map color-orange')
INSERT [dbo].[category] ([category_id], [category_name], [icon]) VALUES (3, N'Foot', N'bi bi-easel color-blue')
INSERT [dbo].[category] ([category_id], [category_name], [icon]) VALUES (4, N'Nose', N'bi bi-command color-red')
INSERT [dbo].[category] ([category_id], [category_name], [icon]) VALUES (5, N'Lung', N'bi bi-brightness-high color-teal')
INSERT [dbo].[category] ([category_id], [category_name], [icon]) VALUES (6, N'Hands', N'bi bi-box-seam color-indigo')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[medicine] ON 

INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity]) VALUES (1, N'paracetamol', NULL, 100, 1, 1000)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity]) VALUES (2, N'Oresol', NULL, 120, 1, 1000)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity]) VALUES (3, N' Pantenol', NULL, 100, 1, 1000)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity]) VALUES (4, N'Oxy già', NULL, 100, 1, 1000)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity]) VALUES (5, N'Cặp nhiệt độ', NULL, 100, 1, 1000)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity]) VALUES (6, N'Bông gòn', NULL, 100, 1, 1000)
SET IDENTITY_INSERT [dbo].[medicine] OFF
GO
SET IDENTITY_INSERT [dbo].[reservation] ON 

INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (1, 16, 699, N'Truong hop sap chet', 1, CAST(N'2022-06-03' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (2, 19, 699, N'Truong hop sap tu vong', 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (3, 22, 699, N'Con em ten khoa bi viem mao ga', 1, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (4, 25, 699, N'Con em ten truong bi sau rang', 3, CAST(N'2022-06-06' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (5, 25, 699, N'Con em ten Hao bi thieu nang tu be', 3, CAST(N'2022-06-07' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (6, 16, 699, N'Truong hop sap chet', 1, CAST(N'2022-06-03' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (7, 19, 699, N'Truong hop sap tu vong', 2, CAST(N'2022-06-03' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (8, 22, 699, N'Con em ten khoa bi viem mao ga', 1, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (9, 25, 699, N'Con em ten truong bi sau rang', 2, CAST(N'2022-06-03' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (10, 25, 699, N'Con em ten Hao bi thieu nang tu be', 1, CAST(N'2022-06-07' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (11, 16, 699, N'Truong hop sap chet', 3, CAST(N'2022-06-03' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (12, 19, 699, N'Truong hop sap tu vong', 2, CAST(N'2022-06-09' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (13, 22, 699, N'Con em ten khoa bi viem mao ga', 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (14, 25, 699, N'Con em ten truong bi sau rang', 2, CAST(N'2022-06-06' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (15, 25, 699, N'Con em ten Hao bi thieu nang tu be', 1, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (16, 25, 699, N'Con em ten Hao bi thieu nang tu be', 1, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (17, 25, 699, N'Con em ten truong bi sau rang', 2, CAST(N'2022-06-07' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (18, 22, 699, N'Con em ten khoa bi viem mao ga', 1, CAST(N'2022-06-06' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (19, 16, 699, N'Truong hop sap chet', 1, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (20, 19, 699, N'Truong hop sap tu vong', 1, CAST(N'2022-06-03' AS Date))
SET IDENTITY_INSERT [dbo].[reservation] OFF
GO
SET IDENTITY_INSERT [dbo].[reservation_detail] ON 

INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (49, 10, 1, 255, 1, 1, 4, 17, 18, CAST(N'2021-10-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (56, 5, 2, 199, 1, 1, 1, 17, 18, CAST(N'2020-11-02' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (57, 6, 3, 399, 1, 1, 1, 17, 18, CAST(N'2020-11-09' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (61, 6, 2, 255, 1, 1, 1, 17, 18, CAST(N'2020-12-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (62, 6, 2, 255, 1, 1, 2, 17, 18, CAST(N'2020-09-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (63, 6, 2, 255, 1, 1, 3, 17, 18, CAST(N'2020-07-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (64, 6, 2, 255, 1, 1, 3, 17, 18, CAST(N'2020-12-06' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (65, 6, 2, 255, 1, 1, 4, 17, 18, CAST(N'2020-05-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (66, 6, 2, 255, 1, 1, 4, 17, 18, CAST(N'2020-05-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (67, 12, 3, 255, 1, 1, 4, 17, 18, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (68, 11, 2, 255, 1, 1, 4, 17, 18, CAST(N'2021-09-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (69, 10, 1, 255, 1, 1, 4, 17, 18, CAST(N'2021-10-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (70, 9, 2, 255, 1, 1, 4, 17, 18, CAST(N'2021-03-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (71, 8, 2, 255, 1, 1, 4, 17, 18, CAST(N'2021-02-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (73, 5, 2, 199, 1, 1, 1, 17, 18, CAST(N'2020-11-02' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (74, 6, 3, 399, 1, 1, 1, 17, 18, CAST(N'2020-11-09' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (78, 6, 2, 255, 1, 1, 1, 17, 18, CAST(N'2020-12-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (79, 6, 2, 255, 1, 1, 2, 17, 18, CAST(N'2020-09-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (80, 6, 2, 255, 1, 1, 3, 17, 18, CAST(N'2020-07-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (81, 6, 2, 255, 1, 1, 3, 17, 18, CAST(N'2020-12-06' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (82, 6, 2, 255, 1, 1, 4, 17, 18, CAST(N'2020-05-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (83, 6, 2, 255, 1, 1, 4, 17, 18, CAST(N'2020-05-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (84, 12, 3, 255, 1, 1, 4, 17, 18, CAST(N'2021-08-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (85, 11, 2, 255, 1, 1, 4, 17, 18, CAST(N'2021-09-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (86, 10, 1, 255, 1, 1, 4, 17, 18, CAST(N'2021-10-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (87, 9, 2, 255, 1, 1, 4, 17, 18, CAST(N'2021-03-11' AS Date))
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time]) VALUES (88, 8, 2, 255, 1, 1, 4, 17, 18, CAST(N'2021-02-11' AS Date))
SET IDENTITY_INSERT [dbo].[reservation_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([role_id], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (2, N'Doctor')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (3, N'Nurse')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (4, N'Customer')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (5, N'Manager')
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[service] ON 

INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar]) VALUES (1, N'khám răng', N'kiểm tra tổng quát về răng', CAST(N'2022-11-11' AS Date), 2, 599, 499, N'Kiểm tra tổng quát về răng Kiểm tra tổng quát về răng Kiểm tra tổng quát về răng', 4)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar]) VALUES (2, N'Khám Mắt', N'Kiểm tra tổng quát về mắt', CAST(N'2020-11-11' AS Date), 1, 199, 399, N'Kiểm tra tổng quát về mắt Kiểm tra tổng quát về mắt Kiểm tra tổng quát về mắt', 4)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar]) VALUES (3, N'Khám Tay', N'Kiểm tra tổng quát về tay', CAST(N'2022-11-11' AS Date), 6, 299, 399, N'Kiểm tra tổng quát về tay Kiểm tra tổng quát về tay Kiểm tra tổng quát về tay', 5)
SET IDENTITY_INSERT [dbo].[service] OFF
GO
SET IDENTITY_INSERT [dbo].[service_image] ON 

INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (1, 3, N'tay.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (2, 3, N'tay.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (3, 2, N'mat.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (4, 1, N'teethSlide.jpg')
SET IDENTITY_INSERT [dbo].[service_image] OFF
GO
SET IDENTITY_INSERT [dbo].[slider] ON 

INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status]) VALUES (1, N'slider1.jpg', 1, 1)
SET IDENTITY_INSERT [dbo].[slider] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (13, N'Nguyen Ngoc Hoan', 1, N'Ha Noi', N'123', N'datkmhe150913@fpt.edu.vn', N'0869510920', 1, 0, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (15, N'NULLFarrah Brotherhed', 0, N'3 Mcbride Court', N'aRGKx2H2c2Xc', N'fbrotherhed2@tmall.com', N'846 793 9659', 3, 0, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (16, N'Allistir Marzello', 1, N'5 Graceland Court', N'BWfaZBabf', N'amarzello3@merriam-webster.com', N'558 530 3549', 4, 0, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (17, N'Alma Gecks', 0, N'071 Del Sol Hill', N'BWfaZBabf', N'agecks4@yale.edu', N'732 422 5190', 2, 0, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (18, N'Mohandis Raun', 1, N'7133 Dapin Drive', N'suEOVB', N'mraun5@about.com', N'386 286 5839', 3, 0, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (19, N'Mohandis Raunis', 0, N'74 Meadow Valley Lane', N'Fk8bitn6P9', N'gbidmead6@amazon.co.jp', N'896 768 5609', 4, 0, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (20, N'Lilyan Norwell', 1, N'8 Utah Court', N'UTUwSE5', N'lnorwell7@wired.com', N'204 590 8203', 2, 0, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (21, N'Simone Renyard', 0, N'97838 4th Court', N'JUJc8wlq', N'srenyard8@studiopress.com', N'570 151 8768', 3, 0, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (22, N'Morena Opdenort', 1, N'07930 Shopko Park', N'2FDgPJnUeth2', N'mopdenort9@istockphoto.com', N'462 547 8132', 4, 0, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (23, N'Terrance Greyes', 0, N'251 Steensland Junction', N'a5nDdPkKlbM', N'tgreyesa@redcross.org', N'265 670 0071', 2, 0, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (24, N'Darius Castilla', 1, N'54455 Manitowish Terrace', N'UbWzOElDwn', N'dcastillab@acquirethisname.com', N'794 537 1812', 3, 0, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (25, N'Roi Bowbrick', 0, N'4 Caliangt Avenue', N'ZMhzbS2iMqT', N'ckarlmannc@qq.com', N'164 790 7825', 4, 0, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (26, N'Mikkel Ricson', 1, N'6016 Bellgrove Circle', N'8xmzBv', N'rbowbrickd@mit.edu', N'632 511 0253', 2, 0, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (27, N'1', 1, N'1', N'1', N'1', N'1', 1, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (28, N'1', 1, N'1', N'1', N'1', N'1', 1, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (29, N'1', 1, N'1', N'1', N'1', N'1', 1, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (30, N'2', 1, N'2', N'2', N'2', N'2', 2, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (31, N'3', 1, N'3', N'3', N'3', N'3', 4, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (32, N'Nguyen Ngoc Khoa', 1, N'123', N'123', N'khoa@gmail.com', N'123', 2, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (33, N'Kieu Minh Dat', 1, N'312', N'KRVKTZX', N'hoannnhe151308@fpt.edu.vn', N'0869510920', 1, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (34, N'Nguyen Ngoc Khoa', 1, N'Ha noi', N'ZGFQNCV', N'khoannhe153156@fpt.edu.vn', N'0869510928', 1, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (35, N'Nguyen Ngoc Khoa', 1, N'Ha noi', N'khoadeptrai', N'khoannhe153156@fpt.edu.vn', N'0869510928', 1, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (38, N'Nguyen Ngoc Khoa', 1, N'3123', N'12312', N'Hoan@gmail.com', N'123', 1, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (40, N'Linh Ngu', 1, N'Hanoi', N'CENPLTI', N'sktn@gmail.com', N'0869510920', 1, 1, N'hoanonfire.jpg')
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[blogs]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[prescription_details]  WITH CHECK ADD FOREIGN KEY([medical_id])
REFERENCES [dbo].[reservation_medical] ([medical_id])
GO
ALTER TABLE [dbo].[prescription_details]  WITH CHECK ADD FOREIGN KEY([medicine_id])
REFERENCES [dbo].[medicine] ([medicine_id])
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[reservation_detail]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[reservation_detail]  WITH CHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[reservation_detail]  WITH CHECK ADD FOREIGN KEY([nurse_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[reservation_detail]  WITH CHECK ADD FOREIGN KEY([reservation_id])
REFERENCES [dbo].[reservation] ([reservation_id])
GO
ALTER TABLE [dbo].[reservation_detail]  WITH CHECK ADD FOREIGN KEY([service_id])
REFERENCES [dbo].[service] ([service_id])
GO
ALTER TABLE [dbo].[reservation_medical]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[service]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[service_image]  WITH CHECK ADD FOREIGN KEY([service_id])
REFERENCES [dbo].[service] ([service_id])
GO
ALTER TABLE [dbo].[slider]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
USE [master]
GO
ALTER DATABASE [ChildrenCare] SET  READ_WRITE 
GO
