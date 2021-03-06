USE [Ecommerce]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IdCategory] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[DescriptionCate] [nchar](100) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CheckIc]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckIc](
	[IdCheck] [int] IDENTITY(1,1) NOT NULL,
	[CheckNumber] [int] NOT NULL,
	[CheckBank] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Check] PRIMARY KEY CLUSTERED 
(
	[IdCheck] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityCode] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[StateCode] [tinyint] NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryCode] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CountryTax]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryTax](
	[IdCountrytax] [tinyint] IDENTITY(1,1) NOT NULL,
	[CountryCode] [tinyint] NOT NULL,
	[IdTax] [int] NULL,
 CONSTRAINT [PK_CountryTax] PRIMARY KEY CLUSTERED 
(
	[IdCountrytax] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditCard]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCard](
	[IdCreditCard] [int] IDENTITY(1,1) NOT NULL,
	[CreditCardNumber] [int] NOT NULL,
	[ExpirationDate] [date] NOT NULL,
 CONSTRAINT [PK_CreditCard] PRIMARY KEY CLUSTERED 
(
	[IdCreditCard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Evaluation]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluation](
	[IdEvaluation] [tinyint] IDENTITY(1,1) NOT NULL,
	[Score] [nchar](10) NULL,
 CONSTRAINT [PK_Evaluation] PRIMARY KEY CLUSTERED 
(
	[IdEvaluation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventE]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventE](
	[IdEvent] [int] NOT NULL,
	[DescriptionE] [nchar](100) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[IdEvent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Factory]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factory](
	[IdFactory] [int] NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[CountryCode] [tinyint] NULL,
	[IdEvaluation] [tinyint] NULL,
 CONSTRAINT [PK_Factory] PRIMARY KEY CLUSTERED 
(
	[IdFactory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FactoryEvaluation]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactoryEvaluation](
	[IdFactoryEvaluation] [tinyint] IDENTITY(1,1) NOT NULL,
	[IdFactory] [int] NULL,
	[IdEvaluation] [tinyint] NULL,
 CONSTRAINT [PK_FactoryEvaluation] PRIMARY KEY CLUSTERED 
(
	[IdFactoryEvaluation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Offer]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offer](
	[IdOffer] [int] NOT NULL,
	[Name] [nchar](100) NOT NULL,
	[DescriptionO] [nchar](150) NULL,
	[DateStart] [date] NOT NULL,
	[DateEnd] [date] NOT NULL,
	[PercentageOffer] [float] NOT NULL,
	[IdProduct] [int] NOT NULL,
 CONSTRAINT [PK_Offer] PRIMARY KEY CLUSTERED 
(
	[IdOffer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[IdOrderDetail] [int] NOT NULL,
	[IdOrder] [int] NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdTax] [int] NULL,
	[QuantityTotal] [int] NOT NULL,
	[SubTotal] [float] NOT NULL,
	[Observation] [nchar](100) NULL,
	[Discount] [float] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[IdOrderDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderP]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderP](
	[IdOrder] [int] NOT NULL,
	[DateOrder] [date] NOT NULL,
	[IdStatus] [tinyint] NOT NULL,
	[IdPayment] [int] NOT NULL,
	[Total] [float] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[IdPayment] [int] NOT NULL,
	[DatePayment] [date] NOT NULL,
	[IdPaymentType] [int] NOT NULL,
	[Amount] [float] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[IdPayment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentType](
	[IdPaymentType] [int] NOT NULL,
	[IdCreditcard] [int] NULL,
	[IdPaypal] [int] NULL,
	[IdCheck] [int] NULL,
 CONSTRAINT [PK_PaymentType] PRIMARY KEY CLUSTERED 
(
	[IdPaymentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paypal]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paypal](
	[IdPaypal] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
 CONSTRAINT [PK_Paypal] PRIMARY KEY CLUSTERED 
(
	[IdPaypal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IdProduct] [int] NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[DescriptionPro] [nchar](200) NULL,
	[IdCategory] [int] NOT NULL,
	[IdEvaluation] [tinyint] NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductEvaluation]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductEvaluation](
	[IdProductEvaluation] [tinyint] IDENTITY(1,1) NOT NULL,
	[IdProduct] [int] NULL,
	[IdEvaluation] [tinyint] NULL,
 CONSTRAINT [PK_ProductEvaluation] PRIMARY KEY CLUSTERED 
(
	[IdProductEvaluation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductUser]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductUser](
	[IdProductUser] [int] IDENTITY(1,1) NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
 CONSTRAINT [PK_ProductUser] PRIMARY KEY CLUSTERED 
(
	[IdProductUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleE]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleE](
	[IdRole] [tinyint] IDENTITY(1,1) NOT NULL,
	[TypeR] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipment](
	[IdShipment] [int] NOT NULL,
	[IdOrder] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
	[IdFactory] [int] NULL,
	[IdStatus] [tinyint] NULL,
	[ShipmentDate] [date] NULL,
	[ArrivalDate] [date] NULL,
 CONSTRAINT [PK_Shipment] PRIMARY KEY CLUSTERED 
(
	[IdShipment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateCode] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](30) NOT NULL,
	[CountryCode] [tinyint] NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StatusE]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusE](
	[IdStatus] [tinyint] NOT NULL,
	[DescriptionS] [nchar](20) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[IdStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tax]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax](
	[IdTax] [int] NOT NULL,
	[CountryCode] [tinyint] NOT NULL,
	[TaxPercent] [float] NULL,
 CONSTRAINT [PK_Tax] PRIMARY KEY CLUSTERED 
(
	[IdTax] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeId]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeId](
	[IdTypeId] [tinyint] IDENTITY(1,1) NOT NULL,
	[TypeT] [nchar](10) NOT NULL,
 CONSTRAINT [PK_TypeId] PRIMARY KEY CLUSTERED 
(
	[IdTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserEcommerce]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEcommerce](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[IdTypeId] [tinyint] NULL,
	[UserName] [nchar](20) NOT NULL,
	[PasswordUser] [nchar](40) NOT NULL,
	[Name] [nchar](250) NOT NULL,
	[LastName] [nchar](250) NOT NULL,
	[Email] [nchar](50) NOT NULL,
	[PhoneNumber] [nchar](30) NULL,
	[IdRole] [tinyint] NULL,
	[CityCode] [int] NOT NULL,
	[FactoryName] [nchar](10) NULL,
	[IdCreditCard] [int] NULL,
	[IdPayPal] [int] NULL,
	[IdStatus] [tinyint] NULL,
	[PostalCode] [tinyint] NULL,
	[Adress] [nchar](70) NULL,
 CONSTRAINT [PK_UserEcommerce] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserEvent]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEvent](
	[IdEventUser] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
	[IdEvent] [int] NOT NULL,
	[DateLogin] [date] NOT NULL,
	[DateLogout] [date] NOT NULL,
	[ProcedureUser] [nchar](100) NOT NULL,
	[Likes] [nchar](100) NULL,
 CONSTRAINT [PK_UserEvent] PRIMARY KEY CLUSTERED 
(
	[IdEventUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[IdRole] [tinyint] NULL,
	[IdUserRole] [tinyint] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[IdUserRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_State] FOREIGN KEY([StateCode])
REFERENCES [dbo].[State] ([StateCode])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_State]
GO
ALTER TABLE [dbo].[CountryTax]  WITH CHECK ADD  CONSTRAINT [FK_CountryTax_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[CountryTax] CHECK CONSTRAINT [FK_CountryTax_Country]
GO
ALTER TABLE [dbo].[CountryTax]  WITH CHECK ADD  CONSTRAINT [FK_CountryTax_Tax] FOREIGN KEY([IdTax])
REFERENCES [dbo].[Tax] ([IdTax])
GO
ALTER TABLE [dbo].[CountryTax] CHECK CONSTRAINT [FK_CountryTax_Tax]
GO
ALTER TABLE [dbo].[Factory]  WITH CHECK ADD  CONSTRAINT [FK_Factory_Country] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[Factory] CHECK CONSTRAINT [FK_Factory_Country]
GO
ALTER TABLE [dbo].[FactoryEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_FactoryEvaluation_Evaluation] FOREIGN KEY([IdEvaluation])
REFERENCES [dbo].[Evaluation] ([IdEvaluation])
GO
ALTER TABLE [dbo].[FactoryEvaluation] CHECK CONSTRAINT [FK_FactoryEvaluation_Evaluation]
GO
ALTER TABLE [dbo].[FactoryEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_FactoryEvaluation_Factory] FOREIGN KEY([IdFactory])
REFERENCES [dbo].[Factory] ([IdFactory])
GO
ALTER TABLE [dbo].[FactoryEvaluation] CHECK CONSTRAINT [FK_FactoryEvaluation_Factory]
GO
ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [FK_Offer_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [FK_Offer_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[OrderP] ([IdOrder])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Tax] FOREIGN KEY([IdTax])
REFERENCES [dbo].[Tax] ([IdTax])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Tax]
GO
ALTER TABLE [dbo].[OrderP]  WITH CHECK ADD  CONSTRAINT [FK_Order_Payment] FOREIGN KEY([IdPayment])
REFERENCES [dbo].[Payment] ([IdPayment])
GO
ALTER TABLE [dbo].[OrderP] CHECK CONSTRAINT [FK_Order_Payment]
GO
ALTER TABLE [dbo].[OrderP]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[StatusE] ([IdStatus])
GO
ALTER TABLE [dbo].[OrderP] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_PaymentType] FOREIGN KEY([IdPaymentType])
REFERENCES [dbo].[PaymentType] ([IdPaymentType])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_PaymentType]
GO
ALTER TABLE [dbo].[PaymentType]  WITH CHECK ADD  CONSTRAINT [FK_PaymentType_Check] FOREIGN KEY([IdCheck])
REFERENCES [dbo].[CheckIc] ([IdCheck])
GO
ALTER TABLE [dbo].[PaymentType] CHECK CONSTRAINT [FK_PaymentType_Check]
GO
ALTER TABLE [dbo].[PaymentType]  WITH CHECK ADD  CONSTRAINT [FK_PaymentType_CreditCard] FOREIGN KEY([IdCreditcard])
REFERENCES [dbo].[CreditCard] ([IdCreditCard])
GO
ALTER TABLE [dbo].[PaymentType] CHECK CONSTRAINT [FK_PaymentType_CreditCard]
GO
ALTER TABLE [dbo].[PaymentType]  WITH CHECK ADD  CONSTRAINT [FK_PaymentType_Paypal] FOREIGN KEY([IdPaypal])
REFERENCES [dbo].[Paypal] ([IdPaypal])
GO
ALTER TABLE [dbo].[PaymentType] CHECK CONSTRAINT [FK_PaymentType_Paypal]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([IdCategory])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[ProductEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProductEvaluation_Evaluation] FOREIGN KEY([IdEvaluation])
REFERENCES [dbo].[Evaluation] ([IdEvaluation])
GO
ALTER TABLE [dbo].[ProductEvaluation] CHECK CONSTRAINT [FK_ProductEvaluation_Evaluation]
GO
ALTER TABLE [dbo].[ProductEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProductEvaluation_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[ProductEvaluation] CHECK CONSTRAINT [FK_ProductEvaluation_Product]
GO
ALTER TABLE [dbo].[ProductUser]  WITH CHECK ADD  CONSTRAINT [FK_ProductUser_Product1] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[ProductUser] CHECK CONSTRAINT [FK_ProductUser_Product1]
GO
ALTER TABLE [dbo].[ProductUser]  WITH CHECK ADD  CONSTRAINT [FK_ProductUser_UserEcommerce] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserEcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[ProductUser] CHECK CONSTRAINT [FK_ProductUser_UserEcommerce]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Factory] FOREIGN KEY([IdFactory])
REFERENCES [dbo].[Factory] ([IdFactory])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Factory]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Order] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[OrderP] ([IdOrder])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Order]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[StatusE] ([IdStatus])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Status]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_UserEcommerce] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserEcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_UserEcommerce]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country1] FOREIGN KEY([CountryCode])
REFERENCES [dbo].[Country] ([CountryCode])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_Country1]
GO
ALTER TABLE [dbo].[UserEcommerce]  WITH CHECK ADD  CONSTRAINT [FK_UserEcommerce_City] FOREIGN KEY([CityCode])
REFERENCES [dbo].[City] ([CityCode])
GO
ALTER TABLE [dbo].[UserEcommerce] CHECK CONSTRAINT [FK_UserEcommerce_City]
GO
ALTER TABLE [dbo].[UserEcommerce]  WITH CHECK ADD  CONSTRAINT [FK_UserEcommerce_CreditCard] FOREIGN KEY([IdCreditCard])
REFERENCES [dbo].[CreditCard] ([IdCreditCard])
GO
ALTER TABLE [dbo].[UserEcommerce] CHECK CONSTRAINT [FK_UserEcommerce_CreditCard]
GO
ALTER TABLE [dbo].[UserEcommerce]  WITH CHECK ADD  CONSTRAINT [FK_UserEcommerce_Paypal] FOREIGN KEY([IdPayPal])
REFERENCES [dbo].[Paypal] ([IdPaypal])
GO
ALTER TABLE [dbo].[UserEcommerce] CHECK CONSTRAINT [FK_UserEcommerce_Paypal]
GO
ALTER TABLE [dbo].[UserEcommerce]  WITH CHECK ADD  CONSTRAINT [FK_UserEcommerce_RoleE] FOREIGN KEY([IdRole])
REFERENCES [dbo].[RoleE] ([IdRole])
GO
ALTER TABLE [dbo].[UserEcommerce] CHECK CONSTRAINT [FK_UserEcommerce_RoleE]
GO
ALTER TABLE [dbo].[UserEcommerce]  WITH CHECK ADD  CONSTRAINT [FK_UserEcommerce_TypeId] FOREIGN KEY([IdTypeId])
REFERENCES [dbo].[TypeId] ([IdTypeId])
GO
ALTER TABLE [dbo].[UserEcommerce] CHECK CONSTRAINT [FK_UserEcommerce_TypeId]
GO
ALTER TABLE [dbo].[UserEvent]  WITH CHECK ADD  CONSTRAINT [FK_UserEvent_Event] FOREIGN KEY([IdEvent])
REFERENCES [dbo].[EventE] ([IdEvent])
GO
ALTER TABLE [dbo].[UserEvent] CHECK CONSTRAINT [FK_UserEvent_Event]
GO
ALTER TABLE [dbo].[UserEvent]  WITH CHECK ADD  CONSTRAINT [FK_UserEvent_UserEcommerce] FOREIGN KEY([IdUser])
REFERENCES [dbo].[UserEcommerce] ([IdUser])
GO
ALTER TABLE [dbo].[UserEvent] CHECK CONSTRAINT [FK_UserEvent_UserEcommerce]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[RoleE] ([IdRole])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
/****** Object:  StoredProcedure [dbo].[CityInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CityInsert]
@name nchar(30),
@statecode tinyint
AS
BEGIN
	
	SET NOCOUNT ON;
	insert into City
	(Name, StateCode)
	values (@name,@statecode)

END
GO
/****** Object:  StoredProcedure [dbo].[CountryInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CountryInsert]

@name nchar(30)
AS

BEGIN
	
	SET NOCOUNT ON;
	insert into Country
	( Name)
	values (@name);

END
GO
/****** Object:  StoredProcedure [dbo].[CountryTaxInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CountryTaxInsert]
	
@idCountrytax tinyint, 
@countryCode tinyint, 
@idTax int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Insert into CountryTax ( CountryCode, IdTax)
values (@countryCode,@idTax)
END



GO
/****** Object:  StoredProcedure [dbo].[CreditCardInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreditCardInsert]

@creditCardNumber int, 
@expirationDate date

AS
BEGIN
	
	SET NOCOUNT ON;
	Insert into  CreditCard (CreditCardNumber, ExpirationDate)
	values (@creditCardNumber,@expirationDate)
	
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteCategory]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCategory] 
	@idcategory int
AS
BEGIN
	
	SET NOCOUNT ON;

  delete from Category
  where IdCategory=@idcategory;
END




GO
/****** Object:  StoredProcedure [dbo].[DeleteCheck]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCheck]
@idCheck int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   delete from CheckIc 
   where IdCheck=@idCheck
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteCity]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCity]
	@CityCode int
AS
BEGIN
	
	SET NOCOUNT ON;

  delete from City
  where CityCode=@CityCode
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteCountry]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCountry]
@countryCode tinyint

AS
BEGIN
	
	SET NOCOUNT ON;
	delete from Country
	where CountryCode=@countryCode
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteCountryTax]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCountryTax]
	
@idCountrytax tinyint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Delete CountryTax
where IdCountrytax = @idCountrytax
END




GO
/****** Object:  StoredProcedure [dbo].[DeleteCreditCard]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteCreditCard]
@idCreditCard int

AS
BEGIN
	
	SET NOCOUNT ON;
	Delete  CreditCard 
	where  IdCreditCard=@idCreditCard
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteEvaluation]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteEvaluation]
@idEvaluation tinyint


AS
BEGIN
	
	SET NOCOUNT ON;
Delete from Evaluation
where IdEvaluation=@idEvaluation
	
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteEvent]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteEvent]
@idEvent int

AS
BEGIN
	
	SET NOCOUNT ON;
Delete from EventE
where IdEvent=@idEvent
	
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteFactory]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteFactory]
@idFactory int

AS
BEGIN
	
	SET NOCOUNT ON;
	Delete from Factory 
where IdFactory=@idFactory
	
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteFactoryEvaluation]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteFactoryEvaluation]
@idFactoryEvaluation tinyint


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Delete FactoryEvaluation
where IdFactoryEvaluation=@idFactoryEvaluation
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteOffer]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteOffer]
@idOffer int

AS
BEGIN
	
	SET NOCOUNT ON;

Delete from Offer
where IdOffer=@idOffer

END



GO
/****** Object:  StoredProcedure [dbo].[DeleteOrderDetail]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteOrderDetail]
@idOrderDetail int

AS
BEGIN
	
SET NOCOUNT ON;
Delete from OrderDetail
where IdOrderDetail=@idOrderDetail

END



GO
/****** Object:  StoredProcedure [dbo].[DeleteOrderP]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteOrderP]
@idOrder int

AS
BEGIN
	SET NOCOUNT ON;

Delete from OrderP
where IdOrder =@idOrder

END



GO
/****** Object:  StoredProcedure [dbo].[DeletePayment]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeletePayment]
@idPayment int 

AS
BEGIN
	
SET NOCOUNT ON;
Delete from Payment
where IdPayment=@idPayment
	
END



GO
/****** Object:  StoredProcedure [dbo].[DeletePaymentType]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeletePaymentType]
@idPaymentType int


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Delete from PaymentType
where IdPaymentType=@idPaymentType
END



GO
/****** Object:  StoredProcedure [dbo].[DeletePaypal]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeletePaypal]
@idPaypal int 

AS
BEGIN
	
SET NOCOUNT ON;
Delete from Paypal
where IdPaypal=@idPaypal
	
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteProduct]
@idProduct int

AS
BEGIN
	
SET NOCOUNT ON;
Delete from Product
where IdProduct=@idProduct

END



GO
/****** Object:  StoredProcedure [dbo].[DeleteProductEvaluation]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteProductEvaluation]
@idProductEvaluation tinyint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Delete from ProductEvaluation
where IdProductEvaluation=@idProductEvaluation
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteProductUser]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteProductUser]
@idProductUser int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Delete from ProductUser
where IdProductUser=@idProductUser
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteRole]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteRole]
@idRole tinyint

AS
BEGIN
	
SET NOCOUNT ON;
Delete from RoleE where IdRole=@idRole
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteShipment]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteShipment]
@idShipment int

AS
BEGIN
	
SET NOCOUNT ON;
Delete from Shipment where IdShipment= @idShipment
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteState]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteState]
@stateCode tinyint

AS
BEGIN
	
SET NOCOUNT ON;
Delete from State
where StateCode=  @stateCode
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteStatus]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteStatus]

@idStatus tinyint

AS
BEGIN
	
SET NOCOUNT ON;
Delete from StatusE
where IdStatus=  @idStatus
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteTax]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteTax]
@idTax int


AS
BEGIN
	
delete from Tax
where IdTax=@idTax
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteTypeId]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteTypeId]
@idTypeId tinyint

AS
BEGIN
	SET NOCOUNT ON;
delete from TypeId
where IdTypeId=@idTypeId
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteUserEcommerce]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteUserEcommerce]
@idUser int

AS
BEGIN
		
SET NOCOUNT ON;

Delete from UserEcommerce
where IdUser=@idUser

END



GO
/****** Object:  StoredProcedure [dbo].[DeleteUserEvent]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteUserEvent]
@idEventUser int


AS
BEGIN
		
SET NOCOUNT ON;

Delete from UserEvent
where IdEventUser=@idEventUser

END



GO
/****** Object:  StoredProcedure [dbo].[DeleteUseRole]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteUseRole]
@idUserRole tinyint

AS
BEGIN
		
SET NOCOUNT ON;
Delete from UserRole
where IdUserRole=@idUserRole

END



GO
/****** Object:  StoredProcedure [dbo].[EvaluationInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EvaluationInsert]
@idEvaluation tinyint, 
@score nchar (10)

AS
BEGIN
	
	SET NOCOUNT ON;
	Insert into  EvaEvaluation(IdEvaluation, Score)
	values (@idEvaluation,@score)
	
END



GO
/****** Object:  StoredProcedure [dbo].[EventInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[EventInsert]
@idEvent int,
@descriptionE nchar (100)
AS
BEGIN
	
	SET NOCOUNT ON;
insert  into EventE (IdEvent, DescriptionE)
values (@idEvent,@descriptionE)
	
END



GO
/****** Object:  StoredProcedure [dbo].[FactoryEvaluationInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FactoryEvaluationInsert]
@idFactoryEvaluation tinyint,
@idFactory int,
@idEvaluation tinyint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Insert into factoryEvaluation (IdFactory, IdEvaluation )
values (@idFactory,@idEvaluation)

END



GO
/****** Object:  StoredProcedure [dbo].[FactoryInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FactoryInsert]
@idFactory int,
@name nchar (50),
@countryCode tinyint, 
@idEvaluation tinyint
AS
BEGIN
	
	SET NOCOUNT ON;
insert  into Factory (IdFactory, Name, CountryCode, IdEvaluation)
values (@idFactory,@name,@countryCode,@idEvaluation)
	
END



GO
/****** Object:  StoredProcedure [dbo].[InsertusuarioIngreso]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[InsertusuarioIngreso]

@userName nchar(20), 
@passwordUser nchar(40),
@name nchar (250), 
@lastName nchar(250),
@email nchar (50), 
@phoneNumber nchar(30),  
@cityCode tinyint

AS
BEGIN
		
SET NOCOUNT ON;

Insert into UserEcommerce ( UserName, PasswordUser, Name, LastName,  Email, PhoneNumber, CityCode)
values 
(@userName,@passwordUser,@name,@lastName,@email,@phoneNumber,@cityCode)
END

GO
/****** Object:  StoredProcedure [dbo].[InsertUsuarioLogin]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[InsertUsuarioLogin]
 
@userName nchar(20), 
@passwordUser nchar(40),
@name nchar (250), 
@lastName nchar(250),
@email nchar (50), 
@phoneNumber nchar(30), 
@cityCode tinyint 

AS
BEGIN
		
SET NOCOUNT ON;

Insert into UserEcommerce ( UserName, PasswordUser, Name, LastName,  Email, PhoneNumber, CityCode)
values 
(@userName,@passwordUser,@name,@lastName,@email,@phoneNumber,@cityCode)
END



GO
/****** Object:  StoredProcedure [dbo].[OfferInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OfferInsert]
@idOffer int,
@name nchar(100), 
@descriptionO nchar(100),
@dateStart date,
@dateEnd date,
@percentageOffer float,
@idProduct int
AS
BEGIN
	
	SET NOCOUNT ON;
insert into Offer(IdOffer, Name, DescriptionO, DateStart, DateEnd, PercentageOffer, IdProduct) 
values (@idOffer,@name,@descriptionO,@dateStart,@dateEnd,@percentageOffer,@idProduct)

END



GO
/****** Object:  StoredProcedure [dbo].[OrderDetailInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderDetailInsert]
@idOrderDetail int, 
@idOrder int, 
@idProduct int, 
@idTax int, 
@quantityTotal int, 
@subTotal float, 
@observation nchar (100) , 
@discount float
AS
BEGIN
	
SET NOCOUNT ON;
insert into OrderDetail( IdOrderDetail, IdOrder, IdProduct, IdTax, QuantityTotal, SubTotal, Observation, Discount)
values (@idOrderDetail,@idOrder,@idProduct,@idTax,@quantityTotal,@subTotal,@observation,@discount)
END



GO
/****** Object:  StoredProcedure [dbo].[OrderPInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderPInsert]
@idOrder int, 
@dateOrder date, 
@idStatus tinyint, 
@idPayment int, 
@total float

AS
BEGIN
	SET NOCOUNT ON;

  Insert into OrderP (IdOrder, DateOrder, IdStatus, IdPayment, Total)
  values (@idOrder,@dateOrder,@idStatus,@idPayment,@total)

END



GO
/****** Object:  StoredProcedure [dbo].[PaymentInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PaymentInsert]
@idPayment int, 
@datePayment date, 
@idPaymentType int, 
@amount float

AS
BEGIN
	
	SET NOCOUNT ON;
insert into Payment(IdPayment, DatePayment, IdPaymentType, Amount)
values (@idPayment,@datePayment,@idPaymentType,@amount)
	
END



GO
/****** Object:  StoredProcedure [dbo].[PaymentTypeInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PaymentTypeInsert]
@idPaymentType int, 
@idCreditcard int, 
@idPaypal int, 
@idCheck int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Insert into PaymentType(IdCreditcard, IdPaypal, IdCheck)
values (@idCreditcard,@idPaypal,@idCheck)
END



GO
/****** Object:  StoredProcedure [dbo].[PaypalInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[PaypalInsert]
@idPaypal int,
@idUser int
AS
BEGIN
	
SET NOCOUNT ON;
insert into Paypal (IdPaypal, IdUser) 
values(@idPaypal,@idUser)
	
END



GO
/****** Object:  StoredProcedure [dbo].[ProductEvaluationInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ProductEvaluationInsert]
@idProductEvaluation tinyint, 
@idProduct int,
@idEvaluation tinyint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Insert into ProductEvaluation (IdProduct, IdEvaluation)
values (@idProduct,@idEvaluation)
END



GO
/****** Object:  StoredProcedure [dbo].[ProductInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ProductInsert]
@idProduct int, 
@name nchar(30), 
@descriptionPro nchar(30), 
@idCategory int,  
@idEvaluation tinyint, 
@quantity int, 
@unitPrice float

AS
BEGIN
	
SET NOCOUNT ON;
Insert into Product (IdProduct, Name, DescriptionPro, IdCategory,  IdEvaluation, Quantity, UnitPrice)
values (@idProduct,@name,@descriptionPro,@idCategory,@idEvaluation,@quantity,@unitPrice)
END

GO
/****** Object:  StoredProcedure [dbo].[ProductUserInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ProductUserInsert]
@idProductUser int,
@idProduct int,
@idUser int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Insert into ProductUser (IdProduct, IdUser)
values(@idProduct,@idUser)
END



GO
/****** Object:  StoredProcedure [dbo].[RoleInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RoleInsert]
@idRole tinyint, 
@typeR nchar(20)
AS
BEGIN
	
SET NOCOUNT ON;
insert into RoleE (IdRole, TypeR  )
values (@idRole,@typeR)
END



GO
/****** Object:  StoredProcedure [dbo].[SelectCategory]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectCategory]
@idcategory int

AS
BEGIN
	
	SET NOCOUNT ON;

 Select IdCategory,Name,DescriptionCate from Category 
 where IdCategory=@idcategory;
END




GO
/****** Object:  StoredProcedure [dbo].[SelectCheck]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectCheck]
@idCheck int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Select IdCheck, CheckNumber, CheckBank from CheckIc
where  IdCheck=@idCheck
end



GO
/****** Object:  StoredProcedure [dbo].[SelectCity]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectCity]
@cityCode int
	
AS
BEGIN
	
	SET NOCOUNT ON;

 Select CityCode, Name from City 
 where CityCode=@cityCode
END



GO
/****** Object:  StoredProcedure [dbo].[SelectCountry]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectCountry]
@countryCode tinyint
AS
BEGIN
	
	SET NOCOUNT ON;
	select CountryCode, Name, Iso_Code, StateCode from Country
	where  CountryCode=@countryCode
END



GO
/****** Object:  StoredProcedure [dbo].[SelectCountryTax]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectCountryTax]
	
@idCountrytax tinyint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Select IdCountrytax, CountryCode, IdTax from CountryTax
where IdCountrytax = @idCountrytax
END



GO
/****** Object:  StoredProcedure [dbo].[SelectCreditCard]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectCreditCard]
@idCreditCard int
AS
BEGIN
	
	SET NOCOUNT ON;
	select  IdCreditCard, CreditCardNumber, ExpirationDate from CreditCard
	where  IdCreditCard=@idCreditCard
END



GO
/****** Object:  StoredProcedure [dbo].[SelectEvaluation]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectEvaluation]
@idEvaluation tinyint


AS
BEGIN
	
	SET NOCOUNT ON;
select IdEvaluation, Score from Evaluation
where IdEvaluation=@idEvaluation
	
END



GO
/****** Object:  StoredProcedure [dbo].[SelectEvent]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectEvent]
@idEvent int

AS
BEGIN
	
	SET NOCOUNT ON;
Select IdEvent, DescriptionE from EventE
where IdEvent=@idEvent
	
END



GO
/****** Object:  StoredProcedure [dbo].[SelectFactory]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectFactory]
@idFactory int
AS
BEGIN
	
	SET NOCOUNT ON;
	select IdFactory, Name, CountryCode, IdEvaluation from Factory
where IdFactory=@idFactory
	
END



GO
/****** Object:  StoredProcedure [dbo].[SelectFactoryEvaluation]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectFactoryEvaluation]
@idFactoryEvaluation tinyint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Select IdFactoryEvaluation, IdFactory, IdEvaluation from FactoryEvaluation
where IdFactoryEvaluation=@idFactoryEvaluation
END



GO
/****** Object:  StoredProcedure [dbo].[SelectOffer]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectOffer]
@idOffer int
AS
BEGIN
	
	SET NOCOUNT ON;
select IdOffer, Name, DescriptionO, DateStart, DateEnd, PercentageOffer, IdProduct from Offer
where IdOffer=@idOffer
END



GO
/****** Object:  StoredProcedure [dbo].[SelectOrderDetail]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectOrderDetail]
@idOrderDetail int
AS
BEGIN
	
SET NOCOUNT ON;
select IdOrderDetail, IdOrder, IdProduct, IdTax, QuantityTotal, SubTotal, Observation, Discount from OrderDetail
where IdOrderDetail = @idOrderDetail
END



GO
/****** Object:  StoredProcedure [dbo].[SelectOrderP]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectOrderP]
@idOrder int

AS
BEGIN
	SET NOCOUNT ON;

 select IdOrder, DateOrder, IdStatus, IdPayment, Total from OrderP 
 where IdOrder=@idOrder 

END



GO
/****** Object:  StoredProcedure [dbo].[SelectPayment]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectPayment]
@idPayment int

AS
BEGIN
	
SET NOCOUNT ON;
select IdPayment, DatePayment, IdPaymentType, Amount from Payment
where IdPayment=@idPayment
	
END



GO
/****** Object:  StoredProcedure [dbo].[SelectPaymentType]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectPaymentType]
@idPaymentType int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select IdPaymentType, IdCreditcard, IdPaypal, IdCheck from PaymentType
	where IdPaymentType=@idPaymentType
END



GO
/****** Object:  StoredProcedure [dbo].[SelectPaypal]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectPaypal]
@idPaypal int
AS
BEGIN
	
SET NOCOUNT ON;
select IdPaypal, IdUser from Paypal
where IdPaypal = @idPaypal
END



GO
/****** Object:  StoredProcedure [dbo].[SelectProduct]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectProduct]
@idProduct int

AS
BEGIN
	
SET NOCOUNT ON;
select IdProduct, Name, DescriptionPro, IdCategory, IdEvaluation, Quantity, UnitPrice from Product 
where IdProduct=@idProduct
END
GO
/****** Object:  StoredProcedure [dbo].[SelectProductEvaluation]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectProductEvaluation]
@idProductEvaluation tinyint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Select IdProductEvaluation, IdProduct, IdEvaluation from ProductEvaluation
where IdProductEvaluation=@idProductEvaluation
END



GO
/****** Object:  StoredProcedure [dbo].[SelectProductUser]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectProductUser]
@idProductUser int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Select IdProductUser, IdProduct, IdUser from ProductUser
where IdProductUser=@idProductUser
END



GO
/****** Object:  StoredProcedure [dbo].[SelectRole]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectRole]
@idRole tinyint
AS
BEGIN
	
SET NOCOUNT ON;
select IdRole, TypeR from RoleE
where IdRole=@idRole
END



GO
/****** Object:  StoredProcedure [dbo].[SelectShipment]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectShipment]
@idShipment int
AS
BEGIN
	
SET NOCOUNT ON;
select IdShipment, IdOrder, IdUser, IdFactory, IdStatus, ShipmentDate, ArrivalDate from Shipment
where IdShipment=@idShipment
END



GO
/****** Object:  StoredProcedure [dbo].[SelectState]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectState]
@stateCode tinyint
AS
BEGIN
	
SET NOCOUNT ON;
select StateCode, Name, CityCode from State
where StateCode=@stateCode
END



GO
/****** Object:  StoredProcedure [dbo].[SelectStatus]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectStatus]

@idStatus tinyint
AS
BEGIN
	
SET NOCOUNT ON;
select IdStatus, DescriptionS from StatusE
where IdStatus=@idStatus
END



GO
/****** Object:  StoredProcedure [dbo].[SelectTax]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectTax]
@idTax int

AS
BEGIN
	
select IdTax, CountryCode, TaxPercent from tax 
where IdTax=@idTax
END



GO
/****** Object:  StoredProcedure [dbo].[SelectTypeId]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectTypeId]
@idTypeId tinyint

AS
BEGIN
		
SET NOCOUNT ON;

select IdTypeId, TypeT from TypeId
where IdTypeId=@idTypeId;
END



GO
/****** Object:  StoredProcedure [dbo].[SelectUserEcommerce]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectUserEcommerce]
@idUser int
AS
BEGIN
		
SET NOCOUNT ON;

Select IdUser, IdTypeId, UserName, PasswordUser, Name,LastName,Email, PhoneNumber, IdRole, CountryCode, FactoryName, IdCreditCard, IdPayPal, IdStatus, PostalCode, Adress from UserEcommerce
where IdUser =@idUser
END



GO
/****** Object:  StoredProcedure [dbo].[SelectUserEvent]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectUserEvent]
@idEventUser int


AS
BEGIN
		
SET NOCOUNT ON;

select IdEventUser, IdUser, IdEvent, DateLogin, DateLogout, ProcedureUser, Likes from UserEvent 
where IdEventUser=@idEventUser

END



GO
/****** Object:  StoredProcedure [dbo].[SelectUseRole]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SelectUseRole]

@idUserRole tinyint


AS
BEGIN
		
SET NOCOUNT ON;
Select IdRole, IdUserRole, IdUser from UserRole
where IdUserRole= @idUserRole

END



GO
/****** Object:  StoredProcedure [dbo].[ShipmentInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ShipmentInsert]
@idShipment int,
@idOrder int,
@idUser int, 
@idFactory int, 
@idStatus tinyint, 
@shipmentDate date, 
@arrivalDate date
AS
BEGIN
	
SET NOCOUNT ON;
insert into Shipment (IdShipment, IdOrder, IdUser, IdFactory, IdStatus, ShipmentDate, ArrivalDate)
values (@idShipment,@idOrder,@idUser,@idFactory,@idStatus,@shipmentDate,@arrivalDate)
END



GO
/****** Object:  StoredProcedure [dbo].[StateInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[StateInsert]

@name nchar(30), 
@countryCode tinyint
AS
BEGIN
	
SET NOCOUNT ON;
insert into State  ( Name, CountryCode)
values (@name,@countryCode)
END

GO
/****** Object:  StoredProcedure [dbo].[StatusInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[StatusInsert]

@idStatus tinyint, 
@descriptionS nchar (20)
AS
BEGIN
	
SET NOCOUNT ON;
Insert into StatusE (IdStatus, DescriptionS)
values (@idStatus,@descriptionS)
END



GO
/****** Object:  StoredProcedure [dbo].[TaxInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TaxInsert]
@idTax int, 
@countryCode tinyint,
@taxPercent float

AS
BEGIN
	
SET NOCOUNT ON;
insert into Tax(IdTax, CountryCode, TaxPercent)
values (@idTax,@countryCode,@taxPercent)
END



GO
/****** Object:  StoredProcedure [dbo].[TypeIdInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[TypeIdInsert]
@idTypeId tinyint, 
@typeT nchar (10)

AS
BEGIN
		
SET NOCOUNT ON;

insert into TypeId (IdTypeId, TypeT)
values (@idTypeId,@typeT)
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateCategory]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCategory]
@idcategory int,
@name nchar (30),
@description nchar(100)


AS
BEGIN
	SET NOCOUNT ON;

   Update Category set Name=@name,DescriptionCate=@description
   where IdCategory= @idcategory;

END




GO
/****** Object:  StoredProcedure [dbo].[UpdateCheck]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCheck]
@idCheck int,
@checkNumber int, 
@checkBank nchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    update CheckIc set CheckNumber = @checkNumber, CheckBank =@checkBank
	where IdCheck=@idCheck
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateCity]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCity]
@cityCode int, 
@name nchar (30),
@stateCode tinyint

AS
BEGIN
	SET NOCOUNT ON;

   Update City set Name=@name, StateCode = @stateCode
   where CityCode= @cityCode

END



GO
/****** Object:  StoredProcedure [dbo].[UpdateCountry]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCountry]
@countryCode tinyint, 
@name nchar (30)

AS
BEGIN
	
	SET NOCOUNT ON;
	update Country set  Name=@name
	where CountryCode =@countryCode
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateCountryTax]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCountryTax]
	
@idCountrytax tinyint, 
@countryCode tinyint, 
@idTax int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
update CountryTax set  CountryCode =@countryCode, IdTax=@idTax
where IdCountrytax = @idCountrytax
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateCreditCard]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCreditCard]
@idCreditCard int, 
@creditCardNumber int, 
@expirationDate date
AS
BEGIN
	
	SET NOCOUNT ON;
	update  CreditCard set CreditCardNumber=@creditCardNumber,ExpirationDate=@expirationDate
	where  IdCreditCard=@idCreditCard
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateEvaluation]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateEvaluation]
@idEvaluation tinyint, 
@score nchar (10)


AS
BEGIN
	
	SET NOCOUNT ON;
Update Evaluation set Score=@score
where IdEvaluation=@idEvaluation
	
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateEvent]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateEvent]
@idEvent int, 
@description nchar (100)

AS
BEGIN
	
	SET NOCOUNT ON;
Update EventE set  DescriptionE=@description
where IdEvent=@idEvent
	
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateFactory]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateFactory]
@idFactory int,
@name nchar (50),
@countryCode tinyint, 
@idEvaluation tinyint


AS
BEGIN
	SET NOCOUNT ON;

   Update Factory set  Name =@name, CountryCode= @countryCode, IdEvaluation =@idEvaluation
   where IdFactory= @idFactory

END



GO
/****** Object:  StoredProcedure [dbo].[UpdateFactoryEvaluation]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateFactoryEvaluation]
@idFactoryEvaluation tinyint,
@idFactory int,
@idEvaluation tinyint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Update FactoryEvaluation set IdFactory = @idFactory, IdEvaluation=@idEvaluation
where IdFactoryEvaluation=@idFactoryEvaluation
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateOffer]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateOffer]
@idOffer int,
@name nchar(100), 
@descriptionO nchar(100),
@dateStart date,
@dateEnd date,
@percentageOffer float,
@idProduct int
AS
BEGIN
	
	SET NOCOUNT ON;
Update Offer set Name=@name,DescriptionO=@descriptionO,DateStart=@dateStart,DateEnd=@dateEnd,IdProduct=@idProduct
where IdOffer=@idOffer
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateOrderDetail]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateOrderDetail]
@idOrderDetail int, 
@idOrder int, 
@idProduct int, 
@idTax int, 
@quantityTotal int, 
@subTotal float, 
@observation nchar (100) , 
@discount float
AS
BEGIN
	
SET NOCOUNT ON;
update  OrderDetail set IdOrder =@idOrder, IdProduct=@idProduct, IdTax=@idTax, QuantityTotal=@quantityTotal, SubTotal=@subTotal, Observation=@observation, Discount=@discount
where IdOrderDetail=@idOrderDetail

END



GO
/****** Object:  StoredProcedure [dbo].[UpdateOrderP]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateOrderP]
@idOrder int, 
@dateOrder date, 
@idStatus tinyint, 
@idPayment int, 
@total float

AS
BEGIN
	SET NOCOUNT ON;

   Update OrderP set  DateOrder = @dateOrder, IdStatus =@idStatus, IdPayment =@idPayment, Total=@total
   where IdOrder=@idOrder

END



GO
/****** Object:  StoredProcedure [dbo].[UpdatePayment]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdatePayment]
@idPayment int, 
@datePayment date, 
@idPaymentType int, 
@amount float

AS
BEGIN
	
	SET NOCOUNT ON;
update Payment set DatePayment=@datePayment, IdPaymentType=@idPaymentType, Amount=@amount
where IdPayment=@idPayment
	
END



GO
/****** Object:  StoredProcedure [dbo].[UpdatePaymentType]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdatePaymentType]
@idPaymentType int, 
@idCreditcard int, 
@idPaypal int, 
@idCheck int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Update PaymentType set  IdCreditcard =@idCreditcard, IdPaypal=@idPaypal, IdCheck=@idCheck
where IdPaymentType=@idPaymentType
END



GO
/****** Object:  StoredProcedure [dbo].[UpdatePaypal]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdatePaypal]
@idPaypal int,
@idUser int
AS
BEGIN
	
SET NOCOUNT ON;
update Paypal set  IdUser=@idUser
where IdPaypal = @idPaypal
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateProduct]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateProduct]
@idProduct int, 
@name nchar(30), 
@descriptionPro nchar(30), 
@idCategory int, 
@iddSupplier int, 
@idEvaluation tinyint, 
@quantity int, 
@unitPrice float

AS
BEGIN
	
SET NOCOUNT ON;
Update  Product set IdProduct=@idProduct,Name=@name, DescriptionPro=@descriptionPro, IdCategory=@idCategory, 
IdSupplier=@iddSupplier, IdEvaluation=@idEvaluation, Quantity=@quantity, UnitPrice=@unitPrice
where IdProduct=@idProduct
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateProductEvaluation]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateProductEvaluation]
@idProductEvaluation tinyint, 
@idProduct int,
@idEvaluation tinyint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Update ProductEvaluation set IdProduct= @idProductEvaluation, IdEvaluation=@idEvaluation
where IdProductEvaluation=@idProductEvaluation
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateProductUser]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateProductUser]
@idProductUser int,
@idProduct int,
@idUser int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Update ProductUser set IdProduct=@idProduct, IdUser=@idUser
where IdProductUser=@idProductUser
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateRole]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateRole]
@idRole tinyint, 
@typeR nchar(20)
AS
BEGIN
	
SET NOCOUNT ON;
update RoleE set TypeR =@typeR
where IdRole=@idRole
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateShipment]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateShipment]
@idShipment int,
@idOrder int,
@idUser int, 
@idFactory int, 
@idStatus tinyint, 
@shipmentDate date, 
@arrivalDate date
AS
BEGIN
	
SET NOCOUNT ON;
Update Shipment set IdOrder =@idOrder, IdUser=@idUser, IdFactory=@idFactory, IdStatus=@idStatus, ShipmentDate=@shipmentDate, ArrivalDate=@arrivalDate
where IdShipment=@idShipment
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateState]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateState]
@stateCode tinyint, 
@name nchar(30), 
@countryCode tinyint
AS
BEGIN
	
SET NOCOUNT ON;
Update State set  Name= @name,CountryCode=@countryCode
where StateCode=@stateCode
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateStatus]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateStatus]

@idStatus tinyint, 
@descriptionS nchar (20)
AS
BEGIN
	
SET NOCOUNT ON;
Update StatusE set DescriptionS=@descriptionS
where IdStatus=@idStatus
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateTax]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateTax]
@idTax int, 
@countryCode tinyint,
@taxPercent float

AS
BEGIN
	
SET NOCOUNT ON;
update Tax set CountryCode =@countryCode, TaxPercent=@taxPercent
where Idtax= @idTax
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateTypeId]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateTypeId]
@idTypeId tinyint,
@typeT nchar (10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
update TypeId set TypeT= @typeT
where IdTypeId =@idTypeId
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateUserEcommerce]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateUserEcommerce]
@idUser int,
@idTypeId tinyint, 
@userName nchar(20), 
@passwordUser nchar(40),
@name nchar (250), 
@lastName nchar (250), 
@email nchar (50), 
@phoneNumber nchar(30), 
@idRole tinyint, 
@countryCode tinyint, 
@factoryName nchar (10), 
@idCreditCard int, 
@idPayPal int, 
@idStatus tinyint, 
@postalCode tinyint, 
@adress nchar (70)
AS
BEGIN
		
SET NOCOUNT ON;

Update UserEcommerce set IdUser =@idUser, IdTypeId=@idTypeId, UserName=@userName,PasswordUser=@passwordUser, Name=@name,LastName=@lastName, Email=@email, PhoneNumber=@phoneNumber,IdRole=@idRole, CountryCode=@countryCode, FactoryName=@factoryName,IdCreditCard=@idCreditCard, IdPayPal=@idPayPal, IdStatus=@idStatus, PostalCode=@postalCode, Adress=@adress
where IdUser =@idUser
END



GO
/****** Object:  StoredProcedure [dbo].[UpdateUserEvent]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateUserEvent]
@idEventUser int, 
@idUser int,
@idEvent int,
@dateLogin date, 
@dateLogout date, 
@procedureUser nchar(100),
@likes nchar(100)


AS
BEGIN
		
SET NOCOUNT ON;
update UserEvent set IdUser=@idUser, IdEvent=@idEvent, DateLogin=@dateLogin, DateLogout=@dateLogout, ProcedureUser=@procedureUser, Likes=  @likes
where IdEventUser=@idEventUser

END



GO
/****** Object:  StoredProcedure [dbo].[UpdateUserRole]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateUserRole]
@idRole tinyint,
@idUserRole tinyint,
@idUser int

AS
BEGIN
		
SET NOCOUNT ON;
Update UserRole set IdRole =@idRole,IdUser=@idUser
where IdUserRole= @idUserRole

END



GO
/****** Object:  StoredProcedure [dbo].[UserEcommerceInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UserEcommerceInsert]
@idUser int,
@idTypeId tinyint, 
@userName nchar(20), 
@passwordUser nchar(40),
@name nchar (250), 
@lastName nchar(250),
@email nchar (50), 
@phoneNumber nchar(30), 
@idRole tinyint, 
@cityCode tinyint, 
@factoryName nchar (10), 
@idCreditCard int, 
@idPayPal int, 
@idStatus tinyint, 
@postalCode tinyint, 
@adress nchar (70)
AS
BEGIN
		
SET NOCOUNT ON;

Insert into UserEcommerce (IdUser, IdTypeId, UserName, PasswordUser, Name, LastName,  Email, PhoneNumber, IdRole, CityCode, FactoryName, IdCreditCard, IdPayPal, IdStatus, PostalCode, Adress)
values 
(@idUser,@idTypeId,@userName,@passwordUser,@name,@lastName,@email,@phoneNumber,@idRole,@cityCode,@factoryName,@idCreditCard,@idPayPal,@idStatus,@postalCode,@adress)
END



GO
/****** Object:  StoredProcedure [dbo].[UserEventInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UserEventInsert]
@idEventUser int, 
@idUser int,
@idEvent int,
@dateLogin date, 
@dateLogout date, 
@procedureUser nchar(100),
@likes nchar(100)


AS
BEGIN
		
SET NOCOUNT ON;

Insert into UserEvent (IdEventUser, IdUser, IdEvent, DateLogin, DateLogout, ProcedureUser, Likes) 
values (@idEventUser,@idUser,@idEvent,@dateLogin,@dateLogout,@procedureUser,@likes)

END



GO
/****** Object:  StoredProcedure [dbo].[UseRoleInsert]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UseRoleInsert]
@idRole tinyint,
@idUserRole tinyint,
@idUser int

AS
BEGIN
		
SET NOCOUNT ON;
Insert into UserRole(IdRole, IdUserRole, IdUser) values
(@idRole,@idUserRole,@idUser)

END



GO
/****** Object:  StoredProcedure [dbo].[VerificarUsuario]    Script Date: 31/03/2016 16:01:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[VerificarUsuario]
@usuario nchar (20),
@password nchar (40)
as
begin
select Name from UserEcommerce where @usuario = UserName AND @password = PasswordUser;
END
GO
