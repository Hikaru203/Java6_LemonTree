USE [master]
GO
/****** Object:  Database [Orihiro]    Script Date: 8/17/2023 5:35:38 PM ******/
CREATE DATABASE [Orihiro]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Orihiro', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Orihiro.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Orihiro_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Orihiro_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Orihiro] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Orihiro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Orihiro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Orihiro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Orihiro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Orihiro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Orihiro] SET ARITHABORT OFF 
GO
ALTER DATABASE [Orihiro] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Orihiro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Orihiro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Orihiro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Orihiro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Orihiro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Orihiro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Orihiro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Orihiro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Orihiro] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Orihiro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Orihiro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Orihiro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Orihiro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Orihiro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Orihiro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Orihiro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Orihiro] SET RECOVERY FULL 
GO
ALTER DATABASE [Orihiro] SET  MULTI_USER 
GO
ALTER DATABASE [Orihiro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Orihiro] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Orihiro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Orihiro] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Orihiro] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Orihiro] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Orihiro', N'ON'
GO
ALTER DATABASE [Orihiro] SET QUERY_STORE = OFF
GO
USE [Orihiro]
GO
/****** Object:  Table [dbo].[address_city]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address_city](
	[addresscity_id] [int] NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[addresscity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[address_district]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address_district](
	[addressdistrict_id] [int] NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[addressdistrict_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AddressCity]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressCity](
	[addresscity_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_AddressCity] PRIMARY KEY CLUSTERED 
(
	[addresscity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AddressDistrict]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressDistrict](
	[addressdistrict_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_AddressDistrict] PRIMARY KEY CLUSTERED 
(
	[addressdistrict_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand_supplier]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand_supplier](
	[brand_supplier_id] [int] IDENTITY(1,1) NOT NULL,
	[brand_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[responsible_name] [nvarchar](100) NULL,
	[origin] [nvarchar](50) NULL,
 CONSTRAINT [PK__Brands__3213E83F456EEDD3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BrandSupplier]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrandSupplier](
	[BrandSupplier_id] [int] IDENTITY(1,1) NOT NULL,
	[brand_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
 CONSTRAINT [PK__BrandSup__F93D1C293EF911CA] PRIMARY KEY CLUSTERED 
(
	[BrandSupplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[is_active] [bit] NULL,
 CONSTRAINT [PK__Cart__3213E83FF833D32B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Categori__3213E83F2366B3E5] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[discount_amount] [decimal](10, 2) NOT NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
 CONSTRAINT [PK__Discount__3213E83F5703C431] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
 CONSTRAINT [PK__Favorites__3213E83FF833D32B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventorys]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventorys](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK__Inventor__3213E83F58011D90] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[cart_id] [int] NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[adress] [nvarchar](max) NULL,
	[phone_number] [nvarchar](20) NULL,
	[country] [nvarchar](50) NULL,
	[date_order] [datetime] NULL,
	[total_price] [decimal](10, 2) NULL,
	[is_active] [bit] NULL,
	[ordres_code] [nvarchar](50) NULL,
	[district] [nvarchar](500) NULL,
	[wards] [nvarchar](500) NULL,
 CONSTRAINT [PK__Orders__3213E83F53CDFC15] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[image] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[price] [decimal](10, 2) NULL,
	[category_id] [int] NULL,
	[active] [bit] NULL,
 CONSTRAINT [PK__Products__3213E83F139934DE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[supplier_products]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supplier_products](
	[supplier_products_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[supplier_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[supplier_products_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierProducts]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierProducts](
	[SupplierProducts_id] [int] IDENTITY(1,1) NOT NULL,
	[supplier_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
 CONSTRAINT [PK__Supplier__AF83A496B79D6DA4] PRIMARY KEY CLUSTERED 
(
	[SupplierProducts_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[address] [nvarchar](max) NULL,
	[contact_info] [nvarchar](max) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/17/2023 5:35:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[admin] [bit] NOT NULL,
	[active] [bit] NOT NULL,
	[addresscity_id] [int] NULL,
	[addressdistrict_id] [int] NULL,
 CONSTRAINT [PK__Users__3213E83FC836B105] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AddressCity] ([addresscity_id], [name]) VALUES (215, N'Vĩnh Long')
INSERT [dbo].[AddressCity] ([addresscity_id], [name]) VALUES (220, N'Cần Thơ')
GO
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (1458, N'Bình Tân')
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (1572, N'Ninh Kiều')
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (1573, N'Bình Thủy')
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (1574, N'Cái Răng')
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (1575, N'Ô Môn')
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (1576, N'Thốt Nốt')
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (1962, N'Long Hồ')
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (2008, N'Tam Bình')
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (2034, N'Trà Ôn')
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (2054, N'Bình Minh')
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (2081, N'Bình Tân')
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (2164, N'Mang Thít')
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (2258, N'Vĩnh Thạnh')
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (2263, N'Vũng Liêm')
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (3150, N'Cờ Đỏ')
INSERT [dbo].[AddressDistrict] ([addressdistrict_id], [name]) VALUES (3250, N'Phong Điền')
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([id], [name], [responsible_name], [origin]) VALUES (1, N'Brand A', N'John Doe', N'Country A')
INSERT [dbo].[Brands] ([id], [name], [responsible_name], [origin]) VALUES (2, N'Brand B', N'Jane Smith', N'Country B')
INSERT [dbo].[Brands] ([id], [name], [responsible_name], [origin]) VALUES (3, N'Brand C', N'Michael Johnson', N'Country C')
INSERT [dbo].[Brands] ([id], [name], [responsible_name], [origin]) VALUES (4, N'Brand D', N'Emily Brown', N'Country D')
INSERT [dbo].[Brands] ([id], [name], [responsible_name], [origin]) VALUES (5, N'Brand E', N'David Lee', N'Country E')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[BrandSupplier] ON 

INSERT [dbo].[BrandSupplier] ([BrandSupplier_id], [brand_id], [supplier_id]) VALUES (2, 1, 1)
INSERT [dbo].[BrandSupplier] ([BrandSupplier_id], [brand_id], [supplier_id]) VALUES (3, 2, 2)
INSERT [dbo].[BrandSupplier] ([BrandSupplier_id], [brand_id], [supplier_id]) VALUES (4, 3, 3)
SET IDENTITY_INSERT [dbo].[BrandSupplier] OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2, 1, 1009, 1, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (3, 2, 1010, 2, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (4, 5, 1011, 2, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (5, 6, 1012, 1, 1)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (6, 9, 1013, 12, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2069, 6, 1020, 6, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2070, 6, 1019, 1, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2071, 6, 1010, 2, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2072, 6, 1011, 1, 1)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2073, 6, 1014, 4, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2074, 6, 1015, 2, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2075, 2, 1011, 1, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2076, 2, 1012, 1, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2077, 2, 1015, 1, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2078, 1, 1011, 1, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2079, 1, 1012, 1, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2080, 1, 1010, 1, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2081, 1, 1019, 1, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2082, 6, 1016, 1, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2083, 10, 1011, 5, 0)
INSERT [dbo].[Carts] ([id], [user_id], [product_id], [quantity], [is_active]) VALUES (2084, 10, 1012, 1, 0)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([id], [name]) VALUES (1, N'Xương Khớp')
INSERT [dbo].[Categories] ([id], [name]) VALUES (2, N'Làm Đẹp')
INSERT [dbo].[Categories] ([id], [name]) VALUES (3, N'Giảm Cân')
INSERT [dbo].[Categories] ([id], [name]) VALUES (4, N'Tim Mạch')
INSERT [dbo].[Categories] ([id], [name]) VALUES (5, N'dangneen@gmail.com')
INSERT [dbo].[Categories] ([id], [name]) VALUES (6, N'xương khớp 1')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Discounts] ON 

INSERT [dbo].[Discounts] ([id], [product_id], [discount_amount], [start_date], [end_date]) VALUES (1, 1009, CAST(50000.00 AS Decimal(10, 2)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), CAST(N'2023-08-31T00:00:00.000' AS DateTime))
INSERT [dbo].[Discounts] ([id], [product_id], [discount_amount], [start_date], [end_date]) VALUES (2, 1010, CAST(100000.00 AS Decimal(10, 2)), CAST(N'2023-08-01T00:00:00.000' AS DateTime), CAST(N'2023-08-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Discounts] ([id], [product_id], [discount_amount], [start_date], [end_date]) VALUES (3, 1011, CAST(20000.00 AS Decimal(10, 2)), CAST(N'2023-08-10T00:00:00.000' AS DateTime), CAST(N'2023-08-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Discounts] ([id], [product_id], [discount_amount], [start_date], [end_date]) VALUES (5, 1013, CAST(30000.00 AS Decimal(10, 2)), CAST(N'2023-08-15T00:00:00.000' AS DateTime), CAST(N'2023-08-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Discounts] ([id], [product_id], [discount_amount], [start_date], [end_date]) VALUES (7, 1014, CAST(70000.00 AS Decimal(10, 2)), CAST(N'2023-08-17T19:00:00.000' AS DateTime), CAST(N'2023-08-24T18:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Discounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 

INSERT [dbo].[Favorites] ([id], [user_id], [product_id]) VALUES (4, 1, 1009)
INSERT [dbo].[Favorites] ([id], [user_id], [product_id]) VALUES (5, 2, 1010)
INSERT [dbo].[Favorites] ([id], [user_id], [product_id]) VALUES (6, 5, 1014)
INSERT [dbo].[Favorites] ([id], [user_id], [product_id]) VALUES (8, 11, 1011)
INSERT [dbo].[Favorites] ([id], [user_id], [product_id]) VALUES (9, 1, 1011)
INSERT [dbo].[Favorites] ([id], [user_id], [product_id]) VALUES (10, 1, 1012)
INSERT [dbo].[Favorites] ([id], [user_id], [product_id]) VALUES (11, 1, 1018)
INSERT [dbo].[Favorites] ([id], [user_id], [product_id]) VALUES (12, 1, 1020)
INSERT [dbo].[Favorites] ([id], [user_id], [product_id]) VALUES (13, 1, 1019)
INSERT [dbo].[Favorites] ([id], [user_id], [product_id]) VALUES (14, 10, 1010)
SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventorys] ON 

INSERT [dbo].[Inventorys] ([id], [product_id], [date], [quantity]) VALUES (1, 1009, CAST(N'2023-07-31' AS Date), 50)
INSERT [dbo].[Inventorys] ([id], [product_id], [date], [quantity]) VALUES (2, 1010, CAST(N'2023-07-31' AS Date), 75)
INSERT [dbo].[Inventorys] ([id], [product_id], [date], [quantity]) VALUES (3, 1011, CAST(N'2023-07-31' AS Date), 30)
INSERT [dbo].[Inventorys] ([id], [product_id], [date], [quantity]) VALUES (4, 1012, CAST(N'2023-07-31' AS Date), 90)
INSERT [dbo].[Inventorys] ([id], [product_id], [date], [quantity]) VALUES (5, 1013, CAST(N'2023-07-31' AS Date), 120)
SET IDENTITY_INSERT [dbo].[Inventorys] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Details] ON 

INSERT [dbo].[Order_Details] ([id], [order_id], [cart_id]) VALUES (3, 4, 2)
INSERT [dbo].[Order_Details] ([id], [order_id], [cart_id]) VALUES (4, 4, 3)
INSERT [dbo].[Order_Details] ([id], [order_id], [cart_id]) VALUES (5, 4, 4)
INSERT [dbo].[Order_Details] ([id], [order_id], [cart_id]) VALUES (6, 5, 2)
INSERT [dbo].[Order_Details] ([id], [order_id], [cart_id]) VALUES (7, 6, 6)
SET IDENTITY_INSERT [dbo].[Order_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [user_id], [adress], [phone_number], [country], [date_order], [total_price], [is_active], [ordres_code], [district], [wards]) VALUES (4, 1, N'A20-14 đường số 9 khu đân cư Thường Thạnh', N'0944016757', N'Tỉnh Bạc Liêu', CAST(N'2003-05-03T00:00:00.000' AS DateTime), CAST(40000.00 AS Decimal(10, 2)), 0, NULL, N'Huyện Đông Hải', N'Xã Điền Hải')
INSERT [dbo].[Orders] ([id], [user_id], [adress], [phone_number], [country], [date_order], [total_price], [is_active], [ordres_code], [district], [wards]) VALUES (5, 2, N'A20-14 đường số 9 khu đân cư Thường Thạnh', N'0944016757', N'Tỉnh Vĩnh Phúc', CAST(N'2003-05-03T00:00:00.000' AS DateTime), CAST(500000.00 AS Decimal(10, 2)), 0, NULL, N'Thành phố Vĩnh Yên', N'Phường Tích Sơn')
INSERT [dbo].[Orders] ([id], [user_id], [adress], [phone_number], [country], [date_order], [total_price], [is_active], [ordres_code], [district], [wards]) VALUES (6, 6, N'A20-14 đường số 9 khu đân cư Thường Thạnh', N'0944016757', N'Tỉnh Bắc Giang', CAST(N'2003-05-03T00:00:00.000' AS DateTime), CAST(500000.00 AS Decimal(10, 2)), 0, NULL, N'Huyện Yên Thế', N'Xã Đồng Kỳ')
INSERT [dbo].[Orders] ([id], [user_id], [adress], [phone_number], [country], [date_order], [total_price], [is_active], [ordres_code], [district], [wards]) VALUES (1057, 2, N'A20-14 đường số 9 khu đân cư Thường Thạnh', N'0949070501', N'Tỉnh Hải Dương', CAST(N'2023-08-14T15:31:30.897' AS DateTime), CAST(253500.00 AS Decimal(10, 2)), 1, N'29711914', N'Huyện Cẩm Giàng', N'Xã Cẩm Phúc')
INSERT [dbo].[Orders] ([id], [user_id], [adress], [phone_number], [country], [date_order], [total_price], [is_active], [ordres_code], [district], [wards]) VALUES (1058, 2, N'A20-14 đường số 9 khu đân cư Thường Thạnh', N'0949070501', N'Tỉnh Quảng Ninh', CAST(N'2023-08-14T16:02:51.693' AS DateTime), CAST(1524500.00 AS Decimal(10, 2)), 0, NULL, N'Thành phố Móng Cái', N'Phường Bình Ngọc')
INSERT [dbo].[Orders] ([id], [user_id], [adress], [phone_number], [country], [date_order], [total_price], [is_active], [ordres_code], [district], [wards]) VALUES (1059, 2, N'A20-14 đường số 9 khu đân cư Thường Thạnh', N'0949070501', N'Tỉnh Bạc Liêu', CAST(N'2023-08-14T16:06:53.437' AS DateTime), CAST(1524500.00 AS Decimal(10, 2)), 0, NULL, N'Huyện Đông Hải', N'Xã Điền Hải')
INSERT [dbo].[Orders] ([id], [user_id], [adress], [phone_number], [country], [date_order], [total_price], [is_active], [ordres_code], [district], [wards]) VALUES (1060, 2, N'A20-14 đường số 9 khu đân cư Thường Thạnh', N'0949070501', N'Tỉnh Vĩnh Phúc', CAST(N'2023-08-15T13:49:27.003' AS DateTime), CAST(1524500.00 AS Decimal(10, 2)), 0, NULL, N'Thành phố Vĩnh Yên', N'Phường Tích Sơn')
INSERT [dbo].[Orders] ([id], [user_id], [adress], [phone_number], [country], [date_order], [total_price], [is_active], [ordres_code], [district], [wards]) VALUES (1061, 2, N'A20-14 đường số 9 khu đân cư Thường Thạnh', N'0949070501', N'Tỉnh Bắc Giang', CAST(N'2023-08-15T13:49:49.157' AS DateTime), CAST(1524500.00 AS Decimal(10, 2)), 0, NULL, N'Huyện Yên Thế', N'Xã Đồng Kỳ')
INSERT [dbo].[Orders] ([id], [user_id], [adress], [phone_number], [country], [date_order], [total_price], [is_active], [ordres_code], [district], [wards]) VALUES (1062, 6, N'A20-14 đường số 9 khu đân cư Thường Thạnh', N'0918533138', N'Tỉnh Bạc Liêu', CAST(N'2023-08-17T14:59:28.660' AS DateTime), CAST(6058320.00 AS Decimal(10, 2)), 1, NULL, N'Thị xã Giá Rai', N'Phường Hộ Phòng')
INSERT [dbo].[Orders] ([id], [user_id], [adress], [phone_number], [country], [date_order], [total_price], [is_active], [ordres_code], [district], [wards]) VALUES (1063, 6, N'Tổ 2 Ấp Tân Vĩnh Xã Tân Lược Huyện Bình Tân Tỉnh Vĩnh Long', N'0944016757', N'Thành phố Cần Thơ', CAST(N'2023-08-17T15:10:49.277' AS DateTime), CAST(157500.00 AS Decimal(10, 2)), 1, N'01466505', N'Quận Cái Răng', N'Phường Thường Thạnh')
INSERT [dbo].[Orders] ([id], [user_id], [adress], [phone_number], [country], [date_order], [total_price], [is_active], [ordres_code], [district], [wards]) VALUES (1064, 6, N'Vĩnh Long', N'0342532576', N'Tỉnh Bắc Ninh', CAST(N'2023-08-17T15:12:12.873' AS DateTime), CAST(104000.00 AS Decimal(10, 2)), 0, NULL, N'Huyện Gia Bình', N'Xã Đại Bái')
INSERT [dbo].[Orders] ([id], [user_id], [adress], [phone_number], [country], [date_order], [total_price], [is_active], [ordres_code], [district], [wards]) VALUES (1065, 10, N'Vĩnh Long', N'0918533138', N'Thành phố Cần Thơ', CAST(N'2023-08-17T16:57:08.333' AS DateTime), CAST(582000.00 AS Decimal(10, 2)), 0, NULL, N'Quận Cái Răng', N'Phường Tân Phú')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [image], [description], [price], [category_id], [active]) VALUES (1009, N'Canxi và Vitamin D An Huy Anfa Calcium D1', N'sp1.jpg', N'Thực phẩm bổ sung Canxi và Vitamin D An Huy Anfa Calcium D bổ sung canxi và vitamin D3 cho cơ thể, giúp xương và răng chắc khỏe. Hỗ trợ phát triển chiều cao, giúp giảm nguy cơ còi xương ở trẻ em, không xương ở người lớn.', CAST(185600.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[Products] ([id], [name], [image], [description], [price], [category_id], [active]) VALUES (1010, N'Giảm thoái hóa khớp An Huy Nakomin Extra', N'sp2.jpg', N'Thực phẩm hỗ trợ giảm thoái hóa khớp An Huy Nakomin Extra bổ sung các dưỡng chất cho khớp, mô sụn khớp; hỗ trợ làm giảm viêm khớp, khô khớp, thoái hóa khớp.', CAST(269000.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[Products] ([id], [name], [image], [description], [price], [category_id], [active]) VALUES (1011, N'Hỗ trợ giảm acid uric trong máu Baigout', N'sp3.jpg', N'Viên uống giảm acid uric trong máu Baigout chiết xuất từ hạt Cần tây, Nhũ hương, Tơm trơng, hỗ trợ giảm acid uric trong máu, cải thiện các triệu chứng sưng, đau các khớp do gout.', CAST(119500.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[Products] ([id], [name], [image], [description], [price], [category_id], [active]) VALUES (1012, N'Giảm đau và phục hồi sụn khớp Khương Thảo Đan Gold', N'sp5.jpg', N'Hỗ trợ giảm đau và phục hồi sụn khớp Khương Thảo Đan Gold hỗ trợ làm trơn khớp và phục hồi sụn khớp, làm chậm quá trình thoái hóa khớp, thoái hoá đốt sống, thoát vị đĩa đệm, giảm đau nhức xương khớp, giảm các triệu chứng viêm khớp, đau mỏi vai gáy do thoái hoá khớp, thoái hoá cột sống.', CAST(173000.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[Products] ([id], [name], [image], [description], [price], [category_id], [active]) VALUES (1013, N'Nước uống cân bằng nội tiết tố 82X Shiharu Placenta', N'slide1.jpg', N'Nhờ bổ sung 9.500mg tinh chất placenta đậm đặc được chiết xuất bằng công nghệ cao áp Charites PHH tăng khả năng hấp thu gấp 2 lần. Đồng thời, kết hợp bộ đôi vitamin E và Resveratrol giúp cân bằng nội tiết, ổn định chu kỳ kinh nguyệt, tăng khả năng thụ thai', CAST(760000.00 AS Decimal(10, 2)), 2, 1)
INSERT [dbo].[Products] ([id], [name], [image], [description], [price], [category_id], [active]) VALUES (1014, N'Hỗ trợ làm chậm quá trình lão hóa, tăng đàn hồi da Beyou Royal Collagen', N'slide2.jpg', N'Thực phẩm chức năng hỗ trợ làm chậm quá trình lão hóa, tăng đàn hồi da Beyou Royal Collagen chứa thành phần collagen cá, vitamin C, sữa ong chúa và elastin, dùng cho người từ 18 tuổi trở lên có nhu cầu chăm sóc da, người bắt đầu có dấu hiệu lão hóa.', CAST(200000.00 AS Decimal(10, 2)), 2, 1)
INSERT [dbo].[Products] ([id], [name], [image], [description], [price], [category_id], [active]) VALUES (1015, N'Viên uống sữa ong chúa bồi bổ sức khỏe Boomerang Royal Jelly & Collagen Softgel', N'slide3.jpg', N'Viên uống sữa ong chúa Boomerang Royal Jelly & Collagen Softgel giúp tăng cường thể lực, bồi bổ sức khỏe, làm đẹp da, giảm quá trình lão hóa, giúp da căng mịn, trắng sáng.', CAST(709500.00 AS Decimal(10, 2)), 2, 1)
INSERT [dbo].[Products] ([id], [name], [image], [description], [price], [category_id], [active]) VALUES (1016, N'Nước uống đông trùng hạ thảo Fine Plus Collagen 5000mg', N'Fine Plus Collagen.jpg', N'Nước uống đông trùng hạ thảo Fine Plus Collagen 5000mg:

- Bổ sung collagen cho da và giúp da sản sinh thêm collagen, trẻ hóa.

- Giảm nếp nhắn, giúp da mịn màng, căng trẻ. Trắng da.

- Tăng nội tiết tố nữ, giúp trẻ đẹp nữ tính.

- Giảm căng thẳng, tăng hưng phấn, yêu đời.', CAST(600000.00 AS Decimal(10, 2)), 2, 1)
INSERT [dbo].[Products] ([id], [name], [image], [description], [price], [category_id], [active]) VALUES (1017, N'Hỗ trợ giảm cân Body Slim Premium', N'sanpham1.webp', N'Không dùng cho phụ nữ có thai, phụ nữ cho con bú, người cao huyết áp, người có tiền sử bệnh tim mạch, người bị tiểu đường, người mẫn cảm với các thành phần của thuốc', CAST(396000.00 AS Decimal(10, 2)), 3, 1)
INSERT [dbo].[Products] ([id], [name], [image], [description], [price], [category_id], [active]) VALUES (1018, N'Nước uống hỗ trợ giảm cân Inno.N Condition Body Fit', N'sanpham2.webp', N'Nước uống hỗ trợ giảm cân Inno.N Condition Body Fit chứa các thành phần chiết xuất thiên nhiên, hỗ trợ tăng cường chuyển hóa chất béo, hỗ trợ giảm béo.', CAST(27000.00 AS Decimal(10, 2)), 3, 1)
INSERT [dbo].[Products] ([id], [name], [image], [description], [price], [category_id], [active]) VALUES (1019, N'Viên sủi hỗ trợ giảm cân và sáng da Crystal Slim And Shinning', N'sanpham3.webp', N'Viên sủi hỗ trợ giảm cân và sáng da Crystal Slim And Shinning hỗ trợ giảm lượng chất béo trong cơ thể bằng cách ức chế sự tổng hợp carbohydrate thành chất béo, hỗ trợ sự thay đổi tế bào và duy trì collagen, giúp bảo vệ tính toàn vẹn cấu trúc da, nuôi dưỡng da căng bóng, làm mờ thâm nám sạm và chống lão hóa hiệu quả.', CAST(249500.00 AS Decimal(10, 2)), 3, 1)
INSERT [dbo].[Products] ([id], [name], [image], [description], [price], [category_id], [active]) VALUES (1020, N'Viên uống hỗ trợ giảm cân Alltimes Care Platinum Weightloss', N'sanpham4.webp', N'Viên uống hỗ trợ giảm cân Alltimes Care Platinum Weightloss 3300mg giúp hỗ trợ đốt cháy chất béo thành năng lượng, kết hợp chế độ ăn uống hợp lý và tập thể dục giúp kiểm soát trọng lượng cơ thể.', CAST(542470.00 AS Decimal(10, 2)), 3, 1)
INSERT [dbo].[Products] ([id], [name], [image], [description], [price], [category_id], [active]) VALUES (1022, N'dangnhpc03033@gmail.com', N'6b764210-.jpg', N'6512', CAST(11564.00 AS Decimal(10, 2)), 2, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[SupplierProducts] ON 

INSERT [dbo].[SupplierProducts] ([SupplierProducts_id], [supplier_id], [product_id]) VALUES (16, 1, 1009)
INSERT [dbo].[SupplierProducts] ([SupplierProducts_id], [supplier_id], [product_id]) VALUES (17, 1, 1010)
INSERT [dbo].[SupplierProducts] ([SupplierProducts_id], [supplier_id], [product_id]) VALUES (18, 2, 1010)
INSERT [dbo].[SupplierProducts] ([SupplierProducts_id], [supplier_id], [product_id]) VALUES (19, 3, 1011)
INSERT [dbo].[SupplierProducts] ([SupplierProducts_id], [supplier_id], [product_id]) VALUES (20, 4, 1012)
INSERT [dbo].[SupplierProducts] ([SupplierProducts_id], [supplier_id], [product_id]) VALUES (23, 7, 1013)
INSERT [dbo].[SupplierProducts] ([SupplierProducts_id], [supplier_id], [product_id]) VALUES (24, 8, 1014)
INSERT [dbo].[SupplierProducts] ([SupplierProducts_id], [supplier_id], [product_id]) VALUES (25, 9, 1015)
INSERT [dbo].[SupplierProducts] ([SupplierProducts_id], [supplier_id], [product_id]) VALUES (26, 10, 1016)
INSERT [dbo].[SupplierProducts] ([SupplierProducts_id], [supplier_id], [product_id]) VALUES (27, 11, 1017)
INSERT [dbo].[SupplierProducts] ([SupplierProducts_id], [supplier_id], [product_id]) VALUES (30, 11, 1018)
INSERT [dbo].[SupplierProducts] ([SupplierProducts_id], [supplier_id], [product_id]) VALUES (31, 1, 1019)
SET IDENTITY_INSERT [dbo].[SupplierProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([id], [name], [address], [contact_info]) VALUES (1, N'Công ty TNHH Mediphar USA', N'93 Đất Thánh, P.6, Q.Tân Bình, TP HCM', N'0973708850 ')
INSERT [dbo].[Suppliers] ([id], [name], [address], [contact_info]) VALUES (2, N' Công ty Cổ phần Dược phẩm Dược liệu Pharmedic', N'367 Nguyễn Trãi, P. Nguyễn Cư Trinh, Quận 1, TP. HCM', N'02839200250')
INSERT [dbo].[Suppliers] ([id], [name], [address], [contact_info]) VALUES (3, N' Công ty sản xuất thực phẩm chức năng SPM', N'C4, Đường Bửu Long, P. 15, Q. 10, TP. Hồ Chí Minh', N'0798759473')
INSERT [dbo].[Suppliers] ([id], [name], [address], [contact_info]) VALUES (4, N'Công ty TNHH Sản xuất – Đầu tư Life Gift Việt Nam', N'Lô A3, Khu công nghiệp Cầu Tràm, Xã Long Trạch, Huyện Cần Đước, Long An', N'0272372.3486')
INSERT [dbo].[Suppliers] ([id], [name], [address], [contact_info]) VALUES (7, N'CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI NHẬT VIỆT', N'Số 454, Đường 30/04, Khu 5, P. Chánh Nghĩa, Tp. Thủ Dầu Một, Bình Duơng', N'0903661722')
INSERT [dbo].[Suppliers] ([id], [name], [address], [contact_info]) VALUES (8, N'CÔNG TY CỔ PHẦN PHÁT TRIỂN ONG MIỀN NÚI', N'54 tổ 44A, ngõ 211, Khương Trung, Thanh Xuân, Tp Hà Nội (TPHN)', N'0982289536')
INSERT [dbo].[Suppliers] ([id], [name], [address], [contact_info]) VALUES (9, N'CÔNG TY CỔ PHẦN DƯỢC PHẨM ĐÔNG DƯỢC 5', N'558 Nguyễn Trãi, P. 8, Q. 5, Tp. Hồ Chí Minh', N'0838559126')
INSERT [dbo].[Suppliers] ([id], [name], [address], [contact_info]) VALUES (10, N'CÔNG TY CỔ PHẦN XUẤT NHẬP KHẨU Y TẾ DOMESCO', N'66 Quốc lộ 30, Phường Mỹ Phú, Thành phố Cao Lãnh, Tỉnh Đồng Tháp', N'02773854634')
INSERT [dbo].[Suppliers] ([id], [name], [address], [contact_info]) VALUES (11, N'CÔNG TY CỔ PHẦN DƯỢC LÂM ĐỒNG - LADOPHAR', N'6A Ngô Quyền, P. 6, Tp. Đà Lạt, Lâm Đồng', N'02639999999')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [fullname], [username], [password], [email], [admin], [active], [addresscity_id], [addressdistrict_id]) VALUES (1, N'Nguyễn Hồng Phương', N'phuong', N'123', N'nguyenhongphuong.vn1@gmail.com', 1, 1, NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [username], [password], [email], [admin], [active], [addresscity_id], [addressdistrict_id]) VALUES (2, N'Nguyễn Hải Đăng1', N'dang', N'123', N'dang@gmail.com', 0, 1, NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [username], [password], [email], [admin], [active], [addresscity_id], [addressdistrict_id]) VALUES (5, N'Nguyễn Quốc Huy', N'huy', N'123', N'huy@gmail.com', 0, 1, NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [username], [password], [email], [admin], [active], [addresscity_id], [addressdistrict_id]) VALUES (6, N'Vương Tấn Phát', N'phat', N'234', N'phat@gmail.com', 1, 1, NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [username], [password], [email], [admin], [active], [addresscity_id], [addressdistrict_id]) VALUES (9, N'Võ Minh Hào ', N'hao', N'123', N'hao@gmail.com', 0, 1, NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [username], [password], [email], [admin], [active], [addresscity_id], [addressdistrict_id]) VALUES (10, N'Nguyễn Hồng Phương', N'phuong1', N'123', N'nguyenhongphuong.vn1@gmail.com', 1, 1, NULL, NULL)
INSERT [dbo].[Users] ([id], [fullname], [username], [password], [email], [admin], [active], [addresscity_id], [addressdistrict_id]) VALUES (11, N'dangnhpc03033@gmail.com', N'user1', N'pass1', N'dangnhpc03033@gmail.com', 1, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[brand_supplier]  WITH CHECK ADD  CONSTRAINT [FKck0j9tga4dk4okmo2nm9qpgkr] FOREIGN KEY([brand_id])
REFERENCES [dbo].[Brands] ([id])
GO
ALTER TABLE [dbo].[brand_supplier] CHECK CONSTRAINT [FKck0j9tga4dk4okmo2nm9qpgkr]
GO
ALTER TABLE [dbo].[brand_supplier]  WITH CHECK ADD  CONSTRAINT [FKr9jbiker92qe8s2kc8q23eqb0] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[Suppliers] ([id])
GO
ALTER TABLE [dbo].[brand_supplier] CHECK CONSTRAINT [FKr9jbiker92qe8s2kc8q23eqb0]
GO
ALTER TABLE [dbo].[BrandSupplier]  WITH CHECK ADD  CONSTRAINT [FK_BrandSupplier_Brands] FOREIGN KEY([brand_id])
REFERENCES [dbo].[Brands] ([id])
GO
ALTER TABLE [dbo].[BrandSupplier] CHECK CONSTRAINT [FK_BrandSupplier_Brands]
GO
ALTER TABLE [dbo].[BrandSupplier]  WITH CHECK ADD  CONSTRAINT [FK_BrandSupplier_Suppliers] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[Suppliers] ([id])
GO
ALTER TABLE [dbo].[BrandSupplier] CHECK CONSTRAINT [FK_BrandSupplier_Suppliers]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK__Cart__product_id__2C3393D0] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK__Cart__product_id__2C3393D0]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK__Cart__user_id__2B3F6F97] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK__Cart__user_id__2B3F6F97]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FKb5o626f86h46m4s7ms6ginnop] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FKb5o626f86h46m4s7ms6ginnop]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FKmd2ap4oxo3wvgkf4fnaye532i] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FKmd2ap4oxo3wvgkf4fnaye532i]
GO
ALTER TABLE [dbo].[Discounts]  WITH CHECK ADD  CONSTRAINT [FK__Discounts__produ__34C8D9D1] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Discounts] CHECK CONSTRAINT [FK__Discounts__produ__34C8D9D1]
GO
ALTER TABLE [dbo].[Discounts]  WITH CHECK ADD  CONSTRAINT [FKe3tqxsyxv7qcy8uvf2lns1hx8] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Discounts] CHECK CONSTRAINT [FKe3tqxsyxv7qcy8uvf2lns1hx8]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK__Favorites__product_id__2C3393D0] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK__Favorites__product_id__2C3393D0]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK__Favorites__user_id__2B3F6F97] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK__Favorites__user_id__2B3F6F97]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK6sgu5npe8ug4o42bf9j71x20c] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK6sgu5npe8ug4o42bf9j71x20c]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FKk7du8b8ewipawnnpg76d55fus] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FKk7du8b8ewipawnnpg76d55fus]
GO
ALTER TABLE [dbo].[Inventorys]  WITH CHECK ADD  CONSTRAINT [FK__Inventory__produ__2F10007B] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Inventorys] CHECK CONSTRAINT [FK__Inventory__produ__2F10007B]
GO
ALTER TABLE [dbo].[Inventorys]  WITH CHECK ADD  CONSTRAINT [FKkm7ciuyfn3jqyggymp4k7jxlr] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Inventorys] CHECK CONSTRAINT [FKkm7ciuyfn3jqyggymp4k7jxlr]
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Carts] FOREIGN KEY([cart_id])
REFERENCES [dbo].[Carts] ([id])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK_Order_Details_Carts]
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Orders2] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK_Order_Details_Orders2]
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FKi2yl60mbrl0ov4qvo47gqhayo] FOREIGN KEY([cart_id])
REFERENCES [dbo].[Carts] ([id])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FKi2yl60mbrl0ov4qvo47gqhayo]
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FKjyu2qbqt8gnvno9oe9j2s2ldk] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FKjyu2qbqt8gnvno9oe9j2s2ldk]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__user_id__31EC6D26] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__user_id__31EC6D26]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK32ql8ubntj5uh44ph9659tiih] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK32ql8ubntj5uh44ph9659tiih]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__catego__267ABA7A] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__catego__267ABA7A]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FKog2rp4qthbtt2lfyhfo32lsw9] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FKog2rp4qthbtt2lfyhfo32lsw9]
GO
ALTER TABLE [dbo].[supplier_products]  WITH CHECK ADD  CONSTRAINT [FK16e0uqyscot6pd4fqdw0uwlhf] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[Suppliers] ([id])
GO
ALTER TABLE [dbo].[supplier_products] CHECK CONSTRAINT [FK16e0uqyscot6pd4fqdw0uwlhf]
GO
ALTER TABLE [dbo].[supplier_products]  WITH CHECK ADD  CONSTRAINT [FK9hkf1oec6mv7lwo4ai3c0uv2c] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[supplier_products] CHECK CONSTRAINT [FK9hkf1oec6mv7lwo4ai3c0uv2c]
GO
ALTER TABLE [dbo].[SupplierProducts]  WITH CHECK ADD  CONSTRAINT [FK_SupplierProducts_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[SupplierProducts] CHECK CONSTRAINT [FK_SupplierProducts_Products]
GO
ALTER TABLE [dbo].[SupplierProducts]  WITH CHECK ADD  CONSTRAINT [FK_SupplierProducts_Suppliers] FOREIGN KEY([supplier_id])
REFERENCES [dbo].[Suppliers] ([id])
GO
ALTER TABLE [dbo].[SupplierProducts] CHECK CONSTRAINT [FK_SupplierProducts_Suppliers]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_AddressCity] FOREIGN KEY([addresscity_id])
REFERENCES [dbo].[AddressCity] ([addresscity_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_AddressCity]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_AddressDistrict] FOREIGN KEY([addressdistrict_id])
REFERENCES [dbo].[AddressDistrict] ([addressdistrict_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_AddressDistrict]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FKc6x0owbmfsohsjvuvd2mj2yqi] FOREIGN KEY([addressdistrict_id])
REFERENCES [dbo].[address_district] ([addressdistrict_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FKc6x0owbmfsohsjvuvd2mj2yqi]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FKrilqe7y3xtm9l6be8oeo5i353] FOREIGN KEY([addresscity_id])
REFERENCES [dbo].[address_city] ([addresscity_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FKrilqe7y3xtm9l6be8oeo5i353]
GO
USE [master]
GO
ALTER DATABASE [Orihiro] SET  READ_WRITE 
GO
