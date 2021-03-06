USE [Chicadress]
GO
/****** Object:  StoredProcedure [dbo].[Guest_List]    Script Date: 26-11-2017 01:24:40 ******/
DROP PROCEDURE [dbo].[Guest_List]
GO
ALTER TABLE [dbo].[Weddings] DROP CONSTRAINT [FK_Weddings_Users]
GO
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT [FK_UserRoles_Users]
GO
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[UserActivation] DROP CONSTRAINT [FK_UserActivation_Users]
GO
ALTER TABLE [dbo].[Guest_Table] DROP CONSTRAINT [FK_Guest_Table_Tables]
GO
ALTER TABLE [dbo].[Guest_Table] DROP CONSTRAINT [FK_Guest_Table_Guest_Details]
GO
ALTER TABLE [dbo].[Guest_Details] DROP CONSTRAINT [FK_Guest_Details_Weddings]
GO
ALTER TABLE [dbo].[Guest_Details] DROP CONSTRAINT [FK_Guest_Details_Groups]
GO
ALTER TABLE [dbo].[Guest_Details] DROP CONSTRAINT [FK_Guest_Details_Attendance]
GO
ALTER TABLE [dbo].[Guest_Companinons] DROP CONSTRAINT [FK_Guest_Companinons_Details]
GO
/****** Object:  Table [dbo].[Weddings]    Script Date: 26-11-2017 01:24:40 ******/
DROP TABLE [dbo].[Weddings]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26-11-2017 01:24:40 ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 26-11-2017 01:24:40 ******/
DROP TABLE [dbo].[UserRoles]
GO
/****** Object:  Table [dbo].[UserActivation]    Script Date: 26-11-2017 01:24:40 ******/
DROP TABLE [dbo].[UserActivation]
GO
/****** Object:  Table [dbo].[Tables]    Script Date: 26-11-2017 01:24:40 ******/
DROP TABLE [dbo].[Tables]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 26-11-2017 01:24:40 ******/
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Guest_Table]    Script Date: 26-11-2017 01:24:40 ******/
DROP TABLE [dbo].[Guest_Table]
GO
/****** Object:  Table [dbo].[Guest_Details]    Script Date: 26-11-2017 01:24:40 ******/
DROP TABLE [dbo].[Guest_Details]
GO
/****** Object:  Table [dbo].[Guest_Companinons]    Script Date: 26-11-2017 01:24:40 ******/
DROP TABLE [dbo].[Guest_Companinons]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 26-11-2017 01:24:40 ******/
DROP TABLE [dbo].[Groups]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 26-11-2017 01:24:40 ******/
DROP TABLE [dbo].[Attendance]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 26-11-2017 01:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](150) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Groups]    Script Date: 26-11-2017 01:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](150) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Guest_Companinons]    Script Date: 26-11-2017 01:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guest_Companinons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GuestId] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Guest_Companinons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Guest_Details]    Script Date: 26-11-2017 01:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guest_Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Sex] [nvarchar](50) NULL,
	[Age] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Postcode] [nvarchar](50) NULL,
	[AttendanceId] [int] NULL,
	[GroupId] [int] NULL,
	[WeddingId] [int] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Guest_Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Guest_Table]    Script Date: 26-11-2017 01:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guest_Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GuestId] [int] NULL,
	[TableId] [int] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Guest_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 26-11-2017 01:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](150) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tables]    Script Date: 26-11-2017 01:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](50) NULL,
	[NoOfChairs] [int] NULL,
	[ChairAvailable] [int] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Tables] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserActivation]    Script Date: 26-11-2017 01:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActivation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AcitivationCode] [uniqueidentifier] NOT NULL,
	[UserId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_UserActivation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 26-11-2017 01:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 26-11-2017 01:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Salt] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](150) NOT NULL,
	[Country] [nvarchar](50) NULL,
	[StateCity] [nvarchar](50) NULL,
	[PhoneNo] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL DEFAULT ((0)),
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Weddings]    Script Date: 26-11-2017 01:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weddings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsBride] [bit] NOT NULL,
	[WeddingDate] [datetime] NULL,
	[PartnerName] [nvarchar](50) NULL,
	[UserId] [int] NULL,
	[Budget] [numeric](12, 2) NULL,
	[NoOfGuest] [int] NULL,
	[MyPic] [nvarchar](max) NULL,
	[MyPartnerPic] [nvarchar](max) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Weddings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Attendance] ([Id], [Name], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Confirm', N'Confirmation for attending wedding', 1, CAST(N'2017-11-21 00:00:00.000' AS DateTime), 1, CAST(N'2017-11-21 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Attendance] ([Id], [Name], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'Waiting', N'Waiting Response', 1, CAST(N'2017-11-21 00:00:00.000' AS DateTime), 1, CAST(N'2017-11-21 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Attendance] ([Id], [Name], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, N'Cancel', N'Cancelled Invitation', 1, CAST(N'2017-11-21 00:00:00.000' AS DateTime), 1, CAST(N'2017-11-21 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'Friend of Bride', N'Bride''s friend', 1, CAST(N'2017-11-21 00:00:00.000' AS DateTime), 1, CAST(N'2017-11-21 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (2, N'Friend of Groom', N'Groom''s friend', 1, CAST(N'2017-11-21 00:00:00.000' AS DateTime), 1, CAST(N'2017-11-21 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (3, N'Relative of Bride', N'Bride''s Relative', 1, CAST(N'2017-11-21 00:00:00.000' AS DateTime), 1, CAST(N'2017-11-21 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Groups] ([Id], [Name], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (4, N'Raltive of Groom', N'Groom''s Relative', 1, CAST(N'2017-11-21 00:00:00.000' AS DateTime), 1, CAST(N'2017-11-21 00:00:00.000' AS DateTime), 0)
GO

SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([Id], [Name], [Email], [Salt], [Password], [Country], [StateCity], [PhoneNo], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, N'system', N'system@test.com', N'12345677', N'system', N'India', N'Chandigarh', N'123123123', 1, 1, CAST(N'2017-11-25 17:16:09.673' AS DateTime), 1, CAST(N'2017-11-25 17:16:09.673' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO

SET IDENTITY_INSERT [dbo].[Weddings] ON 

GO
INSERT [dbo].[Weddings] ([Id], [IsBride], [WeddingDate], [PartnerName], [UserId], [Budget], [NoOfGuest], [MyPic], [MyPartnerPic], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsDeleted]) VALUES (1, 0, CAST(N'2017-12-05 17:18:08.847' AS DateTime), N'Test', 1, CAST(100000.00 AS Numeric(12, 2)), 100, NULL, NULL, 1, CAST(N'2017-11-25 17:18:08.847' AS DateTime), 1, CAST(N'2017-11-25 17:18:08.847' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Weddings] OFF
GO

ALTER TABLE [dbo].[Guest_Companinons]  WITH CHECK ADD  CONSTRAINT [FK_Guest_Companinons_Details] FOREIGN KEY([GuestId])
REFERENCES [dbo].[Guest_Details] ([Id])
GO
ALTER TABLE [dbo].[Guest_Companinons] CHECK CONSTRAINT [FK_Guest_Companinons_Details]
GO
ALTER TABLE [dbo].[Guest_Details]  WITH CHECK ADD  CONSTRAINT [FK_Guest_Details_Attendance] FOREIGN KEY([AttendanceId])
REFERENCES [dbo].[Attendance] ([Id])
GO
ALTER TABLE [dbo].[Guest_Details] CHECK CONSTRAINT [FK_Guest_Details_Attendance]
GO
ALTER TABLE [dbo].[Guest_Details]  WITH CHECK ADD  CONSTRAINT [FK_Guest_Details_Groups] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[Guest_Details] CHECK CONSTRAINT [FK_Guest_Details_Groups]
GO
ALTER TABLE [dbo].[Guest_Details]  WITH CHECK ADD  CONSTRAINT [FK_Guest_Details_Weddings] FOREIGN KEY([WeddingId])
REFERENCES [dbo].[Weddings] ([Id])
GO
ALTER TABLE [dbo].[Guest_Details] CHECK CONSTRAINT [FK_Guest_Details_Weddings]
GO
ALTER TABLE [dbo].[Guest_Table]  WITH CHECK ADD  CONSTRAINT [FK_Guest_Table_Guest_Details] FOREIGN KEY([GuestId])
REFERENCES [dbo].[Guest_Details] ([Id])
GO
ALTER TABLE [dbo].[Guest_Table] CHECK CONSTRAINT [FK_Guest_Table_Guest_Details]
GO
ALTER TABLE [dbo].[Guest_Table]  WITH CHECK ADD  CONSTRAINT [FK_Guest_Table_Tables] FOREIGN KEY([TableId])
REFERENCES [dbo].[Tables] ([Id])
GO
ALTER TABLE [dbo].[Guest_Table] CHECK CONSTRAINT [FK_Guest_Table_Tables]
GO
ALTER TABLE [dbo].[UserActivation]  WITH CHECK ADD  CONSTRAINT [FK_UserActivation_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserActivation] CHECK CONSTRAINT [FK_UserActivation_Users]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
ALTER TABLE [dbo].[Weddings]  WITH CHECK ADD  CONSTRAINT [FK_Weddings_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Weddings] CHECK CONSTRAINT [FK_Weddings_Users]
GO
/****** Object:  StoredProcedure [dbo].[Guest_List]    Script Date: 26-11-2017 01:24:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <21 Nov, 2017>
-- Description:	<Guest List>
-- =============================================
CREATE PROCEDURE [dbo].[Guest_List]
(
	@WeddingId INT,
	--Filtes
	@Name NVARCHAR(100) = NULL,
	-- Paging & Sorting Params
	@PageNumber INT = 0,
	@PageSize INT = 20,  -- When set set PageSize to 0 it will return all data.
	@OrderBy NVARCHAR(MAX) = NULL
)
AS
BEGIN
	
	SET NOCOUNT ON;

	IF 
	(
	   -- check all column which are shown in view 
		@OrderBy IS NULL 
		OR 
		(
			@OrderBy NOT IN ('Guest_Details.Id', 'Guest_Details.Id ASC', 'Guest_Details.Id DESC')
			AND @OrderBy NOT IN ('Guest_Details.Name', 'Guest_Details.FirstName, Guest_Details.LastName ASC', 'Guest_Details.FirstName, Guest_Details.LastName DESC')
			AND @OrderBy NOT IN ('Attendance.Name', 'Attendance.Name ASC', 'Attendance.Name DESC')
			AND @OrderBy NOT IN ('Groups.Name', 'Groups.Name ASC', 'Groups.Name DESC')
			AND @OrderBy NOT IN ('Tables.TableName', 'Tables.TableName ASC', 'Tables.TableName DESC')
		)
	)
	BEGIN
		SET @OrderBy = N'Guest_Details.Id ASC'
	END

	DECLARE @sql NVARCHAR(max) = N'
	SELECT  
		Guest_Details.Id, 
		COUNT(*)  OVER() AS TotalRows,
		CEILING(CAST( COUNT(*)  OVER() AS DECIMAL(10,2)) / CAST(@PageSize AS DECIMAL(10,2))) AS TotalPages
	FROM [dbo].[Guest_Details] 
	';

	IF @OrderBy LIKE 'Attendance.Name%'
	BEGIN
		SET @Sql += '
		 INNER JOIN [dbo].[Attendance] WITH (NOLOCK) ON Guest_Details.AttendanceId  = Attendance.Id 
		'
	END
	ELSE IF @OrderBy LIKE 'Groups.Name%'
	BEGIN
		SET @Sql += '
		 INNER JOIN [dbo].[Groups] WITH (NOLOCK) ON Guest_Details.GroupId  = Groups.Id
		'
	END
	ELSE IF @OrderBy LIKE 'Tables.Name%'
	BEGIN
		SET @Sql += '
		 LEFT JOIN [dbo].[Guest_Table] WITH (NOLOCK) ON Guest_Table.GuestId  = Guest_Details.Id
		 LEFT JOIN [dbo].[Tables] WITH (NOLOCK) ON Tables.Id  = Guest_Table.TableId
		'
	END

	-- filters
	SET @Sql += '
	WHERE
		Guest_Details.IsDeleted = 0
	   AND Guest_Details.WeddingId = @WeddingId
		'
	IF @Name IS NOT NULL
	BEGIN
		SET @Sql += '
		AND ( Guest_Table.FirstName like ''%'' + @Name + ''%'' 
		OR  Guest_Table.LastName like ''%'' + @Name + ''%'' )
		'
	END

	-- Paging & Sorting
	SET @Sql += N'
        ORDER BY 
        ' + @OrderBy + '';

	
	-- No Paging required
	IF @PageSize > 0 
	BEGIN
		SET @Sql += N' OFFSET (@PageNumber * @PageSize) ROW FETCH NEXT @PageSize ROWS ONLY';
	END

	DECLARE @tempTbl TABLE
    (
        Id INT NOT NULL IDENTITY(1,1)
       ,GuestId INT NOT NULL PRIMARY KEY
       ,[TotalRows] INT
       ,[TotalPages] INT
    )

	INSERT INTO @tempTbl
	EXEC sp_executesql @Sql ,
		 N'@WeddingId INT, @Name NVARCHAR(50), @PageNumber INT, @PageSize INT',
		 @WeddingId, @Name, @PageNumber, @PageSize

	
	SELECT  
		GuestList.GuestId AS Id, 
		Guest_Details.FirstName + ' '+ Guest_Details.LastName AS Name,
		Attendance.Id AS Attendance,
		Groups.Id AS [Group],
		Tables.Id as [Table],
		GuestList.TotalRows,
		GuestList.TotalPages
	FROM 
		@tempTbl GuestList 
		JOIN [dbo].[Guest_Details] WITH (NOLOCK) 
				ON Guest_Details.Id = GuestList.GuestId
		JOIN [dbo].[Attendance] WITH (NOLOCK) 
				ON Guest_Details.AttendanceId  = Attendance.Id 
		JOIN [dbo].[Groups] WITH (NOLOCK) 
				ON Guest_Details.GroupId  = Groups.Id
		LEFT JOIN [dbo].[Guest_Table] WITH (NOLOCK) 
				ON GuestList.GuestId  = Guest_Table.GuestId
		LEFT JOIN [dbo].[Tables] WITH (NOLOCK) 
			ON Tables.Id  = Guest_Table.TableId
	Order by GuestList.Id

END

GO
