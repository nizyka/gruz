USE [master]
GO
/****** Object:  Database [BD for dispetchera]    Script Date: Ср 08.06.22 23:49:39 ******/
CREATE DATABASE [BD for dispetchera]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD for dispetchera', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BD for dispetchera.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD for dispetchera_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BD for dispetchera_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BD for dispetchera] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD for dispetchera].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD for dispetchera] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD for dispetchera] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD for dispetchera] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD for dispetchera] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD for dispetchera] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD for dispetchera] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD for dispetchera] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD for dispetchera] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD for dispetchera] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD for dispetchera] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD for dispetchera] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD for dispetchera] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD for dispetchera] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD for dispetchera] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD for dispetchera] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD for dispetchera] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD for dispetchera] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD for dispetchera] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD for dispetchera] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD for dispetchera] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD for dispetchera] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD for dispetchera] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD for dispetchera] SET RECOVERY FULL 
GO
ALTER DATABASE [BD for dispetchera] SET  MULTI_USER 
GO
ALTER DATABASE [BD for dispetchera] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD for dispetchera] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD for dispetchera] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD for dispetchera] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD for dispetchera] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD for dispetchera] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD for dispetchera', N'ON'
GO
ALTER DATABASE [BD for dispetchera] SET QUERY_STORE = OFF
GO
USE [BD for dispetchera]
GO
/****** Object:  Table [dbo].[Authorization]    Script Date: Ср 08.06.22 23:49:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorization](
	[ID_authorization] [int] NOT NULL,
	[Login_dispatcher] [nvarchar](50) NULL,
	[Passvord_dispatcher] [nvarchar](50) NULL,
 CONSTRAINT [PK_Authorization] PRIMARY KEY CLUSTERED 
(
	[ID_authorization] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: Ср 08.06.22 23:49:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID_client] [int] NOT NULL,
	[Name_client] [nvarchar](20) NULL,
	[Surname_client] [nvarchar](50) NULL,
	[Patronymic_client] [nvarchar](50) NULL,
	[Requisites] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[id_contract] [int] NULL,
 CONSTRAINT [PK_Cient] PRIMARY KEY CLUSTERED 
(
	[ID_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract clients]    Script Date: Ср 08.06.22 23:49:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract clients](
	[ID_contract] [int] NOT NULL,
	[Number_contract] [int] NULL,
	[Date_of_conclusion] [date] NULL,
	[Date_termination] [date] NULL,
 CONSTRAINT [PK_Contract clients] PRIMARY KEY CLUSTERED 
(
	[ID_contract] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cost of orders]    Script Date: Ср 08.06.22 23:49:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cost of orders](
	[ID_cost] [nchar](10) NULL,
	[id_rate] [nchar](10) NULL,
	[id_routes] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dispatcher]    Script Date: Ср 08.06.22 23:49:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dispatcher](
	[ID_dispatcher] [int] NOT NULL,
	[Name_dispatcher] [nvarchar](20) NULL,
	[Surname_dispatcher] [nvarchar](50) NULL,
	[Patronymic_dispatcher] [nvarchar](50) NULL,
	[id_authorization] [int] NULL,
	[Tel] [int] NULL,
 CONSTRAINT [PK_Dispatcher] PRIMARY KEY CLUSTERED 
(
	[ID_dispatcher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: Ср 08.06.22 23:49:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID_orders] [int] NOT NULL,
	[id_dispatcher] [int] NULL,
	[id_client] [int] NULL,
	[id_type_of_cargo] [int] NULL,
	[id_routes] [int] NULL,
	[id_transporter] [int] NULL,
	[Order_creation_date] [date] NULL,
	[Order_completion_date] [date] NULL,
	[Nomber_TTN] [int] NULL,
	[id_rate] [int] NULL,
	[Cargo_volume] [nvarchar](20) NULL,
	[Cargo_weight] [nvarchar](20) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID_orders] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rate]    Script Date: Ср 08.06.22 23:49:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rate](
	[ID_rate] [int] NOT NULL,
	[Titel_rate] [nvarchar](50) NULL,
	[Cost_per_km] [int] NULL,
 CONSTRAINT [PK_Rate] PRIMARY KEY CLUSTERED 
(
	[ID_rate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Routes]    Script Date: Ср 08.06.22 23:49:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Routes](
	[ID_routes] [int] NOT NULL,
	[Start_point] [nvarchar](50) NULL,
	[End_point] [nvarchar](50) NULL,
	[Distance] [int] NULL,
	[Time] [int] NULL,
 CONSTRAINT [PK_Routes] PRIMARY KEY CLUSTERED 
(
	[ID_routes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transporter]    Script Date: Ср 08.06.22 23:49:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transporter](
	[ID_transporter] [int] NOT NULL,
	[Titel] [nvarchar](50) NULL,
	[Requisites] [nvarchar](50) NULL,
	[Number_contract] [int] NULL,
	[Tel] [nvarchar](50) NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_Transporter] PRIMARY KEY CLUSTERED 
(
	[ID_transporter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type_of_cargo]    Script Date: Ср 08.06.22 23:49:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type_of_cargo](
	[ID_type_cargo] [int] NOT NULL,
	[Cargo_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Type_of_cargo] PRIMARY KEY CLUSTERED 
(
	[ID_type_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Authorization] ([ID_authorization], [Login_dispatcher], [Passvord_dispatcher]) VALUES (1, N'qw', N'qw')
GO
INSERT [dbo].[Client] ([ID_client], [Name_client], [Surname_client], [Patronymic_client], [Requisites], [Tel], [id_contract]) VALUES (1, N'Константин', N'Жаров', N'Иванович', N'ИНН:989808', N'89007443333', 1)
INSERT [dbo].[Client] ([ID_client], [Name_client], [Surname_client], [Patronymic_client], [Requisites], [Tel], [id_contract]) VALUES (2, N'Рита', N'Китов', N'Елисеевна', N'Счет:89334454', N'89996767777', 2)
INSERT [dbo].[Client] ([ID_client], [Name_client], [Surname_client], [Patronymic_client], [Requisites], [Tel], [id_contract]) VALUES (3, N'Иван', N'Ларинов', N'Андреевич', N'ИНН:933455', N'89963456754', 3)
INSERT [dbo].[Client] ([ID_client], [Name_client], [Surname_client], [Patronymic_client], [Requisites], [Tel], [id_contract]) VALUES (4, N'Кирилл', N'Краснов', N'Владимирович', N'Счте:90009000', N'89051238546', 4)
INSERT [dbo].[Client] ([ID_client], [Name_client], [Surname_client], [Patronymic_client], [Requisites], [Tel], [id_contract]) VALUES (5, N'Василиса', N'Конева', N'Анатольевна', N'ИНН:87877888', N'89067654555', 5)
GO
INSERT [dbo].[Contract clients] ([ID_contract], [Number_contract], [Date_of_conclusion], [Date_termination]) VALUES (1, 1, CAST(N'2021-02-24' AS Date), NULL)
INSERT [dbo].[Contract clients] ([ID_contract], [Number_contract], [Date_of_conclusion], [Date_termination]) VALUES (2, 2, CAST(N'2020-05-05' AS Date), CAST(N'2021-12-09' AS Date))
INSERT [dbo].[Contract clients] ([ID_contract], [Number_contract], [Date_of_conclusion], [Date_termination]) VALUES (3, 3, CAST(N'2020-07-20' AS Date), NULL)
INSERT [dbo].[Contract clients] ([ID_contract], [Number_contract], [Date_of_conclusion], [Date_termination]) VALUES (4, 4, CAST(N'2021-10-01' AS Date), NULL)
INSERT [dbo].[Contract clients] ([ID_contract], [Number_contract], [Date_of_conclusion], [Date_termination]) VALUES (5, 5, CAST(N'2022-01-29' AS Date), NULL)
GO
INSERT [dbo].[Dispatcher] ([ID_dispatcher], [Name_dispatcher], [Surname_dispatcher], [Patronymic_dispatcher], [id_authorization], [Tel]) VALUES (1, N'Инна', N'Орлова', N'Васильевна', 1, NULL)
GO
INSERT [dbo].[Orders] ([ID_orders], [id_dispatcher], [id_client], [id_type_of_cargo], [id_routes], [id_transporter], [Order_creation_date], [Order_completion_date], [Nomber_TTN], [id_rate], [Cargo_volume], [Cargo_weight]) VALUES (1, 1, 1, 1, 1, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-20' AS Date), 334, 1, N'8', N'5')
INSERT [dbo].[Orders] ([ID_orders], [id_dispatcher], [id_client], [id_type_of_cargo], [id_routes], [id_transporter], [Order_creation_date], [Order_completion_date], [Nomber_TTN], [id_rate], [Cargo_volume], [Cargo_weight]) VALUES (2, 1, 1, 3, 2, 2, CAST(N'2021-11-20' AS Date), CAST(N'2021-11-26' AS Date), 121, 2, N'9', N'8')
INSERT [dbo].[Orders] ([ID_orders], [id_dispatcher], [id_client], [id_type_of_cargo], [id_routes], [id_transporter], [Order_creation_date], [Order_completion_date], [Nomber_TTN], [id_rate], [Cargo_volume], [Cargo_weight]) VALUES (3, 1, 3, 2, 3, 1, CAST(N'2021-11-26' AS Date), CAST(N'2021-11-20' AS Date), 214, 1, N'5', N'2')
INSERT [dbo].[Orders] ([ID_orders], [id_dispatcher], [id_client], [id_type_of_cargo], [id_routes], [id_transporter], [Order_creation_date], [Order_completion_date], [Nomber_TTN], [id_rate], [Cargo_volume], [Cargo_weight]) VALUES (4, 1, 4, 2, 4, 2, CAST(N'2022-04-10' AS Date), CAST(N'2022-04-17' AS Date), 55, 1, N'6', N'6')
INSERT [dbo].[Orders] ([ID_orders], [id_dispatcher], [id_client], [id_type_of_cargo], [id_routes], [id_transporter], [Order_creation_date], [Order_completion_date], [Nomber_TTN], [id_rate], [Cargo_volume], [Cargo_weight]) VALUES (5, 1, 5, 1, 5, 2, CAST(N'2020-02-05' AS Date), CAST(N'2020-02-10' AS Date), 10, 2, N'4', N'3')
GO
INSERT [dbo].[Rate] ([ID_rate], [Titel_rate], [Cost_per_km]) VALUES (1, N'По городу', 10)
INSERT [dbo].[Rate] ([ID_rate], [Titel_rate], [Cost_per_km]) VALUES (2, N'По области', 20)
GO
INSERT [dbo].[Routes] ([ID_routes], [Start_point], [End_point], [Distance], [Time]) VALUES (1, N'ярославль', N'вологда', 210, 3)
INSERT [dbo].[Routes] ([ID_routes], [Start_point], [End_point], [Distance], [Time]) VALUES (2, N'москва', N'ярославль', 370, 4)
INSERT [dbo].[Routes] ([ID_routes], [Start_point], [End_point], [Distance], [Time]) VALUES (3, N'иваново', N'вологда', 190, 3)
INSERT [dbo].[Routes] ([ID_routes], [Start_point], [End_point], [Distance], [Time]) VALUES (4, N'москва', N'спб', 1000, 15)
INSERT [dbo].[Routes] ([ID_routes], [Start_point], [End_point], [Distance], [Time]) VALUES (5, N'ярославль', N'кострома', 120, 3)
GO
INSERT [dbo].[Transporter] ([ID_transporter], [Titel], [Requisites], [Number_contract], [Tel], [Description]) VALUES (1, N'ДоВезу', N'Счет:89065675889', 1, N'89965412323', N'Перевоз большого обема и смассы груза, несколько рефрежираторов, везем по всей России')
INSERT [dbo].[Transporter] ([ID_transporter], [Titel], [Requisites], [Number_contract], [Tel], [Description]) VALUES (2, N'Авто воз', N'ИНН:89889887', 2, N'89067897878', N'Везем стройматериалы по городу и области')
GO
INSERT [dbo].[Type_of_cargo] ([ID_type_cargo], [Cargo_name]) VALUES (1, N'Опасные грузы')
INSERT [dbo].[Type_of_cargo] ([ID_type_cargo], [Cargo_name]) VALUES (2, N'Скоропортящиеся грузы')
INSERT [dbo].[Type_of_cargo] ([ID_type_cargo], [Cargo_name]) VALUES (3, N'Насыпные грузы')
INSERT [dbo].[Type_of_cargo] ([ID_type_cargo], [Cargo_name]) VALUES (4, N'Газообразные грузы')
INSERT [dbo].[Type_of_cargo] ([ID_type_cargo], [Cargo_name]) VALUES (5, N'Наливные грузы')
INSERT [dbo].[Type_of_cargo] ([ID_type_cargo], [Cargo_name]) VALUES (6, N'Пылевидные грузы')
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Cient_Contract clients] FOREIGN KEY([id_contract])
REFERENCES [dbo].[Contract clients] ([ID_contract])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Cient_Contract clients]
GO
ALTER TABLE [dbo].[Dispatcher]  WITH CHECK ADD  CONSTRAINT [FK_Dispatcher_Authorization] FOREIGN KEY([id_authorization])
REFERENCES [dbo].[Authorization] ([ID_authorization])
GO
ALTER TABLE [dbo].[Dispatcher] CHECK CONSTRAINT [FK_Dispatcher_Authorization]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Cient] FOREIGN KEY([id_client])
REFERENCES [dbo].[Client] ([ID_client])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Cient]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Dispatcher] FOREIGN KEY([id_dispatcher])
REFERENCES [dbo].[Dispatcher] ([ID_dispatcher])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Dispatcher]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Rate1] FOREIGN KEY([id_rate])
REFERENCES [dbo].[Rate] ([ID_rate])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Rate1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Routes] FOREIGN KEY([id_routes])
REFERENCES [dbo].[Routes] ([ID_routes])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Routes]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Transporter] FOREIGN KEY([id_transporter])
REFERENCES [dbo].[Transporter] ([ID_transporter])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Transporter]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Type_of_cargo] FOREIGN KEY([id_type_of_cargo])
REFERENCES [dbo].[Type_of_cargo] ([ID_type_cargo])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Type_of_cargo]
GO
USE [master]
GO
ALTER DATABASE [BD for dispetchera] SET  READ_WRITE 
GO
