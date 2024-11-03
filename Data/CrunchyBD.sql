USE [CrunchyBD]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 03/11/2024 03:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NomreCategoria] [varchar](50) NOT NULL,
	[Foto] [text] NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dificultad]    Script Date: 03/11/2024 03:14:59 ******/
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
/****** Object:  Table [dbo].[Favoritos]    Script Date: 03/11/2024 03:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favoritos](
	[IdUsuario] [int] NULL,
	[IdReceta] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filtro]    Script Date: 03/11/2024 03:14:59 ******/
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
/****** Object:  Table [dbo].[Preferencias]    Script Date: 03/11/2024 03:14:59 ******/
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
/****** Object:  Table [dbo].[RazonesAPP]    Script Date: 03/11/2024 03:14:59 ******/
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
/****** Object:  Table [dbo].[Receta]    Script Date: 03/11/2024 03:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receta](
	[IdReceta] [int] IDENTITY(1,1) NOT NULL,
	[NombreReceta] [varchar](50) NULL,
	[Pasos] [varchar](5000) NULL,
	[Tiempo] [int] NULL,
	[Calificacion] [float] NULL,
	[IdCategoria] [int] NULL,
	[IdDificultad] [int] NULL,
 CONSTRAINT [PK_Receta] PRIMARY KEY CLUSTERED 
(
	[IdReceta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restricciones]    Script Date: 03/11/2024 03:14:59 ******/
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
/****** Object:  Table [dbo].[Review]    Script Date: 03/11/2024 03:14:59 ******/
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
/****** Object:  Table [dbo].[Subcategoria]    Script Date: 03/11/2024 03:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subcategoria](
	[IdSubcategoria] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NULL,
	[NombreSubcategoria] [varchar](50) NULL,
 CONSTRAINT [PK_Subcategoria] PRIMARY KEY CLUSTERED 
(
	[IdSubcategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 03/11/2024 03:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Contraseña] [varchar](100) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Foto] [text] NULL,
	[FotoHeader] [text] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Favoritos]  WITH CHECK ADD  CONSTRAINT [FK_Favoritos_Receta] FOREIGN KEY([IdReceta])
REFERENCES [dbo].[Receta] ([IdReceta])
GO
ALTER TABLE [dbo].[Favoritos] CHECK CONSTRAINT [FK_Favoritos_Receta]
GO
ALTER TABLE [dbo].[Favoritos]  WITH CHECK ADD  CONSTRAINT [FK_Favoritos_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
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
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([IdCategoria])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Categoria]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Dificultad1] FOREIGN KEY([IdDificultad])
REFERENCES [dbo].[Dificultad] ([IdDificultad])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Dificultad1]
GO
ALTER TABLE [dbo].[Receta]  WITH CHECK ADD  CONSTRAINT [FK_Receta_Subcategoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Subcategoria] ([IdSubcategoria])
GO
ALTER TABLE [dbo].[Receta] CHECK CONSTRAINT [FK_Receta_Subcategoria]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Receta] FOREIGN KEY([IdReceta])
REFERENCES [dbo].[Receta] ([IdReceta])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Receta]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Usuario]
GO
ALTER TABLE [dbo].[Subcategoria]  WITH CHECK ADD  CONSTRAINT [FK_Subcategoria_Categoria1] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([IdCategoria])
GO
ALTER TABLE [dbo].[Subcategoria] CHECK CONSTRAINT [FK_Subcategoria_Categoria1]
GO
