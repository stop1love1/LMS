USE [LMS]
GO
/****** Object:  Table [dbo].[Chapter]    Script Date: 12/10/2022 12:43:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapter](
	[ChapterID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_Chapter] PRIMARY KEY CLUSTERED 
(
	[ChapterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 12/10/2022 12:43:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseCode] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nchar](30) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[TeacherID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 12/10/2022 12:43:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 12/10/2022 12:43:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[LessonID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[ChapterID] [int] NOT NULL,
	[FileName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Lesson] PRIMARY KEY CLUSTERED 
(
	[LessonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 12/10/2022 12:43:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[LoginID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Type] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[LoginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 12/10/2022 12:43:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[DateActive] [datetime] NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/10/2022 12:43:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[First Name] [nvarchar](30) NOT NULL,
	[Last Name] [nvarchar](30) NOT NULL,
	[Contact] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[LoginID] [int] NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 12/10/2022 12:43:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherID] [int] IDENTITY(1,1) NOT NULL,
	[First Name] [nvarchar](30) NOT NULL,
	[Last Name] [nvarchar](30) NOT NULL,
	[Contact] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Qualification] [nvarchar](30) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[CNIC] [nchar](15) NOT NULL,
	[LoginID] [int] NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Chapter] ON 

INSERT [dbo].[Chapter] ([ChapterID], [Title], [CourseID]) VALUES (1, N'Chương 1: Giới thiệu', 3)
INSERT [dbo].[Chapter] ([ChapterID], [Title], [CourseID]) VALUES (2, N'Chương 1: Giới thiệu', 1)
INSERT [dbo].[Chapter] ([ChapterID], [Title], [CourseID]) VALUES (3, N'Chương 2', 1)
INSERT [dbo].[Chapter] ([ChapterID], [Title], [CourseID]) VALUES (5, N'Chương 1: Giới thiệu', 2)
SET IDENTITY_INSERT [dbo].[Chapter] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseCode], [Title], [DepartmentID], [TeacherID], [Price], [Description]) VALUES (1, N'PHP cơ bản                    ', 4, 8, 340000, N'Khóa học PHP cơ bản !!!')
INSERT [dbo].[Course] ([CourseCode], [Title], [DepartmentID], [TeacherID], [Price], [Description]) VALUES (2, N'Toán cao cấp                  ', 3, 3, 100000, N'Toán cao cấp')
INSERT [dbo].[Course] ([CourseCode], [Title], [DepartmentID], [TeacherID], [Price], [Description]) VALUES (3, N'Tiếng Ý                       ', 2, 8, 120000, N'Tiếng Ý')
INSERT [dbo].[Course] ([CourseCode], [Title], [DepartmentID], [TeacherID], [Price], [Description]) VALUES (4, N'PHP nâng cao                  ', 4, 8, 500000, N'Khóa học PHP nâng cao')
INSERT [dbo].[Course] ([CourseCode], [Title], [DepartmentID], [TeacherID], [Price], [Description]) VALUES (5, N'Lập trình ASP.NET             ', 6, 8, 678000, N'Lập trình bằng C#')
INSERT [dbo].[Course] ([CourseCode], [Title], [DepartmentID], [TeacherID], [Price], [Description]) VALUES (6, N'Lập trình ASP.NET bằng C#     ', 1, 8, 700000, N'Lập trình bằng Window Form')
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (1, N'Khoa học máy tính')
INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (2, N'Ngoại ngữ')
INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (3, N'Toán')
INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (4, N'Web')
INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (6, N'Máy tính')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Lesson] ON 

INSERT [dbo].[Lesson] ([LessonID], [Title], [ChapterID], [FileName]) VALUES (1, N'PHP là gì ?', 2, N'171642223-545909.jpg')
INSERT [dbo].[Lesson] ([LessonID], [Title], [ChapterID], [FileName]) VALUES (2, N'Các thành phần của PHP', 2, N'https://youtu.be/rIfdg_Ot-LI')
INSERT [dbo].[Lesson] ([LessonID], [Title], [ChapterID], [FileName]) VALUES (4, N'Các thành phần', 3, N'https://stackoverflow.com/questions/7578857/how-to-check-whether-a-string-is-a-valid-http-url')
SET IDENTITY_INSERT [dbo].[Lesson] OFF
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (1, N'administration', N'admin123', N'admin')
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (3, N'mjawad', N'123456', N'teacher')
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (7, N'asad12', N'asad12', N'teacher')
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (8, N'asad123', N'asad123', N'teacher')
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (9, N'aqeel001', N'abc123', N'teacher')
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (10, N'tayyab', N'tayyab123', N'teacher')
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (11, N'anhngok', N'123456', N'teacher')
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (17, N'21321312', N'31232312', N'student')
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (18, N'anhnguoc', N'123456', N'student')
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (19, N'anhnguocs', N'123456', N'student')
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (1019, N'jawad', N'123456', N'student')
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (1021, N'jawad02', N'123456', N'student')
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (1022, N'mjawad', N'123456', N'teacher')
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (1023, N'mjawad', N'123456', N'teacher')
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive]) VALUES (1, 2, 1, 0, NULL)
INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive]) VALUES (2, 3, 2, 1, CAST(N'2022-08-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive]) VALUES (3, 6, 1, 1, CAST(N'2022-01-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive]) VALUES (4, 7, 3, 0, NULL)
INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive]) VALUES (5, 7, 1, 1, CAST(N'2022-07-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive]) VALUES (7, 3, 4, 0, NULL)
INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive]) VALUES (8, 3, 4, 0, NULL)
INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive]) VALUES (9, 3, 4, 0, NULL)
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Contact], [Email], [LoginID], [Address]) VALUES (2, N'Muhammad', N'Jawad', N'0310 5202695', N'm32jawad@gmail.com', 1019, N'HN')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Contact], [Email], [LoginID], [Address]) VALUES (3, N'Muhammad', N'Jawad', N'0310 5202695', N'm32jawad@gmail.com', 1021, N'HN')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Contact], [Email], [LoginID], [Address]) VALUES (4, N'Muhammad', N'Jawad', N'0310 5202695', N'm32jawad@gmail.com', 17, N'HN')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Contact], [Email], [LoginID], [Address]) VALUES (6, N'Muhammad', N'Jawad', N'0310 5202695', N'm32jawad@gmail.com', 18, N'HN')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Contact], [Email], [LoginID], [Address]) VALUES (7, N'Muhammad', N'Jawad', N'0310 5202695', N'm32jawad@gmail.com', 19, N'HN')
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeacherID], [First Name], [Last Name], [Contact], [Email], [Qualification], [DepartmentID], [Address], [CNIC], [LoginID]) VALUES (5, N'Muhammaddd', N'Jawad', N'03105202695', N'm23jawad@gmail.com', N'BS CS', 2, N'Hanoi, Vi?t Nam, Quan HOa', N'3710112341221  ', 3)
INSERT [dbo].[Teacher] ([TeacherID], [First Name], [Last Name], [Contact], [Email], [Qualification], [DepartmentID], [Address], [CNIC], [LoginID]) VALUES (6, N'Muhammad', N'Jawad', N'03105202695', N'm23jawad@gmail.com', N'BS CS', 2, N'Hanoi, Vi?t Nam, Quan HOa', N'3710112341221  ', 7)
INSERT [dbo].[Teacher] ([TeacherID], [First Name], [Last Name], [Contact], [Email], [Qualification], [DepartmentID], [Address], [CNIC], [LoginID]) VALUES (7, N'Muhammad', N'Jawad', N'03105202695', N'm23jawad@gmail.com', N'BS CS', 2, N'Hanoi, Vi?t Nam, Quan HOa', N'3710112341221  ', 8)
INSERT [dbo].[Teacher] ([TeacherID], [First Name], [Last Name], [Contact], [Email], [Qualification], [DepartmentID], [Address], [CNIC], [LoginID]) VALUES (8, N'Muhammad', N'Jawad', N'03105202695', N'm23jawad@gmail.com', N'BS CS', 2, N'Hanoi, Vi?t Nam, Quan HOa', N'3710112341221  ', 9)
INSERT [dbo].[Teacher] ([TeacherID], [First Name], [Last Name], [Contact], [Email], [Qualification], [DepartmentID], [Address], [CNIC], [LoginID]) VALUES (9, N'Muhammaddd', N'Jawad', N'03105202695', N'm23jawad@gmail.com', N'BS CS', 2, N'Hanoi, Vi?t Nam, Quan HOa', N'3710112341221  ', 10)
INSERT [dbo].[Teacher] ([TeacherID], [First Name], [Last Name], [Contact], [Email], [Qualification], [DepartmentID], [Address], [CNIC], [LoginID]) VALUES (10, N'Muhammaddd', N'Jawad', N'03105202695', N'm23jawad@gmail.com', N'BS CS', 2, N'Hanoi, Vi?t Nam, Quan HOa', N'3710112341221  ', 11)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Department]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Login] FOREIGN KEY([LoginID])
REFERENCES [dbo].[Login] ([LoginID])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Login]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Department]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Login] FOREIGN KEY([LoginID])
REFERENCES [dbo].[Login] ([LoginID])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_Login]
GO
