CREATE TABLE [dbo].[tblUsuario] (
    [Id_Usuario]      INT          IDENTITY (1, 1) NOT NULL,
    [NombreUsuario]   VARCHAR (50) NOT NULL,
    [ApellidoUsuario] VARCHAR (50) NULL,
    [UsernameUsuario] VARCHAR (50) NOT NULL,
    [PasswordUsuario] VARCHAR (50) NOT NULL,
    [TipoUsuario]     INT          NOT NULL,
    [TituloUsuario]   VARCHAR (50) NULL,
    CONSTRAINT [PK_tblUsuario] PRIMARY KEY CLUSTERED ([Id_Usuario] ASC)
);

