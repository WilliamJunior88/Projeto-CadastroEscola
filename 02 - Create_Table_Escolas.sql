USE [EscolasDB]
GO

/****** Object:  Table [dbo].[Escolas]    Script Date: 13/07/2019 17:57:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Escolas](
	[IdEscola] [int] IDENTITY(1,1) NOT NULL,
	[Cnpj] [nvarchar](14) NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
	[Telefone] [nvarchar](12),
	[Logradouro] [nvarchar](100) NOT NULL,
	[Numero] [int] NOT NULL,
	[Complemento] [varchar](100),
	[Cidade] [nvarchar](60) NOT NULL,
	[Estado] [nvarchar](60) NOT NULL,
	[Email] [nvarchar](60)
 CONSTRAINT [PK_Escolas] PRIMARY KEY CLUSTERED 
(
	[IdEscola] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO




