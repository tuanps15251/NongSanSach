USE [master]
GO
DROP DATABASE [PROTEAM]
GO
/****** Object:  Database [PROTEAM]    Script Date: 11/23/2022 2:36:55 PM ******/
CREATE DATABASE [PROTEAM]
GO
ALTER DATABASE [PROTEAM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PROTEAM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PROTEAM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PROTEAM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PROTEAM] SET ARITHABORT OFF 
GO
ALTER DATABASE [PROTEAM] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PROTEAM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PROTEAM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PROTEAM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PROTEAM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PROTEAM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PROTEAM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PROTEAM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PROTEAM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PROTEAM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PROTEAM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PROTEAM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PROTEAM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PROTEAM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PROTEAM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PROTEAM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PROTEAM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PROTEAM] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PROTEAM] SET  MULTI_USER 
GO
ALTER DATABASE [PROTEAM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PROTEAM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PROTEAM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PROTEAM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PROTEAM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PROTEAM] SET QUERY_STORE = OFF
GO
USE [PROTEAM]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 11/23/2022 2:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Phone] [varchar](10) NOT NULL,
	[Province] [nvarchar](50) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
	[Ward] [nvarchar](50) NOT NULL,
	[Detail] [nvarchar](200) NOT NULL,
	[User_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/23/2022 2:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Logo] [varchar](100) NOT NULL,
	[Banner] [varchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
	[NameSearch] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 11/23/2022 2:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](255) NOT NULL,
	[Star] [int] NOT NULL,
	[User_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Status] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 11/23/2022 2:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[Price] [int] NOT NULL,
	[Quality] [int] NOT NULL,
	[ApplyDay] [date] NOT NULL,
	[Expiration] [date] NOT NULL,
	[MoneyLimit] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 11/23/2022 2:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Department] [nvarchar](50) NOT NULL,
	[Position] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](10) NOT NULL,
	[StartDay] [date] NOT NULL,
	[Salary] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
	[User_Id] [int] NOT NULL,
	[Image] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 11/23/2022 2:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformationShop]    Script Date: 11/23/2022 2:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationShop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Active] [bit] NULL,
	[TimeOpen] [nvarchar](50) NOT NULL,
	[Logo] [varchar](100) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Fax] [varchar](15) NOT NULL,
	[Email] [varchar](25) NOT NULL,
	[LogoFooter] [varchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufactures]    Script Date: 11/23/2022 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufactures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Logo] [varchar](100) NOT NULL,
	[Banner] [varchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuOne]    Script Date: 11/23/2022 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuOne](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NameSearch] [nvarchar](50) NOT NULL,
	[Cate_Id] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuTwo]    Script Date: 11/23/2022 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuTwo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NameSearch] [nvarchar](50) NOT NULL,
	[Menu1_Id] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/23/2022 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Address_Id] [int] NOT NULL,
	[Discount_Id] [int] NULL,
	[Quality] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Method] [char](1) NOT NULL,
	[Status] [char](1) NOT NULL,
	[Comment] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/23/2022 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Point] [int] NULL,
	[Quality] [int] NOT NULL,
	[Views] [int] NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Specification] [nvarchar](max) NOT NULL,
	[Image1] [nvarchar](100) NOT NULL,
	[Image2] [nvarchar](100) NOT NULL,
	[Image3] [nvarchar](100) NOT NULL,
	[Image4] [nvarchar](100) NOT NULL,
	[Image5] [nvarchar](100) NOT NULL,
	[Active] [bit] NOT NULL,
	[Manu_Id] [int] NOT NULL,
	[Cate_Id] [int] NOT NULL,
	[NameSearch] [varchar](50) NOT NULL,
	[Color] [nvarchar](20) NULL,
	[Memory] [nvarchar](10) NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/23/2022 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Role]    Script Date: 11/23/2022 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Role_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/23/2022 2:36:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](125) NOT NULL,
	[FullName] [nvarchar](125) NOT NULL,
	[Point] [int] NULL,
	[Birthday] [date] NULL,
	[CreateDay] [datetime] NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[Sex] [int] NULL,
	[Subscribe] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (NULL) FOR [NameSearch]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [Image]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT ((0)) FOR [Active]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (NULL) FOR [Discount_Id]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (NULL) FOR [Comment]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Point]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Views]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [Color]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [Memory]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Point]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [Birthday]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Sex]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Subscribe]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuOne]  WITH CHECK ADD FOREIGN KEY([Cate_Id])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuTwo]  WITH CHECK ADD FOREIGN KEY([Menu1_Id])
REFERENCES [dbo].[MenuOne] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Address_Id])
REFERENCES [dbo].[Address] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Discount_Id])
REFERENCES [dbo].[Discount] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([Cate_Id])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([Manu_Id])
REFERENCES [dbo].[Manufactures] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [PROTEAM] SET  READ_WRITE 
GO
