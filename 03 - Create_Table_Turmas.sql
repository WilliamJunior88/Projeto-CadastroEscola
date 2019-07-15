USE [EscolasDB]
GO

/****** Object:  Table [dbo].[Turmas]    Script Date: 13/07/2019 17:57:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Turmas](
	[IdTurma] [int] IDENTITY(1,1) NOT NULL,
	[IdEscola] [int] NOT NULL,
	[Codigo] [int] NOT NULL,
	[Descricao] [nvarchar](100),
	[Turno] [nvarchar](15) NOT NULL,
	[Capacidade] [int] NOT NULL
 CONSTRAINT [PX_Turmas] PRIMARY KEY CLUSTERED 
(
	[IdTurma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Turmas]  WITH CHECK ADD  CONSTRAINT [FK_Turmas_Escolas] FOREIGN KEY([IdEscola])
REFERENCES [dbo].[Escolas] ([IdEscola])
GO

ALTER TABLE [dbo].[Turmas] CHECK CONSTRAINT [FK_Turmas_Escolas]
GO


