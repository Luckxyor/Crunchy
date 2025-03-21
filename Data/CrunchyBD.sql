USE [CrunchyBD]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 21/3/2025 12:03:38 ******/
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
/****** Object:  Table [dbo].[Dificultad]    Script Date: 21/3/2025 12:03:38 ******/
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
/****** Object:  Table [dbo].[Favoritos]    Script Date: 21/3/2025 12:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favoritos](
	[IdUsuario] [int] NULL,
	[IdReceta] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filtro]    Script Date: 21/3/2025 12:03:38 ******/
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
/****** Object:  Table [dbo].[Ingredientes]    Script Date: 21/3/2025 12:03:38 ******/
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
/****** Object:  Table [dbo].[Ingredientes-Receta]    Script Date: 21/3/2025 12:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredientes-Receta](
	[IdReceta] [int] NOT NULL,
	[IdIngredientes] [int] NOT NULL,
	[Cantidad] [float] NOT NULL,
	[IdMedida] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 21/3/2025 12:03:38 ******/
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
/****** Object:  Table [dbo].[Preferencias]    Script Date: 21/3/2025 12:03:38 ******/
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
/****** Object:  Table [dbo].[RazonesAPP]    Script Date: 21/3/2025 12:03:38 ******/
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
/****** Object:  Table [dbo].[Receta]    Script Date: 21/3/2025 12:03:38 ******/
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
/****** Object:  Table [dbo].[Restricciones]    Script Date: 21/3/2025 12:03:38 ******/
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
/****** Object:  Table [dbo].[Review]    Script Date: 21/3/2025 12:03:38 ******/
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
/****** Object:  Table [dbo].[Unidades]    Script Date: 21/3/2025 12:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unidades](
	[IdMedida] [int] IDENTITY(1,1) NOT NULL,
	[NombreMedida] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Unidades] PRIMARY KEY CLUSTERED 
(
	[IdMedida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 21/3/2025 12:03:38 ******/
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
GO
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([IdPais], [Foto], [Diminutivo]) VALUES (1, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIamRqUfWBGWK4yoqPL2A0OuqOl49_yY9cWw&s', N'ARG')
SET IDENTITY_INSERT [dbo].[Paises] OFF
GO
SET IDENTITY_INSERT [dbo].[Receta] ON 

INSERT [dbo].[Receta] ([IdReceta], [NombreReceta], [Pasos], [Tiempo], [IdCategoria], [IdDificultad], [Descripcion], [IdPais], [Foto]) VALUES (1, N'Empanada', N'1,2,3', N'1 Hora', 2, 1, N'Una empanada es una masa rellena, generalmente de carne, queso o vegetales, que se cocina al horno o frita.', 1, N'https://assets.elgourmet.com/wp-content/uploads/2023/10/EMPANADAS-1-1024x683.jpg.webp')
SET IDENTITY_INSERT [dbo].[Receta] OFF
GO
INSERT [dbo].[Review] ([IdUsuario], [IdReceta], [Estrellas], [Comentario]) VALUES (NULL, 1, 4, N'hola')
INSERT [dbo].[Review] ([IdUsuario], [IdReceta], [Estrellas], [Comentario]) VALUES (NULL, 1, 5, N'chau')
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
ALTER TABLE [dbo].[Ingredientes-Receta]  WITH CHECK ADD  CONSTRAINT [FK_Ingredientes-Receta_Ingredientes] FOREIGN KEY([IdIngredientes])
REFERENCES [dbo].[Ingredientes] ([IdIngrediente])
GO
ALTER TABLE [dbo].[Ingredientes-Receta] CHECK CONSTRAINT [FK_Ingredientes-Receta_Ingredientes]
GO
ALTER TABLE [dbo].[Ingredientes-Receta]  WITH CHECK ADD  CONSTRAINT [FK_Ingredientes-Receta_Receta] FOREIGN KEY([IdReceta])
REFERENCES [dbo].[Receta] ([IdReceta])
GO
ALTER TABLE [dbo].[Ingredientes-Receta] CHECK CONSTRAINT [FK_Ingredientes-Receta_Receta]
GO
ALTER TABLE [dbo].[Ingredientes-Receta]  WITH CHECK ADD  CONSTRAINT [FK_Ingredientes-Receta_Unidades] FOREIGN KEY([IdMedida])
REFERENCES [dbo].[Unidades] ([IdMedida])
GO
ALTER TABLE [dbo].[Ingredientes-Receta] CHECK CONSTRAINT [FK_Ingredientes-Receta_Unidades]
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
/****** Object:  StoredProcedure [dbo].[sp_FavoritosRecetas]    Script Date: 21/3/2025 12:03:38 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ObtenerResultados]    Script Date: 21/3/2025 12:03:38 ******/
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
        INNER JOIN Review ON Review.IdReceta = Receta.IdReceta
    WHERE 
        NombreReceta LIKE @Busqueda
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
