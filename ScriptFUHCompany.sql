CREATE database FUH_COMPANY
use [FUH_COMPANY]
GO
/****** Object:  Table [dbo].[tblDepartment]    Script Date: 9/6/2024 2:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDepartment]
(
	[depNum] [int] NOT NULL,
	[depName] [nvarchar](50) NULL,
	[mgrSSN] [decimal](18, 0) NULL,
	[mgrAssDate] [datetime] NULL,
	CONSTRAINT [PK_tblDepartment] PRIMARY KEY CLUSTERED 
(
	[depNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDependent]    Script Date: 9/6/2024 2:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDependent]
(
	[depName] [nvarchar](50) NOT NULL,
	[empSSN] [decimal](18, 0) NOT NULL,
	[depSex] [char](1) NULL,
	[depBirthdate] [datetime] NULL,
	[depRelationship] [nvarchar](50) NULL,
	CONSTRAINT [PK_tblDependent] PRIMARY KEY CLUSTERED 
(
	[depName] ASC,
	[empSSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDepLocation]    Script Date: 9/6/2024 2:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDepLocation]
(
	[depNum] [int] NOT NULL,
	[locNum] [int] NOT NULL,
	CONSTRAINT [PK_tblDepLocation] PRIMARY KEY CLUSTERED 
(
	[depNum] ASC,
	[locNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 9/6/2024 2:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEmployee]
(
	[empSSN] [decimal](18, 0) NOT NULL,
	[empName] [nvarchar](50) NULL,
	[empAddress] [nvarchar](50) NULL,
	[empSalary] [decimal](18, 0) NULL,
	[empSex] [char](1) NULL,
	[empBirthdate] [datetime] NULL,
	[depNum] [int] NULL,
	[supervisorSSN] [decimal](18, 0) NULL,
	[empStartdate] [datetime] NULL,
	CONSTRAINT [PK_tblEmployee] PRIMARY KEY CLUSTERED 
(
	[empSSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLocation]    Script Date: 9/6/2024 2:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLocation]
(
	[locNum] [int] IDENTITY(1,1) NOT NULL,
	[locName] [nvarchar](50) NULL,
	CONSTRAINT [PK_tblLocation] PRIMARY KEY CLUSTERED 
(
	[locNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblProject]    Script Date: 9/6/2024 2:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProject]
(
	[proNum] [int] NOT NULL,
	[proName] [nvarchar](50) NULL,
	[locNum] [int] NULL,
	[depNum] [int] NULL,
	CONSTRAINT [PK_tblProject] PRIMARY KEY CLUSTERED 
(
	[proNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblWorksOn]    Script Date: 9/6/2024 2:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWorksOn]
(
	[empSSN] [decimal](18, 0) NOT NULL,
	[proNum] [int] NOT NULL,
	[workHours] [int] NULL,
	CONSTRAINT [PK_tblWorksOn] PRIMARY KEY CLUSTERED 
(
	[empSSN] ASC,
	[proNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tblDepartment]
	([depNum], [depName], [mgrSSN], [mgrAssDate])
VALUES
	(1, N'Phòng Phần mềm trong nước', CAST(30121050037 AS Decimal(18, 0)), CAST(N'2003-01-10 00:00:00.000' AS DateTime))
INSERT [dbo].[tblDepartment]
	([depNum], [depName], [mgrSSN], [mgrAssDate])
VALUES
	(2, N'Phòng Phần mềm nước ngoài', CAST(30121050142 AS Decimal(18, 0)), CAST(N'2005-01-06 00:00:00.000' AS DateTime))
INSERT [dbo].[tblDepartment]
	([depNum], [depName], [mgrSSN], [mgrAssDate])
VALUES
	(3, N'Phòng Giải pháp mạng truyền thông', CAST(30121050254 AS Decimal(18, 0)), CAST(N'2000-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[tblDepartment]
	([depNum], [depName], [mgrSSN], [mgrAssDate])
VALUES
	(4, N'Phòng Dịch vụ chăm sóc khách hàng', CAST(30121050295 AS Decimal(18, 0)), CAST(N'2008-01-07 00:00:00.000' AS DateTime))
INSERT [dbo].[tblDepartment]
	([depNum], [depName], [mgrSSN], [mgrAssDate])
VALUES
	(5, N'Phòng Nghiên cứu và phát triển', CAST(30121050184 AS Decimal(18, 0)), CAST(N'2006-01-12 00:00:00.000' AS DateTime))
INSERT [dbo].[tblDependent]
	([depName], [empSSN], [depSex], [depBirthdate], [depRelationship])
VALUES
	(N'Bùi Phương Ngọc', CAST(30121050180 AS Decimal(18, 0)), N'M', CAST(N'1967-03-30 00:00:00.000' AS DateTime), N'Chồng')
INSERT [dbo].[tblDependent]
	([depName], [empSSN], [depSex], [depBirthdate], [depRelationship])
VALUES
	(N'Đoàn Minh Đạo', CAST(30121050038 AS Decimal(18, 0)), N'M', CAST(N'1962-10-04 00:00:00.000' AS DateTime), N'Chồng')
INSERT [dbo].[tblDependent]
	([depName], [empSSN], [depSex], [depBirthdate], [depRelationship])
VALUES
	(N'Hà Mỹ Duyên', CAST(30121050037 AS Decimal(18, 0)), N'F', CAST(N'1980-06-15 00:00:00.000' AS DateTime), N'Vợ')
INSERT [dbo].[tblDependent]
	([depName], [empSSN], [depSex], [depBirthdate], [depRelationship])
VALUES
	(N'Hồ Đức Trung Hữu', CAST(30121050158 AS Decimal(18, 0)), N'M', CAST(N'1960-04-16 00:00:00.000' AS DateTime), N'Chồng')
INSERT [dbo].[tblDependent]
	([depName], [empSSN], [depSex], [depBirthdate], [depRelationship])
VALUES
	(N'Huỳnh Thị Ngọc Điệp', CAST(30121050049 AS Decimal(18, 0)), N'F', CAST(N'1970-06-13 00:00:00.000' AS DateTime), N'Vợ')
INSERT [dbo].[tblDependent]
	([depName], [empSSN], [depSex], [depBirthdate], [depRelationship])
VALUES
	(N'Nguyễn Thạc Hải', CAST(30121050254 AS Decimal(18, 0)), N'M', CAST(N'1970-09-17 00:00:00.000' AS DateTime), N'Chồng')
INSERT [dbo].[tblDependent]
	([depName], [empSSN], [depSex], [depBirthdate], [depRelationship])
VALUES
	(N'Nguyễn Thị Minh Hà', CAST(30121050184 AS Decimal(18, 0)), N'F', CAST(N'1980-03-06 00:00:00.000' AS DateTime), N'Em')
INSERT [dbo].[tblDependent]
	([depName], [empSSN], [depSex], [depBirthdate], [depRelationship])
VALUES
	(N'Nguyễn Thị Minh Hằng', CAST(30121050060 AS Decimal(18, 0)), N'F', CAST(N'1965-01-04 00:00:00.000' AS DateTime), N'Vợ')
INSERT [dbo].[tblDependent]
	([depName], [empSSN], [depSex], [depBirthdate], [depRelationship])
VALUES
	(N'Nguyễn Thị Thu Hằng', CAST(30121050142 AS Decimal(18, 0)), N'F', CAST(N'1969-03-30 00:00:00.000' AS DateTime), N'Vợ')
INSERT [dbo].[tblDependent]
	([depName], [empSSN], [depSex], [depBirthdate], [depRelationship])
VALUES
	(N'Nguyễn Thị Thùy Dung', CAST(30121050027 AS Decimal(18, 0)), N'F', CAST(N'1953-10-01 00:00:00.000' AS DateTime), N'Mẹ')
INSERT [dbo].[tblDependent]
	([depName], [empSSN], [depSex], [depBirthdate], [depRelationship])
VALUES
	(N'Phạm Nguyên Dũng', CAST(30121050015 AS Decimal(18, 0)), N'M', CAST(N'1965-04-16 00:00:00.000' AS DateTime), N'Chồng')
INSERT [dbo].[tblDependent]
	([depName], [empSSN], [depSex], [depBirthdate], [depRelationship])
VALUES
	(N'Phan Thành Đăng', CAST(30121050035 AS Decimal(18, 0)), N'M', CAST(N'1970-02-24 00:00:00.000' AS DateTime), N'Chồng')
INSERT [dbo].[tblDependent]
	([depName], [empSSN], [depSex], [depBirthdate], [depRelationship])
VALUES
	(N'Vương Thị Kim Cúc', CAST(30121050004 AS Decimal(18, 0)), N'F', CAST(N'1978-03-20 00:00:00.000' AS DateTime), N'Em')
INSERT [dbo].[tblDepLocation]
	([depNum], [locNum])
VALUES
	(1, 1)
INSERT [dbo].[tblDepLocation]
	([depNum], [locNum])
VALUES
	(1, 2)
INSERT [dbo].[tblDepLocation]
	([depNum], [locNum])
VALUES
	(1, 3)
INSERT [dbo].[tblDepLocation]
	([depNum], [locNum])
VALUES
	(1, 5)
INSERT [dbo].[tblDepLocation]
	([depNum], [locNum])
VALUES
	(2, 1)
INSERT [dbo].[tblDepLocation]
	([depNum], [locNum])
VALUES
	(2, 2)
INSERT [dbo].[tblDepLocation]
	([depNum], [locNum])
VALUES
	(2, 4)
INSERT [dbo].[tblDepLocation]
	([depNum], [locNum])
VALUES
	(3, 1)
INSERT [dbo].[tblDepLocation]
	([depNum], [locNum])
VALUES
	(3, 4)
INSERT [dbo].[tblDepLocation]
	([depNum], [locNum])
VALUES
	(4, 1)
INSERT [dbo].[tblDepLocation]
	([depNum], [locNum])
VALUES
	(4, 3)
INSERT [dbo].[tblDepLocation]
	([depNum], [locNum])
VALUES
	(4, 5)
INSERT [dbo].[tblDepLocation]
	([depNum], [locNum])
VALUES
	(5, 1)
INSERT [dbo].[tblDepLocation]
	([depNum], [locNum])
VALUES
	(5, 2)
INSERT [dbo].[tblDepLocation]
	([depNum], [locNum])
VALUES
	(5, 4)
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050004 AS Decimal(18, 0)), N'Mai Duy An', N'Long An', CAST(30000 AS Decimal(18, 0)), N'F', CAST(N'1968-02-17 00:00:00.000' AS DateTime), 1, CAST(30121050037 AS Decimal(18, 0)), CAST(N'2000-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050015 AS Decimal(18, 0)), N'Huỳnh Mai Anh', N'TP. Hồ Chí Minh', CAST(58000 AS Decimal(18, 0)), N'F', CAST(N'1963-05-04 00:00:00.000' AS DateTime), 1, CAST(30121050004 AS Decimal(18, 0)), CAST(N'2005-01-14 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050027 AS Decimal(18, 0)), N'Nguyễn Thúy Quỳnh Anh', N'Nam Định', CAST(91000 AS Decimal(18, 0)), N'F', CAST(N'1977-04-10 00:00:00.000' AS DateTime), 1, CAST(30121050004 AS Decimal(18, 0)), CAST(N'2005-02-25 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050035 AS Decimal(18, 0)), N'Tống Thị Lan Anh', N'Vũng Tàu', CAST(78000 AS Decimal(18, 0)), N'F', CAST(N'1978-10-28 00:00:00.000' AS DateTime), 1, CAST(30121050037 AS Decimal(18, 0)), CAST(N'2004-04-15 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050037 AS Decimal(18, 0)), N'Võ Việt Anh', N'Khánh Hòa', CAST(110000 AS Decimal(18, 0)), N'M', CAST(N'1974-11-11 00:00:00.000' AS DateTime), 1, NULL, CAST(N'2000-05-23 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050038 AS Decimal(18, 0)), N'Vũ Thuỵ Hồng Anh', N'TP. Hồ Chí Minh', CAST(104000 AS Decimal(18, 0)), N'F', CAST(N'1966-06-13 00:00:00.000' AS DateTime), 2, CAST(30121050142 AS Decimal(18, 0)), CAST(N'2000-05-24 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050049 AS Decimal(18, 0)), N'Trần Nguyễn Phương Bình', N'TP. Hồ Chí Minh', CAST(83000 AS Decimal(18, 0)), N'M', CAST(N'1959-05-17 00:00:00.000' AS DateTime), 2, CAST(30121050038 AS Decimal(18, 0)), CAST(N'2005-05-12 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050060 AS Decimal(18, 0)), N'Trần Thiện Bảo', N'TP. Hồ Chí Minh', CAST(75000 AS Decimal(18, 0)), N'M', CAST(N'1955-12-26 00:00:00.000' AS DateTime), 2, CAST(30121050038 AS Decimal(18, 0)), CAST(N'2008-10-20 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050142 AS Decimal(18, 0)), N'Nguyễn Hoàng Dũng', N'TP. Hồ Chí Minh', CAST(114000 AS Decimal(18, 0)), N'M', CAST(N'1956-02-26 00:00:00.000' AS DateTime), 2, NULL, CAST(N'2006-12-15 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050158 AS Decimal(18, 0)), N'Lê Hoàng Linh Giang', N'Huế', CAST(98000 AS Decimal(18, 0)), N'F', CAST(N'1957-07-16 00:00:00.000' AS DateTime), 2, CAST(30121050142 AS Decimal(18, 0)), CAST(N'2006-11-20 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050180 AS Decimal(18, 0)), N'Trần Ngọc Như Hằng', N'TP. Hồ Chí Minh', CAST(59000 AS Decimal(18, 0)), N'F', CAST(N'1970-05-29 00:00:00.000' AS DateTime), 5, CAST(30121050184 AS Decimal(18, 0)), CAST(N'2007-01-15 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050184 AS Decimal(18, 0)), N'Nguyễn Thị Minh Hưng', N'Thanh Hóa ', CAST(92000 AS Decimal(18, 0)), N'F', CAST(N'1976-12-23 00:00:00.000' AS DateTime), 5, NULL, CAST(N'2007-03-18 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050254 AS Decimal(18, 0)), N'Bùi Thị Thu Hương', N'TP. Hà Nội', CAST(117000 AS Decimal(18, 0)), N'F', CAST(N'1970-01-06 00:00:00.000' AS DateTime), 3, NULL, CAST(N'2008-06-24 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050265 AS Decimal(18, 0)), N'Phạm Thị Ngọc Hảo', N'Gia Lai', CAST(35000 AS Decimal(18, 0)), N'F', CAST(N'1975-02-04 00:00:00.000' AS DateTime), 3, CAST(30121050254 AS Decimal(18, 0)), CAST(N'2008-08-10 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050294 AS Decimal(18, 0)), N'Trịnh Hạnh', N'TP. Đà Nẵng', CAST(94000 AS Decimal(18, 0)), N'F', CAST(N'1977-02-12 00:00:00.000' AS DateTime), 4, CAST(30121050295 AS Decimal(18, 0)), CAST(N'2005-05-05 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050295 AS Decimal(18, 0)), N'Huỳnh Thị Như Hồng', N'TP. Cần Thơ', CAST(110000 AS Decimal(18, 0)), N'F', CAST(N'1970-08-14 00:00:00.000' AS DateTime), 4, NULL, CAST(N'2008-12-17 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050322 AS Decimal(18, 0)), N'Đỗ Thị Thúy Hùng', N'Sông Bé', CAST(76000 AS Decimal(18, 0)), N'M', CAST(N'1963-01-22 00:00:00.000' AS DateTime), 3, CAST(30121050254 AS Decimal(18, 0)), CAST(N'2002-11-11 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050336 AS Decimal(18, 0)), N'Trương Thanh Hiền', N'TP. Hải Phòng', CAST(102000 AS Decimal(18, 0)), N'F', CAST(N'1963-05-16 00:00:00.000' AS DateTime), 4, CAST(30121050295 AS Decimal(18, 0)), CAST(N'2003-04-27 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050341 AS Decimal(18, 0)), N'Nguyễn Đặng Hiếu', N'TP. Hồ Chí Minh', CAST(46000 AS Decimal(18, 0)), N'F', CAST(N'1970-08-30 00:00:00.000' AS DateTime), 4, CAST(30121050295 AS Decimal(18, 0)), CAST(N'2008-08-09 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050418 AS Decimal(18, 0)), N'Vũ Phạm Minh Hương', N'TP. Hà Nội', CAST(30000 AS Decimal(18, 0)), N'F', CAST(N'1971-08-17 00:00:00.000' AS DateTime), 5, CAST(30121050184 AS Decimal(18, 0)), CAST(N'2009-07-25 00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee]
	([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate])
VALUES
	(CAST(30121050982 AS Decimal(18, 0)), N'Hồ Việt Hoà', N'Đồng Nai', CAST(95000 AS Decimal(18, 0)), N'M', CAST(N'1970-02-03 00:00:00.000' AS DateTime), 3, CAST(30121050254 AS Decimal(18, 0)), CAST(N'2005-11-24 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblLocation] ON

INSERT [dbo].[tblLocation]
	([locNum], [locName])
VALUES
	(1, N'TP Hà Nội')
INSERT [dbo].[tblLocation]
	([locNum], [locName])
VALUES
	(2, N'TP Hải Phòng')
INSERT [dbo].[tblLocation]
	([locNum], [locName])
VALUES
	(3, N'TP Đà Nẵng')
INSERT [dbo].[tblLocation]
	([locNum], [locName])
VALUES
	(4, N'TP Huế')
INSERT [dbo].[tblLocation]
	([locNum], [locName])
VALUES
	(5, N'TP Hồ Chí Minh')
INSERT [dbo].[tblLocation]
	([locNum], [locName])
VALUES
	(6, N'TP Cần Thơ')
SET IDENTITY_INSERT [dbo].[tblLocation] OFF
INSERT [dbo].[tblProject]
	([proNum], [proName], [locNum], [depNum])
VALUES
	(1, N'ProjectA', 1, 3)
INSERT [dbo].[tblProject]
	([proNum], [proName], [locNum], [depNum])
VALUES
	(2, N'ProjectB', 1, 2)
INSERT [dbo].[tblProject]
	([proNum], [proName], [locNum], [depNum])
VALUES
	(3, N'ProjectC', 3, 2)
INSERT [dbo].[tblProject]
	([proNum], [proName], [locNum], [depNum])
VALUES
	(4, N'ProjectD', 2, 1)
INSERT [dbo].[tblProject]
	([proNum], [proName], [locNum], [depNum])
VALUES
	(5, N'ProjectE', 5, 4)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050027 AS Decimal(18, 0)), 1, 7)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050027 AS Decimal(18, 0)), 2, 5)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050027 AS Decimal(18, 0)), 4, 18)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050035 AS Decimal(18, 0)), 4, 15)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050037 AS Decimal(18, 0)), 1, 10)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050037 AS Decimal(18, 0)), 2, 10)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050037 AS Decimal(18, 0)), 4, 15)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050037 AS Decimal(18, 0)), 5, 5)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050038 AS Decimal(18, 0)), 2, 33)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050038 AS Decimal(18, 0)), 3, 12)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050049 AS Decimal(18, 0)), 2, 24)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050049 AS Decimal(18, 0)), 3, 6)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050060 AS Decimal(18, 0)), 2, 21)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050060 AS Decimal(18, 0)), 3, 27)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050142 AS Decimal(18, 0)), 2, 9)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050142 AS Decimal(18, 0)), 3, 12)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050158 AS Decimal(18, 0)), 2, 21)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050158 AS Decimal(18, 0)), 3, 12)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050254 AS Decimal(18, 0)), 1, 24)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050265 AS Decimal(18, 0)), 1, 40)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050294 AS Decimal(18, 0)), 3, 5)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050294 AS Decimal(18, 0)), 5, 15)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050295 AS Decimal(18, 0)), 5, 15)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050322 AS Decimal(18, 0)), 1, 30)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050336 AS Decimal(18, 0)), 5, 15)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050982 AS Decimal(18, 0)), 1, 33)
INSERT [dbo].[tblWorksOn]
	([empSSN], [proNum], [workHours])
VALUES
	(CAST(30121050982 AS Decimal(18, 0)), 2, 10)
ALTER TABLE [dbo].[tblDepartment]  WITH CHECK ADD  CONSTRAINT [FK_tblDepartment_tblEmployee] FOREIGN KEY([mgrSSN])
REFERENCES [dbo].[tblEmployee] ([empSSN])
GO
ALTER TABLE [dbo].[tblDepartment] CHECK CONSTRAINT [FK_tblDepartment_tblEmployee]
GO
ALTER TABLE [dbo].[tblDependent]  WITH CHECK ADD  CONSTRAINT [FK_tblDependent_tblEmployee] FOREIGN KEY([empSSN])
REFERENCES [dbo].[tblEmployee] ([empSSN])
GO
ALTER TABLE [dbo].[tblDependent] CHECK CONSTRAINT [FK_tblDependent_tblEmployee]
GO
ALTER TABLE [dbo].[tblDepLocation]  WITH CHECK ADD  CONSTRAINT [FK_tblDepLocation_tblDepartment] FOREIGN KEY([depNum])
REFERENCES [dbo].[tblDepartment] ([depNum])
GO
ALTER TABLE [dbo].[tblDepLocation] CHECK CONSTRAINT [FK_tblDepLocation_tblDepartment]
GO
ALTER TABLE [dbo].[tblDepLocation]  WITH CHECK ADD  CONSTRAINT [FK_tblDepLocation_tblLocation] FOREIGN KEY([locNum])
REFERENCES [dbo].[tblLocation] ([locNum])
GO
ALTER TABLE [dbo].[tblDepLocation] CHECK CONSTRAINT [FK_tblDepLocation_tblLocation]
GO
ALTER TABLE [dbo].[tblEmployee]  WITH CHECK ADD  CONSTRAINT [FK_tblEmployee_tblDepartment] FOREIGN KEY([depNum])
REFERENCES [dbo].[tblDepartment] ([depNum])
GO
ALTER TABLE [dbo].[tblEmployee] CHECK CONSTRAINT [FK_tblEmployee_tblDepartment]
GO
ALTER TABLE [dbo].[tblEmployee]  WITH CHECK ADD  CONSTRAINT [FK_tblEmployee_tblEmployee] FOREIGN KEY([supervisorSSN])
REFERENCES [dbo].[tblEmployee] ([empSSN])
GO
ALTER TABLE [dbo].[tblEmployee] CHECK CONSTRAINT [FK_tblEmployee_tblEmployee]
GO
ALTER TABLE [dbo].[tblProject]  WITH CHECK ADD  CONSTRAINT [FK_tblProject_tblDepartment] FOREIGN KEY([depNum])
REFERENCES [dbo].[tblDepartment] ([depNum])
GO
ALTER TABLE [dbo].[tblProject] CHECK CONSTRAINT [FK_tblProject_tblDepartment]
GO
ALTER TABLE [dbo].[tblProject]  WITH CHECK ADD  CONSTRAINT [FK_tblProject_tblLocation] FOREIGN KEY([locNum])
REFERENCES [dbo].[tblLocation] ([locNum])
GO
ALTER TABLE [dbo].[tblProject] CHECK CONSTRAINT [FK_tblProject_tblLocation]
GO
ALTER TABLE [dbo].[tblWorksOn]  WITH CHECK ADD  CONSTRAINT [FK_tblWorksOn_tblProject] FOREIGN KEY([proNum])
REFERENCES [dbo].[tblProject] ([proNum])
GO
ALTER TABLE [dbo].[tblWorksOn] CHECK CONSTRAINT [FK_tblWorksOn_tblProject]
GO

-- Find all employees names 'Võ Việt Anh'
select *
from tblEmployee
where empName = N'Võ Việt Anh'

-- Listing name and salary of all employees whose income exceed 50000
select e.empName, e.empSalary
from tblEmployee e
where e.empSalary > 50000

-- List all under 40 year old female or under 50 year old male employees
select *
from tblEmployee e
where (e.empSex = 'F' and (year(GETDATE()) - year (e.empBirthdate)<40)) or
	(e.empSex = 'M' and (year(GETDATE()) - year (e.empBirthdate)<50))

-- Find all cities of each department in which our company is 
select d.depName, l.locname
from tblDepartment d, tblLocation l, tblDepLocation dl
where d.depNum =l.locNum and dl.locNum = l.locNum

-- Find name of all those project numbers which have members

select distinct p.proName
from tblProject p, tblWorksOn w
where p.proNum = w.proNum

-- Find all those employees whose name is begin by "H" or salary exceed 8000

	select *
	from tblEmployee e
	where e.empName like N'H%'
union
	select *
	from tblEmployee e
	where e.empSalary > 80000

-- Find all those normal employees, that is who do not supervise any other employee

	select *
	from tblEmployee e
except
	select *
	from tblEmployee e
	where e.supervisorSSN is not null


-- Find all employees who work on projectB and projectC
	select *
	from tblWorksOn w, tblEmployee e, tblProject p
	where w.empSSN = e.empSSN and w.proNum = p.proNum and p.proName = 'ProjectB'
intersect
	select *
	from tblWorksOn w, tblEmployee e, tblProject p
	where w.empSSN = e.empSSN and w.proNum = p.proNum and p.proName = 'ProjectC'


-- Truy vấn con
-- Find the employees of "Phòng phần mềm trong nước" department
select *
from tblEmployee
where depNum = ANY (select depNum
from tblDepartment
where depName = N'Phòng Phần mềm trong nước')

select e.*
from tblEmployee e
where e.depNum = (select d.depNum
from tblDepartment d
where d.depName = N'Phòng phần mềm trong nước')

select e.*
from tblEmployee e
where e.depNum <> (select d.depNum
from tblDepartment d
where d.depName = N'phòng phần mềm trong nước')
-- <>: khác nhau

-- Find the employees have dependents 
select *
from tblEmployee e
where e.empSSN in (select dp.empSSN
from tblDependent dp)
-- in: dữ liệu phù hợp có TRONG câu truy vấn con, nhưng nó khác =, in chỉ trả về 1 GIÁ TRỊ

-- Find the employees dont have dependents
select *
from tblEmployee e
where e.empSSN not in (select dp.empSSN
from tblDependent dp)

-- Find the employees of Phòng phần mềm trong nước department
select *
from tblEmployee E, tblDepartment D
where e.depNum = d.depNum and d.depName Like N'Phòng phần mềm trong nước';

-- Find the employees of Phòng phần mềm trong nước department
select *
from tblEmployee
where depNum IN (select depNum
from tblDepartment
where depName = N'Phòng phần mềm trong nước')

--12 Find the dependents of all employees of department number 1
select *
from tblDependent
where empSSN IN (select empSSN
from tblEmployee
where depNum = 1)

--13 Find all those projects have the same location with projectA
select *
from tblProject
where locNum = (select p.locNum
from tblProject p
where p.proName = 'ProjectA')

--14 Find departments and employees who work in those departments, respectively
select *
from tblDepartment d join tblEmployee e on d.depNum = e.depNum

--15 For each location, listing the projects that are processed in it
select l.locNum, l.locName, p.proNum, p.proName
from tblLocation l left outer join tblProject p on l.locNum = p.locNum

select *
from tblDepartment

-- find numbers of employees
select AVG (empSalary) AS average_Of_Salary
from tblEmployee

select COUNT (*) as Count_Of_Employees
from tblEmployee

-- Find all employees have salary less than any salary of employees in department number 1
select e.*
from tblEmployee e
where e.empSalary < ANY (select e.empSalary
from tblEmployee e
where e.depNum = 1)

-- Find all employees have salary more than 
select e.*
from tblEmployee e
where e.empSalary > ALL (select e.empSalary
from tblEmployee e
where e.depNum = 1)

-- Find the employees of Phòng phần mềm trong nước
select *
from tblEmployee e, (select depNum
	from tblDepartment
	where depName = N'Phòng Phần mềm trong nước') d
where e.depNum = d.depNum

-- Find deparments and employees whose work in those departments
-- JOIN = INNER JOIN

select *
from tblDepartment d join tblEmployee e on d.depNum = e.depNum

-- For each locations, listing the projects that processed in it
-- LEFT JOIN: lấy hết dữ liệu bên trái
-- LEFT OUTER JOIN = LEFT JOIN tương tự RIGHT
select *
from tblLocation l left outer join tblProject p on p.locNum = l.locNum

-- For each department, listing the projects that is controls
select *
from tblDepartment d left join tblProject p on d.depNum = p.depNum

-- Líst all locations in which the projects are processsed
select distinct l.locNum, l.locName
from tblLocation l join tblProject p on l.locNum = p.locNum

-- Find average salary of all employees
select AVG(e.empSalary) as 'Average Salary'
from tblEmployee e

-- Find numbers of employees
select count(e.empSSN) as 'Number Employees'
from tblEmployee e

-- Group by employees department number
select e.depNum, count (e.empSSN) as 'Number of Employee'
from tblEmployee e
group by e.depNum

--List number of employees for each department number
select e.depNum, count (e.empSSN) as 'Number of Employee'
from tblEmployee e
group by e.depNum

-- Compute the number of employees for each project
select w.proNum, count (w.empSSN) as 'Number of employees'
from tblWorksOn w, tblProject p
where w.proNum = p.proNum
group by w.proNum

-- Compute the number of employees for each project. Output includes: proNum, proName, number of employees
select w.proNum, p.proname, count (w.empSSN) as 'number of employees'
from tblWorksOn w, tblProject p
where w.proNum = p.proNum
group by w.proNum, p.proName

-- Print the number of employees for each those departments whose average salary exceeds > 50000
select e.depNum, count (e.empSSN) as 'Number of Employees'
from tblEmployee e
group by e.depNum
having avg(e.empSalary) > 50000

-- Print the number of employees and average salary for each those departments whose average salary exceeds > 50000
select e.depNum, count (e.empSSN) as 'Number of Employees', AVG(e.empSalary) as 'AVG Salary'
from tblEmployee e
group by e.depNum
having avg(e.empSalary) > 80000

-- Count the number of employees of projects that work hours average > 20
select w.proNum, count (w.empSSN)
from tblWorksOn w
group by w.proNum
having avg(w.workHours) > 20


-- LAB 4

-- Cau 1
select e.empSSN, e.empName, d.depNum, d.depName
from tblEmployee e, tblDepartment d
where d.mgrSSN = e.empSSN and depName = N'Phòng Nghiên cứu và phát triển'

-- Cau 2
select p.proNum, p.proName, d.depName
from tblProject p, tblDepartment d
where d.depNum = p.depNum and depName = N'Phòng Nghiên cứu và phát triển'

-- Cau 3
select p.proNum, p.proName, d.depName
from tblDepartment d, tblProject p
where d.depNum = p.depNum and proName = N'ProjectB'

-- câu 4 
select e.empSSN, e.empName
from tblEmployee e
where e.supervisorSSN = (select e.empSSN
from tblEmployee e
where e.empName = N'Mai Duy An')

-- Câu 5
select e.empSSN, e.empName
from tblEmployee e
	join tblEmployee s on e.supervisorSSN = s.empSSN
where e.empName = 'Mai Duy An'

-- Câu 6
select p.proNum, l.locName
from tblLocation l, tblProject p
where p.locNum = l.locNum and p.proName = 'ProjectA'


-- Câu 7
select p.proNum, p.proName
from tblLocation l join tblProject p
	ON l.locNum = p.locNum
where l.locName = N'TP Hồ Chí Minh'

-- Câu 8
select d.depname, d.depBirthdate, e.empName
from tblDependent d
	join tblEmployee e on d.empSSN = e.empSSN
where datediff(year, d.depBirthdate, GETDATE()) > 18

-- Câu 9
select d.depName, d.depBirthdate, e.empName
from tblDependent d join tblEmployee e
	on d.empSSN = e.empSSN
where d.depSex = 'M'

-- câu 10
select d.depNum, d.depName, l.locName
from tblDepLocation dl, tblDepartment d, tblLocation l
where d.depNum = dl.depNum and dl.locNum = l.locNum and d.depName = N'Phòng nghiên cứu và phát triển'

-- câu 11
select p.proNum, p.proName, d.depName
from tblLocation l, tblProject p, tblDepartment d, tblDepLocation dl
where p.locNum = l.locNum and p.depNum = d.depNum and l.locName = N'TP Hồ Chí Minh'

-- câu 12
select e.empName, d.depName, d.depRelationship
from tblEmployee e
	join tblDepartment dept on dept.depNum = e.depNum
	join tblDependent d on d.empSSN = e.empSSN
where dept.depName = N'Phòng Nghiên cứu và phát triển'
	and d.depSex = 'F'

-- câu 13
select e.empName, d.depName, d.depRelationship
from tblEmployee e
	join tblDependent d on d.empSSN = e.empSSN
	join tblDepartment dept on dept.depNum = e.depNum
where dept.depName = N'Phòng Nghiên cứu và phát triển'
	and datediff(year, d.depBirthdate, GETDATE()) > 18

-- Câu 14
select d.depSex, count(*) as TotalDependents
from tblDependent d
group by depSex

-- Câu 15
select d.depRelationship, count(*) as TotalDependents
from tblDependent d
group by depRelationship

-- Câu 16 *
select d.depNum, d.depName, COUNT(dp.depName) as DependentCount
from tblDepartment d
	LEFT JOIN tblEmployee e ON d.depNum = e.depNum
	LEFT JOIN tblDependent dp ON e.empSSN = dp.empSSN
GROUP BY d.depNum, d.depName;

-- Câu 17 *
WITH
	DeptDependents
	as
	(
		SELECT d.depNum, d.depName, COUNT(dp.depName) as DependentCount
		FROM tblDepartment d
			LEFT JOIN tblEmployee e ON d.depNum = e.depNum
			LEFT JOIN tblDependent dp ON e.empSSN = dp.empSSN
		GROUP BY d.depNum, d.depName
	)
SELECT *
FROM DeptDependents
WHERE DependentCount = (SELECT MIN(DependentCount)
FROM DeptDependents);

-- Câu 18 *
WITH
	DeptDependents
	AS
	(
		SELECT d.depNum, d.depName, COUNT(dp.depName) as DependentCount
		FROM tblDepartment d
			LEFT JOIN tblEmployee e ON d.depNum = e.depNum
			LEFT JOIN tblDependent dp ON e.empSSN = dp.empSSN
		GROUP BY d.depNum, d.depName
	)
SELECT *
FROM DeptDependents
WHERE DependentCount = (SELECT MAX(DependentCount)
FROM DeptDependents)

-- Câu 19
SELECT e.empSSN, e.empName, d.depName, SUM(w.workHours) as TotalHours
FROM tblEmployee e
	JOIN tblDepartment d ON e.depNum = d.depNum
	LEFT JOIN tblWorksOn w ON e.empSSN = w.empSSN
GROUP BY e.empSSN, e.empName, d.depName

-- Câu 20
SELECT d.depNum, d.depName, SUM(w.workHours) as TotalHours
FROM tblDepartment d
	LEFT JOIN tblEmployee e ON d.depNum = e.depNum
	LEFT JOIN tblWorksOn w ON e.empSSN = w.empSSN
GROUP BY d.depNum, d.depName;

-- Câu 21
with
	EmpHours
	as
	(
		select e.empSSN, e.empName, sum(w.workHours) as TotalHours
		from tblEmployee e
			left join tblWorksOn w on w.empSSN = e.empSSN
		group by e.empSSN, e.empName
	)
select *
from EmpHours
where TotalHours = (select min(TotalHours)
from EmpHours
where TotalHours > 0)

-- Câu 22
with
	EmpHours
	as
	(
		select e.empSSN, e.empName, sum(w.workHours) as TotalHours
		from tblEmployee e
			left join tblWorksOn w on w.empSSN = e.empSSN
		group by e.empSSN, e.empName
	)
select *
from EmpHours
where TotalHours = (select max(TotalHours)
from EmpHours
where TotalHours > 0)

-- Câu 23
SELECT DISTINCT e.empSSN, e.empName, d.depName
FROM tblEmployee e
	JOIN tblDepartment d ON e.depNum = d.depNum
	JOIN tblWorksOn w ON e.empSSN = w.empSSN
WHERE e.empSSN NOT IN (
    SELECT empSSN
FROM tblWorksOn
GROUP BY empSSN
HAVING COUNT(*) > 1)

-- Câu 24 *
SELECT DISTINCT e.empSSN, e.empName, d.depName
FROM tblEmployee e
	JOIN tblDepartment d ON e.depNum = d.depNum
	JOIN tblWorksOn w ON e.empSSN = w.empSSN
WHERE e.empSSN = (
    SELECT empSSN
FROM tblWorksOn
GROUP BY empSSN
HAVING COUNT(*) = 2
)

-- Câu 25
SELECT e.empSSN, e.empName, d.depName
FROM tblEmployee e
	JOIN tblDepartment d ON e.depNum = d.depNum
	JOIN tblWorksOn w ON e.empSSN = w.empSSN
GROUP BY e.empSSN, e.empName, d.depName
HAVING COUNT(DISTINCT w.proNum) >= 2

-- Câu 26
select p.proNum, p.proName, count(w.empSSN) as MemberCount
from tblProject p
	left join tblWorksOn w on w.proNum = p.proNum
group by p.proNum, p.proName

-- Câu 27
select p.proNum, p.proName, sum(w.workHours) as TotalHours
from tblProject p
	left join tblWorksOn w on w.proNum = p.proNum
group by p.proNum, p.proName;

-- Câu 28
with
	ProjectMembers
	as
	(
		select p.proNum, p.proName, count (w.empSSN) as MemberCount
		from tblProject p
			left join tblWorksOn w on w.proNum = p.proNum
		group by p.proNum, p.proName
	)
select *
from ProjectMembers
where MemberCount = (select min(MemberCount)
from ProjectMembers
where MemberCount > 0)

-- Câu 29
with
	ProjectMembers
	as
	(
		select p.proNum, p.proName, count (w.empSSN) as MemberCount
		from tblProject p
			left join tblWorksOn w on w.proNum = p.proNum
		group by p.proNum, p.proName
	)
select *
from ProjectMembers
where MemberCount = (select max(MemberCount)
from ProjectMembers)

-- Câu 30
with
	ProjectHours
	as
	(
		select p.proNum, p.proName, sum(w.WorkHours) as TotalHours
		from tblProject p
			left join tblWorksOn w on w.proNum = p.proNum
		group by p.pronum, p.proName
	)
select *
from ProjectHours
where TotalHours = (select min(TotalHours)
from ProjectHours)

-- Câu 31
with
	ProjectHours
	as
	(
		select p.proNum, p.proName, sum(w.WorkHours) as TotalHours
		from tblProject p
			left join tblWorksOn w on w.proNum = p.proNum
		group by p.pronum, p.proName
	)
select *
from ProjectHours
where TotalHours = (select max(TotalHours)
from ProjectHours)

-- Câu 32
select distinct l.locName, count(d.depNum) as TotalDepartment
from tblDepLocation d
	left join tblLocation l on l.locNum = d.locNum
group by l.locName

-- Câu 33
select d.depNum, d.depName, count(depl.locNum) as TotalLocation
from tblDepartment d
	left join tblDepLocation depl on depl.depNum = d.depNum
group by d.depNum, d.depName;

-- Câu 34
with
	Department
	as
	(
		select d.depNum, d.depName, count(l.locNum) as TotalLocation
		from tblDepartment d
			left join tblDepLocation depl on depl.depNum = d.depNum
			left join tblLocation l on l.locNum = depl.locNum
		group by d.depNum, d.depName
	)

select *
from Department
where TotalLocation = (select max(TotalLocation)
from Department)

-- Câu 35
with
	Department
	as
	(
		select d.depNum, d.depName, count(l.locNum) as TotalLocation
		from tblDepartment d
			left join tblDepLocation depl on depl.depNum = d.depNum
			left join tblLocation l on l.locNum = depl.locNum
		group by d.depNum, d.depName
	)

select *
from Department
where TotalLocation = (select min(TotalLocation)
from Department)

-- Câu 36
with
	DepartmentLocal
	as
	(
		select l.locName, count(d.depNum) as DepartmentCount
		from tblLocation l
			left join tblDepLocation d on d.locNum = l.locNum
		group by l.locName
	)
select *
from DepartmentLocal
where DepartmentCount = (select max(DepartmentCount)
from DepartmentLocal)

-- Câu 37



-- Câu 40
select e.empSSN, e.empName, d.depName
from tblEmployee e
	join tblDepartment d on d.depNum = e.depNum
where e.empSSN not in (
	select dp.empSSN
from tblDependent dp)

-- Câu 41

SELECT d.depNum, d.depName
FROM dbo.tblDepartment d
	LEFT JOIN dbo.tblEmployee e ON d.depNum = e.depNum
	LEFT JOIN dbo.tblDependent dep ON e.empSSN = dep.empSSN
WHERE dep.depName IS NULL;

-- Câu 43
select distinct d.depNum, d.depName
from tblEmployee e, tblDepartment d
where e.depNum = d.depNum and e.empSSN not in (select w.empSSN
	from tblWorksOn w)

-- Câu 44
select distinct d.depNum, d.depName
from tblEmployee e, tblDepartment d
where e.depNum = d.depNum and e.empSSN not in (select w.empSSN
	from tblWorksOn w, tblProject p
	where w.proNum = p.proNum and p.proName = 'ProjectA')

-- Câu 48
select p.depNum, d.depName, count(e.empSSN) as 'TotalEmployee', p.proName
from tblDepartment d, tblEmployee e, tblProject p
where e.depNum = d.depNum and p.proNum = d.depNum
group by p.depNum, d.depName, p.proName
having count (e.empSSN) >4


-- Câu 49

-- Câu 52
select e.empSSN, e.empName, sum (w.workHours) as'TotalHours'
from tblEmployee e, tblWorksOn w
where w.empSSN = e.empSSN and e.supervisorSSN = (select e.empSSN
	from tblEmployee e
	where e.empSSN = N'Mai Duy An')
group by e.empSSN, e.empName


-- Tinh nam ve huu cua nhan vien biet nam 65 nu 60
-- CASE ... WHEN ... END

select e.empName,
	(case e.empSex
	when 'M' then year (e.empBirthdate) + 65
	when 'F' then year (e.empBirthdate) + 60

	end ) as 'RetiredYear'
from tblEmployee e


-- COUNT (*)
-- Cho biết số lượng nhân viên của phòng 'Phòng nghiên cứu và phát triển'
select count(*) as  'TotalEmployee'
from tblDepartment d, tblEmployee e
where d.depNum = e.depNum and d.depName = N'Phòng nghiên cứu và phát triển'

-- EXIST, NOT EXISTS
-- Cho biết nhân viên không có người phụ thuộc

select e.empSSN, e.empName , d.depName
from tblEmployee e, tblDepartment d
where e.depNum = d.depNum and e.empSSN NOT IN (select dp.empSSN
	from tblDependent dp)

select e.empSSN, e.empName , d.depName
from tblEmployee e, tblDepartment d
where e.depNum = d.depNum and NOT EXISTS (select *
	from tblDependent dp
	where e.empSSN = dp.empSSN)
-- Không có thuộc tính trước NOT EXISTS;


BEGIN TRANSACTION
update tblDepartment
set mgrSSN = 30121050142
where depNum = 1

update tblDepartment
set mgrSSN = 30121050037
where depNum = 2

commit;

--CREATE VIEW EworkinD1 as
SELECT e.*, d.*
-- Chỉ định rõ các cột cần lấy thay vì dùng *
FROM tblEmployee e
	INNER JOIN tblDependent d ON e.empSSN = d.empSSN
WHERE e.depNum = 1;
GO

-- In ra ma so nhan vien va luong cua nhan vien ten Mai Duy An

declare @ms as decimal, @salary as decimal

select @ms = e.empSSN, @salary = e.empSalary
from tblEmployee e
where e.empName = 'Mai Duy An'
print 'EmployeeID: '+ cast(@ms as varchar)
print 'Salary: '+ cast(@salary as varchar)

-- Tinh so gio lam viec cua '  ', neu so gio lam > 300 thi thuong 100, nguoc lai thuong 500

declare @Hours as int, @Bonus as int

select @Hours = sum(w.workHours)
from tblEmployee e, tblWorksOn w
where e.empSSN = w.empSSN and e.empName = N'Nguyễn Thúy Quỳnh Anh'
group by w.empSSN

if (@Hours > 300)
	set @Bonus = 1000
else
	set @Bonus = 500
print @Bonus

-- Case When
declare @depNum decimal, @str nvarchar(30)

select @depNum = 3
set @str =
	case @depNum
		when 1 then N'Phòng ban số 1'
		when 2 then N'Phòng ban số 2'
	else N'Mã phòng ban khác 1, 2'
	end
print @str;


-- While tính n!
declare @r as decimal, @n as int
set @r = 5
set @r = 1
while (@n > 1)
	begin
	set @r = @r * @n
	set @n = @n - 1
end
print @r

BEGIN TRANSACTION
--begin transaction
BEGIN TRY
	--oparations
	INSERT INTO tblDepartment
	(depNum,depName)
VALUES(6, N'Phòng Kế Toán');

	INSERT INTO tblDepartment
	(depNum,depName)
VALUES(6, N'Phòng Kế Toán');
	COMMIT TRANSACTION	--commit the transaction
END TRY	
BEGIN CATCH
	ROLLBACK TRANSACTION	--rollback transaction
	PRINT ERROR_NUMBER()
	PRINT ERROR_MESSAGE()
END CATCH

-- store procedure
-- create stored procedure to list all projects
GO
create procedure p_listProjects
as
select *
from tblProject

exec p_listProjects


--
go
create procedure p_changeProjects
	(@name as varchar(20),
	@IdProject as int)
as
update tblProject
	set proName = @name
	where proNum = @IdProject

exec p_changeProjects 'ProjectY', 1

-- Create procedure to return the name of the project
GO
Create procedure p_nameProject
	(@IdPorject as int,
	@nameProject as varchar output)
as
select @nameProject = p.proName
from tblProject p
where p.proNum = @IdPorject

exec p_nameProject


-- LIKE: tim kiem mau chi dinh. Su dung %: chuoi ki tu, _ : 1 ki tu don le
-- Trong SQL, thứ tự chuẩn của các mệnh đề phải là: SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY.
-- begin transaction
-- insert ...
-- @@ERROR <> 0
-- begin 
-- rollback transaction
-- print @@ERROR
-- commit transaction

-- ROLLBACK: dùng để trả lại dữ liệu ban đầu, dữ liệu cũ, không thực hiện bất kì transaction nào.

-- Commit: xác nhận transaction, chấp nhận thay đổi dữ liệu mới

-- Clustered Index: chỉ mục có thứ tự, non-clustered index: chỉ mục không có thứ tự

-- Muốn tạo chỉ mục: Create clustered index/nonclustered index 'index_name' on table_name(column.....)

-- Xóa chỉ mục: Drop index 'index_name'

-- Khóa chính (primary key) cũng có thể là loại chỉ mục 

-- create view: Create view 'view_name'

-- drop view: drop view 'view_name'

-- Câu 
-- HAVING: điều kiện, có điều kiện

-- GROUP BY: gom nhóm, được sử dụng khi có sum, avg, count, max, min,
select *
from tblDepartment
select *
from tblDependent
select *
from tblDepLocation
select *
from tblEmployee
select *
from tblLocation
select *
from tblProject
select *
from tblWorksOn