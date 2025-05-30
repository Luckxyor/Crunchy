USE [CrunchyBD]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](50) NOT NULL,
	[Foto] [text] NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dificultad]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dificultad](
	[IdDificultad] [int] IDENTITY(1,1) NOT NULL,
	[NombreDificultad] [varchar](50) NULL,
 CONSTRAINT [PK_Dificultad] PRIMARY KEY CLUSTERED 
(
	[IdDificultad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favoritos]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favoritos](
	[IdUsuario] [int] NULL,
	[IdReceta] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filtro]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filtro](
	[IdFiltro] [int] IDENTITY(1,1) NOT NULL,
	[NombreFiltros] [varchar](50) NULL,
	[IdRestricciones] [int] NULL,
	[IdDificultad] [int] NULL,
 CONSTRAINT [PK_Filtro] PRIMARY KEY CLUSTERED 
(
	[IdFiltro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredientes]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredientes](
	[IdIngrediente] [int] IDENTITY(1,1) NOT NULL,
	[NombreIngrediente] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Ingredientes] PRIMARY KEY CLUSTERED 
(
	[IdIngrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IngredientesReceta]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IngredientesReceta](
	[IdReceta] [int] NOT NULL,
	[IdIngrediente] [int] NOT NULL,
	[Cantidad] [float] NOT NULL,
	[IdUnidadMetrica] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[Foto] [text] NULL,
	[Diminutivo] [varchar](4) NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preferencias]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preferencias](
	[IdPreferencias] [int] IDENTITY(1,1) NOT NULL,
	[IdRestricciones] [int] NULL,
	[IdRazones] [int] NULL,
	[TipoComida] [varchar](50) NULL,
 CONSTRAINT [PK_Preferencias] PRIMARY KEY CLUSTERED 
(
	[IdPreferencias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RazonesAPP]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RazonesAPP](
	[IdRazones] [int] IDENTITY(1,1) NOT NULL,
	[Motivos] [varchar](50) NULL,
 CONSTRAINT [PK_RazonesAPP] PRIMARY KEY CLUSTERED 
(
	[IdRazones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receta]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receta](
	[IdReceta] [int] IDENTITY(1,1) NOT NULL,
	[NombreReceta] [varchar](50) NOT NULL,
	[Pasos] [text] NOT NULL,
	[Tiempo] [varchar](50) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[IdDificultad] [int] NOT NULL,
	[Descripcion] [varchar](500) NOT NULL,
	[IdPais] [int] NOT NULL,
	[Foto] [text] NOT NULL,
 CONSTRAINT [PK_Receta] PRIMARY KEY CLUSTERED 
(
	[IdReceta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restricciones]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restricciones](
	[IdRestricciones] [int] IDENTITY(1,1) NOT NULL,
	[RestriccionesNombre] [varchar](50) NULL,
 CONSTRAINT [PK_Discapacidades] PRIMARY KEY CLUSTERED 
(
	[IdRestricciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[IdUsuario] [int] NULL,
	[IdReceta] [int] NULL,
	[Estrellas] [float] NULL,
	[Comentario] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnidadesMetricas]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnidadesMetricas](
	[IdUnidadMetrica] [int] IDENTITY(1,1) NOT NULL,
	[NombreUnidad] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Unidades] PRIMARY KEY CLUSTERED 
(
	[IdUnidadMetrica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Contraseña] [varchar](100) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Foto] [text] NULL,
	[FotoHeader] [text] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([IdCategoria], [NombreCategoria], [Foto]) VALUES (1, N'Desayuno', N'https://comedera.com/wp-content/uploads/sites/9/2022/12/Desayono-americano-shutterstock_2120331371.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [NombreCategoria], [Foto]) VALUES (2, N'Almuerzo', N'https://i.pinimg.com/564x/7d/a4/6f/7da46facf993a6dfc7c959844b3ba87d.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [NombreCategoria], [Foto]) VALUES (3, N'Cena', N'https://www.elmueble.com/medio/2023/01/27/quinoa-tricolor-frita-con-pina-caramelizada-champinones-hierbas-aromaticas_36cfa5ff_00559316_230127095107_2000x1351.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [NombreCategoria], [Foto]) VALUES (4, N'Merienda', N'https://pymstatic.com/4182/conversions/meriendas-sanas-social.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [NombreCategoria], [Foto]) VALUES (5, N'Bebidas', N'https://thefoodtech.com/wp-content/uploads/2022/05/alimentos-funcionales-principal-828x548.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [NombreCategoria], [Foto]) VALUES (6, N'Postres', N'https://aprende.com/wp-content/uploads/2020/10/cupcakes-de-chocolate.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [NombreCategoria], [Foto]) VALUES (7, N'Carnes', N'https://resizer.iproimg.com/unsafe/1280x/filters:format(webp)/https://assets.iprofesional.com/assets/jpg/2021/01/510230.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [NombreCategoria], [Foto]) VALUES (8, N'Pastas', N'https://i.pinimg.com/564x/af/f1/9a/aff19ab616647374f4cd1ee0de7788c4.jpg')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Dificultad] ON 

INSERT [dbo].[Dificultad] ([IdDificultad], [NombreDificultad]) VALUES (1, N'Fácil')
INSERT [dbo].[Dificultad] ([IdDificultad], [NombreDificultad]) VALUES (2, N'Medio')
INSERT [dbo].[Dificultad] ([IdDificultad], [NombreDificultad]) VALUES (3, N'Difícil')
SET IDENTITY_INSERT [dbo].[Dificultad] OFF
GO
INSERT [dbo].[Favoritos] ([IdUsuario], [IdReceta]) VALUES (5, 1)
INSERT [dbo].[Favoritos] ([IdUsuario], [IdReceta]) VALUES (5, 2)
GO
SET IDENTITY_INSERT [dbo].[Ingredientes] ON 

INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (1, N'Sal')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (2, N'Azúcar')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (3, N'Harina')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (4, N'Levadura')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (5, N'Aceite de oliva')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (6, N'Mantequilla')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (7, N'Huevo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (8, N'Leche')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (9, N'Queso')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (10, N'Tomate')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (11, N'Cebolla')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (12, N'Ajo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (13, N'Pimiento')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (14, N'Pimienta')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (15, N'Perejil')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (16, N'Cilantro')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (17, N'Albahaca')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (18, N'Orégano')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (19, N'Comino')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (20, N'Jengibre')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (21, N'Canela')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (22, N'Clavo de olor')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (23, N'Nuez moscada')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (24, N'Curry')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (25, N'Pimentón')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (26, N'Mostaza')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (27, N'Vinagre')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (28, N'Salsa de soja')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (29, N'Salsa de tomate')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (30, N'Mayonesa')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (31, N'Ketchup')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (32, N'Mostaza Dijon')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (33, N'Salsa Worcestershire')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (34, N'Miel')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (35, N'Chocolate')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (36, N'Vainilla')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (37, N'Leche condensada')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (38, N'Crema de leche')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (39, N'Yogur')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (40, N'Frijoles')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (41, N'Lentejas')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (42, N'Garbanzos')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (43, N'Arroz')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (44, N'Pasta')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (45, N'Pan')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (46, N'Carne de res')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (47, N'Carne de cerdo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (48, N'Pollo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (49, N'Pescado')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (50, N'Camarón')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (51, N'Calamar')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (52, N'Pulpo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (53, N'Salmón')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (54, N'Atún')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (55, N'Merluza')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (56, N'Tilapia')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (57, N'Trucha')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (58, N'Langosta')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (59, N'Cangrejo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (60, N'Mejillones')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (61, N'Almejas')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (62, N'Vieiras')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (63, N'Champiñones')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (64, N'Setas')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (65, N'Zanahoria')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (66, N'Papa')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (67, N'Batata')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (68, N'Calabacín')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (69, N'Berenjena')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (70, N'Brócoli')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (71, N'Coliflor')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (72, N'Espárragos')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (73, N'Espinaca')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (74, N'Acelga')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (75, N'Lechuga')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (76, N'Repollo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (77, N'Pepino')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (78, N'Rábano')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (79, N'Remolacha')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (80, N'Nabo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (81, N'Apio')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (82, N'Hinojo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (83, N'Maíz')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (84, N'Guisantes')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (85, N'Habichuelas')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (86, N'Castañas')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (87, N'Almendras')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (88, N'Nueces')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (89, N'Avellanas')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (90, N'Pistachos')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (91, N'Cacahuetes')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (92, N'Anacardos')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (93, N'Semillas de girasol')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (94, N'Semillas de calabaza')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (95, N'Semillas de lino')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (96, N'Semillas de chía')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (97, N'Semillas de sésamo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (98, N'Uvas')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (99, N'Manzana')
GO
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (100, N'Pera')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (101, N'Plátano')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (102, N'Naranja')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (103, N'Mandarina')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (104, N'Limón')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (105, N'Lima')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (106, N'Piña')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (107, N'Mango')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (108, N'Papaya')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (109, N'Melón')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (110, N'Sandía')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (111, N'Durazno')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (112, N'Albaricoque')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (113, N'Ciruela')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (114, N'Cereza')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (115, N'Frambuesa')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (116, N'Fresa')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (117, N'Mora')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (118, N'Arándanos')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (119, N'Higo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (120, N'Granada')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (121, N'Kiwi')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (122, N'Coco')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (123, N'Maracuyá')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (124, N'Guayaba')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (125, N'Tamarindo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (126, N'Dátil')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (127, N'Aceitunas')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (128, N'Jalapeño')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (129, N'Guindilla')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (130, N'Chile habanero')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (131, N'Chile poblano')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (132, N'Chile serrano')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (133, N'Wasabi')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (134, N'Raíz de loto')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (135, N'Tofu')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (136, N'Tempeh')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (137, N'Seitan')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (138, N'Soja texturizada')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (139, N'Leche de almendras')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (140, N'Leche de coco')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (141, N'Leche de avena')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (142, N'Leche de soja')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (143, N'Leche de arroz')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (144, N'Harina de almendras')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (145, N'Harina de coco')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (146, N'Harina de avena')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (147, N'Harina de centeno')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (148, N'Harina de maíz')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (149, N'Harina integral')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (150, N'Azúcar moreno')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (151, N'Azúcar de coco')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (152, N'Jarabe de arce')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (153, N'Melaza')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (154, N'Stevia')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (155, N'Eritritol')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (156, N'Xilitol')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (157, N'Agave')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (158, N'Cacao en polvo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (159, N'Chocolate blanco')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (160, N'Chocolate con leche')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (161, N'Chocolate negro')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (162, N'Extracto de almendra')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (163, N'Extracto de coco')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (164, N'Extracto de menta')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (165, N'Extracto de naranja')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (166, N'Pasta de miso')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (167, N'Tahini')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (168, N'Pasta de curry')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (169, N'Pasta de tomate')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (170, N'Pasta de anchoas')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (171, N'Caldo de pollo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (172, N'Caldo de carne')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (173, N'Caldo de pescado')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (174, N'Caldo de verduras')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (175, N'Levadura nutricional')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (176, N'Harina de garbanzos')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (177, N'Mijo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (178, N'Quinoa')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (179, N'Bulgur')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (180, N'Cuscús')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (181, N'Amaranto')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (182, N'Espelta')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (183, N'Trigo sarraceno')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (184, N'Chía molida')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (185, N'Lino molido')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (186, N'Macadamia')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (187, N'Higos secos')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (188, N'Pasas')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (189, N'Dátiles secos')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (190, N'Jengibre en polvo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (191, N'Ajo en polvo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (192, N'Cebolla en polvo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (193, N'Cilantro seco')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (194, N'Perejil seco')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (195, N'Albahaca seca')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (196, N'Orégano seco')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (197, N'Tomillo seco')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (198, N'Romero seco')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (199, N'Salvia seca')
GO
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (200, N'Hojas de laurel')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (201, N'Estragón')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (202, N'Eneldo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (203, N'Hierbabuena')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (204, N'Menta fresca')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (205, N'Sésamo negro')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (206, N'Pimienta blanca')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (207, N'Pimienta rosa')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (208, N'Cardamomo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (209, N'Anís estrellado')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (210, N'Hibisco')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (211, N'Rosa mosqueta')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (212, N'Flor de azahar')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (213, N'Lavanda')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (214, N'Cúrcuma')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (215, N'Galanga')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (216, N'Lemongrass')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (217, N'Piel de limón')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (218, N'Piel de naranja')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (219, N'Piel de lima')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (220, N'Vinagre de manzana')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (221, N'Vinagre balsámico')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (222, N'Vinagre de vino tinto')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (223, N'Vinagre de arroz')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (224, N'Vinagre de coco')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (225, N'Vinagre de frambuesa')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (226, N'Salsa teriyaki')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (227, N'Salsa hoisin')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (228, N'Salsa de ostras')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (229, N'Salsa de pescado')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (230, N'Salsa de tamarindo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (231, N'Salsa de cacahuate')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (232, N'Salsa de pimientos')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (233, N'Salsa de chile dulce')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (234, N'Salsa barbacoa')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (235, N'Salsa ranchera')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (236, N'Salsa de yogur')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (237, N'Salsa de miel y mostaza')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (238, N'Salsa de mango y curry')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (239, N'Salsa tártara')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (240, N'Salsa bechamel')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (241, N'Salsa boloñesa')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (242, N'Salsa pesto')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (243, N'Salsa alfredo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (244, N'Salsa carbonara')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (245, N'Salsa brava')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (246, N'Salsa chimichurri')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (247, N'Salsa criolla')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (248, N'Salsa de ají amarillo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (249, N'Salsa harissa')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (250, N'Salsa romesco')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (251, N'Salsa de trufa')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (252, N'Salsa de queso azul')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (253, N'Salsa de nata y champiñones')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (254, N'Salsa de frutos rojos')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (255, N'Salsa de mango')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (256, N'Salsa de tamarindo y chile')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (257, N'Salsa de maracuyá')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (258, N'Salsa de chocolate')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (259, N'Salsa de café')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (260, N'Salsa de caramelo')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (261, N'Salsa de almendras')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (262, N'Salsa de avellanas')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (263, N'Salsa de piñones')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (264, N'Salsa de pistachos')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (265, N'Salsa de nueces')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (266, N'Salsa de anacardos')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (267, N'Salsa de coco')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (268, N'Salsa de soja dulce')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (269, N'Salsa de pimientos asados')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (270, N'Salsa de chipotle')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (271, N'Salsa de jalapeño')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (272, N'Salsa de mostaza picante')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (273, N'Salsa de cacahuete y jengibre')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (274, N'Salsa de mango y habanero')
INSERT [dbo].[Ingredientes] ([IdIngrediente], [NombreIngrediente]) VALUES (275, N'Salsa de ciruelas')
SET IDENTITY_INSERT [dbo].[Ingredientes] OFF
GO
INSERT [dbo].[IngredientesReceta] ([IdReceta], [IdIngrediente], [Cantidad], [IdUnidadMetrica]) VALUES (2, 1, 10, 4)
INSERT [dbo].[IngredientesReceta] ([IdReceta], [IdIngrediente], [Cantidad], [IdUnidadMetrica]) VALUES (2, 15, 1, 3)
INSERT [dbo].[IngredientesReceta] ([IdReceta], [IdIngrediente], [Cantidad], [IdUnidadMetrica]) VALUES (2, 6, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([IdPais], [Foto], [Diminutivo]) VALUES (1, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIamRqUfWBGWK4yoqPL2A0OuqOl49_yY9cWw&s', N'ARG')
SET IDENTITY_INSERT [dbo].[Paises] OFF
GO
SET IDENTITY_INSERT [dbo].[Receta] ON 

INSERT [dbo].[Receta] ([IdReceta], [NombreReceta], [Pasos], [Tiempo], [IdCategoria], [IdDificultad], [Descripcion], [IdPais], [Foto]) VALUES (1, N'Empanada', N'1,2,3', N'1 Hora', 2, 1, N'Una empanada es una masa rellena, generalmente de carne, queso o vegetales, que se cocina al horno o frita.', 1, N'https://assets.elgourmet.com/wp-content/uploads/2023/10/EMPANADAS-1-1024x683.jpg.webp')
INSERT [dbo].[Receta] ([IdReceta], [NombreReceta], [Pasos], [Tiempo], [IdCategoria], [IdDificultad], [Descripcion], [IdPais], [Foto]) VALUES (2, N'Kneidalaj', N'Hola', N'120', 3, 2, N'Kneidalaj', 1, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8P5yBBHKez9OcHtNVAQO2WLHTRJb5oLZZJQ&s')
SET IDENTITY_INSERT [dbo].[Receta] OFF
GO
INSERT [dbo].[Review] ([IdUsuario], [IdReceta], [Estrellas], [Comentario]) VALUES (NULL, 1, 4, N'hola')
INSERT [dbo].[Review] ([IdUsuario], [IdReceta], [Estrellas], [Comentario]) VALUES (NULL, 1, 5, N'chau')
GO
SET IDENTITY_INSERT [dbo].[UnidadesMetricas] ON 

INSERT [dbo].[UnidadesMetricas] ([IdUnidadMetrica], [NombreUnidad]) VALUES (1, N'mL')
INSERT [dbo].[UnidadesMetricas] ([IdUnidadMetrica], [NombreUnidad]) VALUES (2, N'L')
INSERT [dbo].[UnidadesMetricas] ([IdUnidadMetrica], [NombreUnidad]) VALUES (3, N'Kg')
INSERT [dbo].[UnidadesMetricas] ([IdUnidadMetrica], [NombreUnidad]) VALUES (4, N'Gr')
INSERT [dbo].[UnidadesMetricas] ([IdUnidadMetrica], [NombreUnidad]) VALUES (5, N'Un')
SET IDENTITY_INSERT [dbo].[UnidadesMetricas] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([IdUsuario], [Email], [Contraseña], [Username], [Foto], [FotoHeader]) VALUES (5, N'lucaseialben2@gmail.com', N'123', N'Luckxyor', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8oYW96-txYfDLajeZHlqsO-BZxHatKR9JWw&s', NULL)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[Favoritos]  WITH CHECK ADD  CONSTRAINT [FK_Favoritos_Receta] FOREIGN KEY([IdReceta])
REFERENCES [dbo].[Receta] ([IdReceta])
GO
ALTER TABLE [dbo].[Favoritos] CHECK CONSTRAINT [FK_Favoritos_Receta]
GO
ALTER TABLE [dbo].[Favoritos]  WITH CHECK ADD  CONSTRAINT [FK_Favoritos_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Favoritos] CHECK CONSTRAINT [FK_Favoritos_Usuario]
GO
ALTER TABLE [dbo].[Filtro]  WITH CHECK ADD  CONSTRAINT [FK_Filtro_Dificultad] FOREIGN KEY([IdDificultad])
REFERENCES [dbo].[Dificultad] ([IdDificultad])
GO
ALTER TABLE [dbo].[Filtro] CHECK CONSTRAINT [FK_Filtro_Dificultad]
GO
ALTER TABLE [dbo].[Filtro]  WITH CHECK ADD  CONSTRAINT [FK_Filtro_Restricciones] FOREIGN KEY([IdRestricciones])
REFERENCES [dbo].[Restricciones] ([IdRestricciones])
GO
ALTER TABLE [dbo].[Filtro] CHECK CONSTRAINT [FK_Filtro_Restricciones]
GO
ALTER TABLE [dbo].[IngredientesReceta]  WITH CHECK ADD  CONSTRAINT [FK_Ingredientes-Receta_Ingredientes] FOREIGN KEY([IdIngrediente])
REFERENCES [dbo].[Ingredientes] ([IdIngrediente])
GO
ALTER TABLE [dbo].[IngredientesReceta] CHECK CONSTRAINT [FK_Ingredientes-Receta_Ingredientes]
GO
ALTER TABLE [dbo].[IngredientesReceta]  WITH CHECK ADD  CONSTRAINT [FK_Ingredientes-Receta_Receta] FOREIGN KEY([IdReceta])
REFERENCES [dbo].[Receta] ([IdReceta])
GO
ALTER TABLE [dbo].[IngredientesReceta] CHECK CONSTRAINT [FK_Ingredientes-Receta_Receta]
GO
ALTER TABLE [dbo].[IngredientesReceta]  WITH CHECK ADD  CONSTRAINT [FK_Ingredientes-Receta_Unidades] FOREIGN KEY([IdUnidadMetrica])
REFERENCES [dbo].[UnidadesMetricas] ([IdUnidadMetrica])
GO
ALTER TABLE [dbo].[IngredientesReceta] CHECK CONSTRAINT [FK_Ingredientes-Receta_Unidades]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Categorias]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Dificultad1] FOREIGN KEY([IdDificultad])
REFERENCES [dbo].[Dificultad] ([IdDificultad])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Dificultad1]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Paises] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Paises] ([IdPais])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Paises]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Receta] FOREIGN KEY([IdReceta])
REFERENCES [dbo].[Receta] ([IdReceta])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Receta]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuarios] ([IdUsuario])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Usuario]
GO
/****** Object:  StoredProcedure [dbo].[InsertarIngredienteReceta]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarIngredienteReceta]
    @IdReceta INT,
    @IdIngrediente INT,
    @Cantidad FLOAT,
    @IdUnidadMetrica INT
AS
BEGIN
    INSERT INTO IngredientesReceta (IdReceta, IdIngrediente, Cantidad, IdUnidadMetrica)
    VALUES (@IdReceta, @IdIngrediente, @Cantidad, @IdUnidadMetrica);
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarReceta]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarReceta]
    @Foto NVARCHAR(MAX),
    @NombreReceta VARCHAR(50),
    @Descripcion VARCHAR(500),
    @Tiempo VARCHAR(50),
    @IdDificultad INT,
    @IdPais INT,
    @IdCategoria INT,
    @Pasos TEXT
AS
BEGIN
    INSERT INTO Receta (Foto, NombreReceta, Descripcion, Tiempo, IdDificultad, IdPais, IdCategoria, Pasos)
    VALUES (@Foto, @NombreReceta, @Descripcion, @Tiempo, @IdDificultad, @IdPais, @IdCategoria, @Pasos);

    SELECT SCOPE_IDENTITY() AS IdReceta;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_BuscarRecetasPorIngredientes]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_BuscarRecetasPorIngredientes]
    @IngredientesSeleccionados VARCHAR(MAX), -- Lista de IDs de ingredientes separados por comas
    @IdUsuario INT -- ID del usuario para verificar favoritos
AS
BEGIN
    -- Dividir la lista de ingredientes en una tabla temporal
    SELECT 
        Receta.IdReceta,
        NombreReceta,
        CAST(Receta.Foto AS VARCHAR(MAX)) AS Foto,
        AVG(ISNULL(Estrellas, 0)) AS Calificacion,
        Descripcion,
        CAST(Paises.Foto AS VARCHAR(MAX)) AS FotoPais,
        Diminutivo AS DiminutivoPais,
        Tiempo,
        NombreDificultad AS Dificultad,
        CASE 
            WHEN EXISTS (
                SELECT 1 
                FROM Favoritos 
                WHERE Favoritos.IdReceta = Receta.IdReceta 
                  AND Favoritos.IdUsuario = @IdUsuario
            ) THEN 1
            ELSE 0
        END AS EsFavorito
    FROM 
        Receta
        INNER JOIN Dificultad ON Dificultad.IdDificultad = Receta.IdDificultad
        INNER JOIN Paises ON Paises.IdPais = Receta.IdPais
        LEFT JOIN Review ON Review.IdReceta = Receta.IdReceta
        INNER JOIN IngredientesReceta ON IngredientesReceta.IdReceta = Receta.IdReceta
    WHERE 
        IngredientesReceta.IdIngrediente IN (
            SELECT CAST(value AS INT) 
            FROM STRING_SPLIT(@IngredientesSeleccionados, ',')
        )
    GROUP BY 
        Receta.IdReceta, 
        NombreReceta, 
        CAST(Receta.Foto AS VARCHAR(MAX)), 
        Descripcion, 
        CAST(Paises.Foto AS VARCHAR(MAX)), 
        Diminutivo, 
        Tiempo, 
        NombreDificultad;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_FavoritosRecetas]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_FavoritosRecetas]
    @IdUsuario INT
AS
BEGIN
    SELECT 
        Receta.IdReceta,
        NombreReceta,
        CAST(Receta.Foto AS VARCHAR(MAX)) AS Foto,
        AVG(Estrellas) AS Calificacion,
        Descripcion,
        CAST(Paises.Foto AS VARCHAR(MAX)) AS FotoPais,
        Diminutivo AS DiminutivoPais,
        Tiempo,
        NombreDificultad AS Dificultad,
        CASE 
            WHEN EXISTS (
                SELECT 1 
                FROM Favoritos 
                WHERE Favoritos.IdReceta = Receta.IdReceta 
                  AND Favoritos.IdUsuario = @IdUsuario
            ) THEN 1
            ELSE 0
        END AS EsFavorito
    FROM 
        Receta
    INNER JOIN 
        Dificultad ON Dificultad.IdDificultad = Receta.IdDificultad
    INNER JOIN 
        Paises ON Paises.IdPais = Receta.IdPais
    INNER JOIN 
        Review ON Review.IdReceta = Receta.IdReceta
    LEFT JOIN 
        Favoritos ON Favoritos.IdReceta = Receta.IdReceta AND Favoritos.IdUsuario = @IdUsuario
    where Favoritos.IdUsuario=@IdUsuario
    GROUP BY 
        Receta.IdReceta, 
        NombreReceta, 
        CAST(Receta.Foto AS VARCHAR(MAX)), 
        Descripcion, 
        CAST(Paises.Foto AS VARCHAR(MAX)), 
        Diminutivo, 
        Tiempo, 
        NombreDificultad;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerResultados]    Script Date: 26/04/2025 00:15:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ObtenerResultados]
    @Busqueda VARCHAR(100),
    @IdUsuario INT
AS
BEGIN
    SELECT 
        Receta.IdReceta,
        NombreReceta,
        CAST(Receta.Foto AS VARCHAR(MAX)) AS Foto,
        AVG(ISNULL(Estrellas, 0)) AS Calificacion,
        Descripcion,
        CAST(Paises.Foto AS VARCHAR(MAX)) AS FotoPais,
        Diminutivo AS DiminutivoPais,
        Tiempo,
        NombreDificultad AS Dificultad,
        CASE 
            WHEN EXISTS (
                SELECT 1 
                FROM Favoritos 
                WHERE Favoritos.IdReceta = Receta.IdReceta 
                  AND Favoritos.IdUsuario = @IdUsuario
            ) THEN 1
            ELSE 0
        END AS EsFavorito
    FROM 
        Receta
        INNER JOIN Dificultad ON Dificultad.IdDificultad = Receta.IdDificultad
        INNER JOIN Paises ON Paises.IdPais = Receta.IdPais
        LEFT JOIN Review ON Review.IdReceta = Receta.IdReceta
    WHERE 
        NombreReceta LIKE '%' + @Busqueda + '%'
    GROUP BY 
        Receta.IdReceta, 
        NombreReceta, 
        CAST(Receta.Foto AS VARCHAR(MAX)), 
        Descripcion, 
        CAST(Paises.Foto AS VARCHAR(MAX)), 
        Diminutivo, 
        Tiempo, 
        NombreDificultad;
END;
GO
