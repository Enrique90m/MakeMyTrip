USE [ProjectAirline]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 09/19/2014 15:19:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(100,1) NOT NULL,
	[FistName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Address] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([CustomerId], [FistName], [LastName], [Address]) VALUES (100, N'Bill', N'Gates', N'Colon #234')
INSERT [dbo].[Customer] ([CustomerId], [FistName], [LastName], [Address]) VALUES (101, N'Barack', N'Obama', N'Juarez #4123')
INSERT [dbo].[Customer] ([CustomerId], [FistName], [LastName], [Address]) VALUES (102, N'Lionel', N'Messi', N'Barcelona #4123')
INSERT [dbo].[Customer] ([CustomerId], [FistName], [LastName], [Address]) VALUES (103, N'Frank', N'Lampard', N'Rowel #964')
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[City]    Script Date: 09/19/2014 15:19:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[CityCode] [varchar](3) NOT NULL,
	[CityName] [varchar](50) NOT NULL,
 CONSTRAINT [CityCode_PK] PRIMARY KEY CLUSTERED 
(
	[CityCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CityName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CityCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[City] ([CityCode], [CityName]) VALUES (N'CAN', N'Cancun')
INSERT [dbo].[City] ([CityCode], [CityName]) VALUES (N'GDL', N'Guadalajara')
INSERT [dbo].[City] ([CityCode], [CityName]) VALUES (N'LVG', N'Las vegas')
INSERT [dbo].[City] ([CityCode], [CityName]) VALUES (N'MVA', N'Monclova')
INSERT [dbo].[City] ([CityCode], [CityName]) VALUES (N'MTY', N'Monterrey')
INSERT [dbo].[City] ([CityCode], [CityName]) VALUES (N'NY', N'Nueva york')
INSERT [dbo].[City] ([CityCode], [CityName]) VALUES (N'PAR', N'Paris')
/****** Object:  Table [dbo].[Flight]    Script Date: 09/19/2014 15:19:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Flight](
	[FlightNo] [int] IDENTITY(500,1) NOT NULL,
	[Source] [varchar](3) NOT NULL,
	[Destination] [varchar](3) NOT NULL,
	[DepartureDate] [datetime] NOT NULL,
	[ArrivalDate] [datetime] NOT NULL,
	[AdultFare] [int] NOT NULL,
	[ChildFare] [int] NOT NULL,
	[TotalPassenger] [int] NOT NULL,
	[Airlane] [varchar](20) NULL,
 CONSTRAINT [FlightNo_PK] PRIMARY KEY CLUSTERED 
(
	[FlightNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Flight] ON
INSERT [dbo].[Flight] ([FlightNo], [Source], [Destination], [DepartureDate], [ArrivalDate], [AdultFare], [ChildFare], [TotalPassenger], [Airlane]) VALUES (500, N'MTY', N'NY', CAST(0x0000A38E00AE2928 AS DateTime), CAST(0x0000A39501024404 AS DateTime), 80, 90, 0, NULL)
INSERT [dbo].[Flight] ([FlightNo], [Source], [Destination], [DepartureDate], [ArrivalDate], [AdultFare], [ChildFare], [TotalPassenger], [Airlane]) VALUES (501, N'MTY', N'NY', CAST(0x0000A39200AE2928 AS DateTime), CAST(0x0000A39501024404 AS DateTime), 80, 90, 0, NULL)
INSERT [dbo].[Flight] ([FlightNo], [Source], [Destination], [DepartureDate], [ArrivalDate], [AdultFare], [ChildFare], [TotalPassenger], [Airlane]) VALUES (503, N'CAN', N'GDL', CAST(0x0000A39200AE2928 AS DateTime), CAST(0x0000A39501024404 AS DateTime), 80, 90, 0, NULL)
INSERT [dbo].[Flight] ([FlightNo], [Source], [Destination], [DepartureDate], [ArrivalDate], [AdultFare], [ChildFare], [TotalPassenger], [Airlane]) VALUES (504, N'CAN', N'GDL', CAST(0x0000A39300AE2928 AS DateTime), CAST(0x0000A39501024404 AS DateTime), 80, 90, 0, NULL)
INSERT [dbo].[Flight] ([FlightNo], [Source], [Destination], [DepartureDate], [ArrivalDate], [AdultFare], [ChildFare], [TotalPassenger], [Airlane]) VALUES (505, N'MTY', N'NY', CAST(0x0000A39201218468 AS DateTime), CAST(0x0000A3970154A9C4 AS DateTime), 80, 90, 0, NULL)
INSERT [dbo].[Flight] ([FlightNo], [Source], [Destination], [DepartureDate], [ArrivalDate], [AdultFare], [ChildFare], [TotalPassenger], [Airlane]) VALUES (506, N'MTY', N'CAN', CAST(0x0000A39201392348 AS DateTime), CAST(0x0000A397017B1D84 AS DateTime), 80, 90, 0, NULL)
INSERT [dbo].[Flight] ([FlightNo], [Source], [Destination], [DepartureDate], [ArrivalDate], [AdultFare], [ChildFare], [TotalPassenger], [Airlane]) VALUES (507, N'MTY', N'NY', CAST(0x0000A39400AE2928 AS DateTime), CAST(0x0000A39501024404 AS DateTime), 80, 90, 0, NULL)
INSERT [dbo].[Flight] ([FlightNo], [Source], [Destination], [DepartureDate], [ArrivalDate], [AdultFare], [ChildFare], [TotalPassenger], [Airlane]) VALUES (508, N'CAN', N'GDL', CAST(0x0000A39400B54640 AS DateTime), CAST(0x0000A39501024404 AS DateTime), 80, 90, 0, NULL)
INSERT [dbo].[Flight] ([FlightNo], [Source], [Destination], [DepartureDate], [ArrivalDate], [AdultFare], [ChildFare], [TotalPassenger], [Airlane]) VALUES (509, N'MTY', N'NY', CAST(0x0000A39400B54640 AS DateTime), CAST(0x0000A39501024404 AS DateTime), 80, 90, 0, NULL)
INSERT [dbo].[Flight] ([FlightNo], [Source], [Destination], [DepartureDate], [ArrivalDate], [AdultFare], [ChildFare], [TotalPassenger], [Airlane]) VALUES (510, N'CAN', N'NY', CAST(0x0000A3B101391C40 AS DateTime), CAST(0x0000A39701024404 AS DateTime), 60, 40, 0, NULL)
INSERT [dbo].[Flight] ([FlightNo], [Source], [Destination], [DepartureDate], [ArrivalDate], [AdultFare], [ChildFare], [TotalPassenger], [Airlane]) VALUES (511, N'CAN', N'NY', CAST(0x0000A3B1015A11C0 AS DateTime), CAST(0x0000A39701024404 AS DateTime), 60, 40, 0, NULL)
INSERT [dbo].[Flight] ([FlightNo], [Source], [Destination], [DepartureDate], [ArrivalDate], [AdultFare], [ChildFare], [TotalPassenger], [Airlane]) VALUES (512, N'CAN', N'GDL', CAST(0x0000A39601391C40 AS DateTime), CAST(0x0000A39700F73140 AS DateTime), 60, 40, 4, NULL)
INSERT [dbo].[Flight] ([FlightNo], [Source], [Destination], [DepartureDate], [ArrivalDate], [AdultFare], [ChildFare], [TotalPassenger], [Airlane]) VALUES (513, N'CAN', N'NY', CAST(0x0000A39601499700 AS DateTime), CAST(0x0000A397016A8C80 AS DateTime), 60, 40, 0, NULL)
INSERT [dbo].[Flight] ([FlightNo], [Source], [Destination], [DepartureDate], [ArrivalDate], [AdultFare], [ChildFare], [TotalPassenger], [Airlane]) VALUES (514, N'CAN', N'GDL', CAST(0x0000A39600F73140 AS DateTime), CAST(0x0000A397016A8C80 AS DateTime), 60, 40, 0, NULL)
INSERT [dbo].[Flight] ([FlightNo], [Source], [Destination], [DepartureDate], [ArrivalDate], [AdultFare], [ChildFare], [TotalPassenger], [Airlane]) VALUES (515, N'MTY', N'NY', CAST(0x0000A3AB00AE2928 AS DateTime), CAST(0x0000A3B401024404 AS DateTime), 80, 90, 21, NULL)
SET IDENTITY_INSERT [dbo].[Flight] OFF
/****** Object:  Table [dbo].[PassengerDetails]    Script Date: 09/19/2014 15:19:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[PassengerDetails](
	[PassengerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[FlightNo] [int] NOT NULL,
	[Title] [varchar](4) NULL,
	[FistName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[PassengerDetails] ADD [Type] [char](1) NULL
ALTER TABLE [dbo].[PassengerDetails] ADD PRIMARY KEY CLUSTERED 
(
	[PassengerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PassengerDetails] ON
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (18, 100, 512, N'Mr', N'ENRIQUE', N'MENDOZA', NULL)
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (19, 100, 512, N'CHL', N'ENRIQUE', N'MENDOZA', NULL)
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (20, 100, 512, N'Mr', N'AA', N'AA', NULL)
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (21, 100, 512, N'CHL', N'CC', N'CC', NULL)
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (22, 100, 515, N'Mr', N'wqe', N'qweqwe', NULL)
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (23, 100, 515, N'Mr', N'e', N'ee', NULL)
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (24, 100, 515, N'Mr', N'yyy', N'rrrr', N'A')
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (25, 100, 515, N'Mr', N'ww', N'w2', N'A')
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (26, 100, 515, N'Mr', N'qq', N'qq2', N'A')
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (27, 100, 515, N'Mr', N'ee', N'ee', N'A')
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (28, 100, 515, N'Mr', N'tt', N'tt', N'A')
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (29, 100, 515, N'Mr', N'aa', N'aa2', N'A')
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (30, 100, 515, N'Mr', N'aa', N'aa2', N'A')
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (31, 100, 515, N'CHL', N'cc', N'cc2', N'C')
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (32, 100, 515, N'Mr', N'ee', N'ee', N'A')
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (33, 100, 515, N'CHL', N'cc', N'cc2', N'C')
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (34, 100, 515, N'Mr', N'ee', N'ee', N'A')
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (35, 100, 515, N'CHL', N'cc', N'cc2', N'C')
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (36, 100, 515, N'Mr', N'pp', N'pp', N'A')
INSERT [dbo].[PassengerDetails] ([PassengerId], [CustomerId], [FlightNo], [Title], [FistName], [LastName], [Type]) VALUES (37, 100, 515, N'CHL', N'b', N'b2', N'C')
SET IDENTITY_INSERT [dbo].[PassengerDetails] OFF
/****** Object:  Table [dbo].[Flight_Booking]    Script Date: 09/19/2014 15:19:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flight_Booking](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[FlightNo] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[DateOfBooking] [datetime] NOT NULL,
	[DateOfDeparture] [datetime] NOT NULL,
	[NoOfAdults] [int] NOT NULL,
	[NoOfChildren] [int] NOT NULL,
 CONSTRAINT [BookingId_PK] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Flight_Booking] ON
INSERT [dbo].[Flight_Booking] ([BookingId], [FlightNo], [CustomerId], [DateOfBooking], [DateOfDeparture], [NoOfAdults], [NoOfChildren]) VALUES (23, 512, 100, CAST(0x0000A3950135E073 AS DateTime), CAST(0x0000A39600000000 AS DateTime), 1, 1)
INSERT [dbo].[Flight_Booking] ([BookingId], [FlightNo], [CustomerId], [DateOfBooking], [DateOfDeparture], [NoOfAdults], [NoOfChildren]) VALUES (24, 512, 100, CAST(0x0000A39501381849 AS DateTime), CAST(0x0000A39600000000 AS DateTime), 1, 1)
INSERT [dbo].[Flight_Booking] ([BookingId], [FlightNo], [CustomerId], [DateOfBooking], [DateOfDeparture], [NoOfAdults], [NoOfChildren]) VALUES (25, 515, 100, CAST(0x0000A3A500CF3D0A AS DateTime), CAST(0x0000A3AB00000000 AS DateTime), 2, 0)
INSERT [dbo].[Flight_Booking] ([BookingId], [FlightNo], [CustomerId], [DateOfBooking], [DateOfDeparture], [NoOfAdults], [NoOfChildren]) VALUES (26, 515, 100, CAST(0x0000A3AB00000000 AS DateTime), CAST(0x0000A3AB00000000 AS DateTime), 1, 0)
INSERT [dbo].[Flight_Booking] ([BookingId], [FlightNo], [CustomerId], [DateOfBooking], [DateOfDeparture], [NoOfAdults], [NoOfChildren]) VALUES (27, 515, 100, CAST(0x0000A3AB00000000 AS DateTime), CAST(0x0000A3AB00000000 AS DateTime), 1, 1)
INSERT [dbo].[Flight_Booking] ([BookingId], [FlightNo], [CustomerId], [DateOfBooking], [DateOfDeparture], [NoOfAdults], [NoOfChildren]) VALUES (28, 515, 100, CAST(0x0000A3AB00000000 AS DateTime), CAST(0x0000A3AB00000000 AS DateTime), 1, 1)
INSERT [dbo].[Flight_Booking] ([BookingId], [FlightNo], [CustomerId], [DateOfBooking], [DateOfDeparture], [NoOfAdults], [NoOfChildren]) VALUES (29, 515, 100, CAST(0x0000A3AB00000000 AS DateTime), CAST(0x0000A3AB00000000 AS DateTime), 1, 1)
INSERT [dbo].[Flight_Booking] ([BookingId], [FlightNo], [CustomerId], [DateOfBooking], [DateOfDeparture], [NoOfAdults], [NoOfChildren]) VALUES (30, 515, 100, CAST(0x0000A3AB00000000 AS DateTime), CAST(0x0000A3AB00000000 AS DateTime), 1, 1)
INSERT [dbo].[Flight_Booking] ([BookingId], [FlightNo], [CustomerId], [DateOfBooking], [DateOfDeparture], [NoOfAdults], [NoOfChildren]) VALUES (31, 515, 100, CAST(0x0000A3AB00000000 AS DateTime), CAST(0x0000A3AB00000000 AS DateTime), 1, 1)
INSERT [dbo].[Flight_Booking] ([BookingId], [FlightNo], [CustomerId], [DateOfBooking], [DateOfDeparture], [NoOfAdults], [NoOfChildren]) VALUES (32, 515, 100, CAST(0x0000A3AB00000000 AS DateTime), CAST(0x0000A3AB00000000 AS DateTime), 1, 1)
INSERT [dbo].[Flight_Booking] ([BookingId], [FlightNo], [CustomerId], [DateOfBooking], [DateOfDeparture], [NoOfAdults], [NoOfChildren]) VALUES (33, 515, 100, CAST(0x0000A3AB00000000 AS DateTime), CAST(0x0000A3AB00000000 AS DateTime), 1, 1)
INSERT [dbo].[Flight_Booking] ([BookingId], [FlightNo], [CustomerId], [DateOfBooking], [DateOfDeparture], [NoOfAdults], [NoOfChildren]) VALUES (34, 515, 100, CAST(0x0000A3AB00000000 AS DateTime), CAST(0x0000A3AB00000000 AS DateTime), 1, 1)
INSERT [dbo].[Flight_Booking] ([BookingId], [FlightNo], [CustomerId], [DateOfBooking], [DateOfDeparture], [NoOfAdults], [NoOfChildren]) VALUES (35, 515, 100, CAST(0x0000A3AB00000000 AS DateTime), CAST(0x0000A3AB00000000 AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Flight_Booking] OFF
/****** Object:  Table [dbo].[Payments]    Script Date: 09/19/2014 15:19:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[BookingID] [int] NOT NULL,
	[TotalAdultFare] [money] NOT NULL,
	[TotalChildFare] [money] NOT NULL,
	[TotalTaxAmount] [money] NOT NULL,
	[TotalAmount] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Payments] ON
INSERT [dbo].[Payments] ([PaymentID], [BookingID], [TotalAdultFare], [TotalChildFare], [TotalTaxAmount], [TotalAmount]) VALUES (1, 25, 160.0000, 0.0000, 16.0000, 176.0000)
INSERT [dbo].[Payments] ([PaymentID], [BookingID], [TotalAdultFare], [TotalChildFare], [TotalTaxAmount], [TotalAmount]) VALUES (2, 35, 88.0000, 99.0000, 17.0000, 187.0000)
SET IDENTITY_INSERT [dbo].[Payments] OFF
/****** Object:  ForeignKey [Destination_FK]    Script Date: 09/19/2014 15:19:30 ******/
ALTER TABLE [dbo].[Flight]  WITH CHECK ADD  CONSTRAINT [Destination_FK] FOREIGN KEY([Destination])
REFERENCES [dbo].[City] ([CityCode])
GO
ALTER TABLE [dbo].[Flight] CHECK CONSTRAINT [Destination_FK]
GO
/****** Object:  ForeignKey [Source_FK]    Script Date: 09/19/2014 15:19:30 ******/
ALTER TABLE [dbo].[Flight]  WITH CHECK ADD  CONSTRAINT [Source_FK] FOREIGN KEY([Source])
REFERENCES [dbo].[City] ([CityCode])
GO
ALTER TABLE [dbo].[Flight] CHECK CONSTRAINT [Source_FK]
GO
/****** Object:  ForeignKey [FlightNo_FK]    Script Date: 09/19/2014 15:19:30 ******/
ALTER TABLE [dbo].[Flight_Booking]  WITH CHECK ADD  CONSTRAINT [FlightNo_FK] FOREIGN KEY([FlightNo])
REFERENCES [dbo].[Flight] ([FlightNo])
GO
ALTER TABLE [dbo].[Flight_Booking] CHECK CONSTRAINT [FlightNo_FK]
GO
/****** Object:  ForeignKey [FlightNo_FK2]    Script Date: 09/19/2014 15:19:30 ******/
ALTER TABLE [dbo].[PassengerDetails]  WITH CHECK ADD  CONSTRAINT [FlightNo_FK2] FOREIGN KEY([FlightNo])
REFERENCES [dbo].[Flight] ([FlightNo])
GO
ALTER TABLE [dbo].[PassengerDetails] CHECK CONSTRAINT [FlightNo_FK2]
GO
/****** Object:  ForeignKey [fk_BookingID]    Script Date: 09/19/2014 15:19:30 ******/
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [fk_BookingID] FOREIGN KEY([BookingID])
REFERENCES [dbo].[Flight_Booking] ([BookingId])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [fk_BookingID]
GO
