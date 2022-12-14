USE [LMS_DB]
GO
/****** Object:  Table [dbo].[Chapter]    Script Date: 11-12-2022 5:31:56 PM ******/
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
/****** Object:  Table [dbo].[Course]    Script Date: 11-12-2022 5:31:56 PM ******/
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
/****** Object:  Table [dbo].[Department]    Script Date: 11-12-2022 5:31:56 PM ******/
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
/****** Object:  Table [dbo].[Invoice]    Script Date: 11-12-2022 5:31:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[DateActive] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 11-12-2022 5:31:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[LessonID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[ChapterID] [int] NOT NULL,
	[FileName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Lesson] PRIMARY KEY CLUSTERED 
(
	[LessonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 11-12-2022 5:31:56 PM ******/
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
/****** Object:  Table [dbo].[Request]    Script Date: 11-12-2022 5:31:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[DateActive] [date] NULL,
	[CoursePrice] [int] NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11-12-2022 5:31:56 PM ******/
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
/****** Object:  Table [dbo].[Teacher]    Script Date: 11-12-2022 5:31:56 PM ******/
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
INSERT [dbo].[Chapter] ([ChapterID], [Title], [CourseID]) VALUES (3, N'Chương 2: Vấn đề 1', 1)
INSERT [dbo].[Chapter] ([ChapterID], [Title], [CourseID]) VALUES (5, N'Chương 1: Giới thiệu', 2)
SET IDENTITY_INSERT [dbo].[Chapter] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseCode], [Title], [DepartmentID], [TeacherID], [Price], [Description]) VALUES (1, N'PHP cơ bản                    ', 4, 8, 340000, N'Khóa học PHP cơ bản !!!')
INSERT [dbo].[Course] ([CourseCode], [Title], [DepartmentID], [TeacherID], [Price], [Description]) VALUES (2, N'Toán cao cấp                  ', 3, 3, 100000, N'Toán cao cấp')
INSERT [dbo].[Course] ([CourseCode], [Title], [DepartmentID], [TeacherID], [Price], [Description]) VALUES (3, N'Tiếng Ý                       ', 2, 8, 120000, N'Tiếng Ý')
INSERT [dbo].[Course] ([CourseCode], [Title], [DepartmentID], [TeacherID], [Price], [Description]) VALUES (4, N'Test 123                      ', 1, 1009, 12000, N'Khoa hoc')
INSERT [dbo].[Course] ([CourseCode], [Title], [DepartmentID], [TeacherID], [Price], [Description]) VALUES (5, N'Tét 235                       ', 3, 1009, 20000, N'Mo ta')
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (1, N'Khoa học máy tính')
INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (2, N'Ngoại ngữ')
INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (3, N'Toán')
INSERT [dbo].[Department] ([DepartmentID], [Name]) VALUES (4, N'Web')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Lesson] ON 

INSERT [dbo].[Lesson] ([LessonID], [Title], [ChapterID], [FileName]) VALUES (1, N'PHP là gì ?', 2, N'https://stackoverflow.com/questions/18102859/visual-studio-could-not-copy-during-build')
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
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (1023, N'duc123', N'123456', N'teacher')
INSERT [dbo].[Login] ([LoginID], [Username], [Password], [Type]) VALUES (1024, N'momo123', N'123456', N'student')
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive], [CoursePrice]) VALUES (1, 2, 1, 0, CAST(N'2022-11-20' AS Date), 340000)
INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive], [CoursePrice]) VALUES (2, 3, 2, 1, CAST(N'2022-11-14' AS Date), 100000)
INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive], [CoursePrice]) VALUES (3, 6, 1, 1, CAST(N'2022-11-10' AS Date), 340000)
INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive], [CoursePrice]) VALUES (4, 7, 3, 0, CAST(N'2022-11-15' AS Date), 120000)
INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive], [CoursePrice]) VALUES (5, 7, 1, 1, CAST(N'2022-11-04' AS Date), 340000)
INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive], [CoursePrice]) VALUES (6, 2, 3, 0, CAST(N'2022-11-29' AS Date), 120000)
INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive], [CoursePrice]) VALUES (7, 8, 4, 0, CAST(N'2022-11-29' AS Date), 12000)
INSERT [dbo].[Request] ([RequestID], [StudentID], [CourseID], [Status], [DateActive], [CoursePrice]) VALUES (8, 6, 1, 0, CAST(N'2022-12-11' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Contact], [Email], [LoginID], [Address]) VALUES (2, N'Muhammad', N'Jawad', N'0310 5202695', N'm32jawad@gmail.com', 1019, N'America')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Contact], [Email], [LoginID], [Address]) VALUES (3, N'John', N'Cena', N'0326156485', N'Cena123@gmail.com', 1021, N'America')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Contact], [Email], [LoginID], [Address]) VALUES (4, N'Ahmed', N'Hassan', N'03033030333', N'ahmadhsn@gmail.com', 17, N'English')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Contact], [Email], [LoginID], [Address]) VALUES (6, N'Anh', N'NGok', N'3123123', N'312312321@gmail.com', 18, N'Italy')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Contact], [Email], [LoginID], [Address]) VALUES (7, N'Trong', N'Anh Ngược', N'123444333', N'anhnguoc@gmail.com', 19, N'Italy, Milan')
INSERT [dbo].[Student] ([StudentID], [First Name], [Last Name], [Contact], [Email], [LoginID], [Address]) VALUES (8, N'Ducky', N'Momo', N'123123213', N'momo@gmail.com', 1024, N'Hà Nam')
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([TeacherID], [First Name], [Last Name], [Contact], [Email], [Qualification], [DepartmentID], [Address], [CNIC], [LoginID]) VALUES (3, N'Anna', N'Hanna', N'03105202695', N'Hannana@gmail.com', N'BS CS', 2, N'Hà Nội', N'4568519815454  ', 3)
INSERT [dbo].[Teacher] ([TeacherID], [First Name], [Last Name], [Contact], [Email], [Qualification], [DepartmentID], [Address], [CNIC], [LoginID]) VALUES (5, N'Asad', N'Ali', N'02651686154', N'asad121@gmail.com', N'BS', 3, N'Thanh Hoá', N'3710943536423  ', 8)
INSERT [dbo].[Teacher] ([TeacherID], [First Name], [Last Name], [Contact], [Email], [Qualification], [DepartmentID], [Address], [CNIC], [LoginID]) VALUES (6, N'Aqeel', N'Zafar', N'08798564614', N'aqeelzafar@gmail.com', N'BSCS', 3, N'Bắc Ninh', N'7891153451564  ', 9)
INSERT [dbo].[Teacher] ([TeacherID], [First Name], [Last Name], [Contact], [Email], [Qualification], [DepartmentID], [Address], [CNIC], [LoginID]) VALUES (7, N'Tayyab', N'Touqeer', N'06415485682', N'ttvlogs@gmail.com', N'BS CS', 1, N'Vĩnh Phúc', N'5651345154612  ', 10)
INSERT [dbo].[Teacher] ([TeacherID], [First Name], [Last Name], [Contact], [Email], [Qualification], [DepartmentID], [Address], [CNIC], [LoginID]) VALUES (8, N'Trương', N'Anh Ngok', N'06846184676', N'anhngok@gmail.com', N'Tiến sĩ', 1, N'Thái Bình', N'5654184654545  ', 11)
INSERT [dbo].[Teacher] ([TeacherID], [First Name], [Last Name], [Contact], [Email], [Qualification], [DepartmentID], [Address], [CNIC], [LoginID]) VALUES (10, N'Pham', N'Tien Duc', N'05978416874', N'duc@gmail.com', N'Tiến sĩ', 1, N'Điện Biên', N'4894534815485  ', 1023)
INSERT [dbo].[Teacher] ([TeacherID], [First Name], [Last Name], [Contact], [Email], [Qualification], [DepartmentID], [Address], [CNIC], [LoginID]) VALUES (1009, N'Admin', N'main', N'02151654848', N'admin@gmail.com', N'Admin', 1, N'Hồ Chí Minh', N'1021205465184  ', 1)
SET IDENTITY_INSERT [dbo].[Teacher] OFF
GO
ALTER TABLE [dbo].[Request] ADD  CONSTRAINT [DF_Request_DateActive]  DEFAULT (getdate()) FOR [DateActive]
GO
ALTER TABLE [dbo].[Chapter]  WITH CHECK ADD  CONSTRAINT [FK_Chapter_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseCode])
GO
ALTER TABLE [dbo].[Chapter] CHECK CONSTRAINT [FK_Chapter_Course]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Department]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Chapter] FOREIGN KEY([ChapterID])
REFERENCES [dbo].[Chapter] ([ChapterID])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Chapter]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseCode])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Course]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Login] FOREIGN KEY([LoginID])
REFERENCES [dbo].[Login] ([LoginID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Login]
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
