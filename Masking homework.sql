SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Ugyfel](
	[LOGIN] [nvarchar](255) NOT NULL,
	[EMAIL] [nvarchar](255) MASKED WITH (function = 'email()'),
	[NEV] [nvarchar](255) MASKED WITH (Function = 'partial(1,"XXX",1)'),
	[SZULEV] [int] MASKED WITH (FUNCTION = 'random(1900,2100)'),
	[NEM] [nvarchar](1) NULL,
	[CIM] [nvarchar](255) NULL,
 CONSTRAINT [PK_Ugyfel] PRIMARY KEY CLUSTERED 
(
	[LOGIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]



INSERT [dbo].[Ugyfel] ([LOGIN], [EMAIL], [NEV], [SZULEV], [NEM], [CIM]) VALUES (N'adam1',	N'ádám.kiss@mail.hu',	N'Kiss Ádám',	1991,	N'F',	N'5630 Békés, Szolnoki út 8.')

INSERT [dbo].[Ugyfel] ([LOGIN], [EMAIL], [NEV], [SZULEV], [NEM], [CIM]) VALUES (N'adam3',	N'adam3@gmail.com',	N'Barkóci Ádám',	1970,	N'F',	N'3910 Tokaj, Dózsa György utca 37.')

INSERT [dbo].[Ugyfel] ([LOGIN], [EMAIL], [NEV], [SZULEV], [NEM], [CIM]) VALUES (N'adam4',	N'ádám.bieniek@mail.hu',	N'Bieniek Ádám',	1976,	N'F',	N'8630 Balatonboglár, Juhászföldi út 1.')

INSERT [dbo].[Ugyfel] ([LOGIN], [EMAIL], [NEV], [SZULEV], [NEM], [CIM]) VALUES (N'agnes',	N'agnes@gmail.com',	N'Lengyel Ágnes',	1979,	N'N',	N'5200 Törökszentmiklós, Deák Ferenc út 5.')

INSERT [dbo].[Ugyfel] ([LOGIN], [EMAIL], [NEV], [SZULEV], [NEM], [CIM]) VALUES (N'agnes3',	N'agnes3@gmail.com',	N'Hartyánszky Ágnes',	1967,	N'N',	N'6430 Bácsalmás, Posta köz 2.')




CREATE USER MaskUser WITHOUT Login;
GRANT SELECT ON Ugyfel TO MaskUser





EXECUTE AS User= 'MaskUser';
SELECT * FROM Ugyfel
REVERT





