
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/29/2018 15:09:44
-- Generated from EDMX file: C:\Users\Wesley\Documents\Visual Studio 2017\slnProyectoFinal\CapaDatos\mdlAsistencia.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
use [dbAsistenciaV2];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[tblAsistencia]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblAsistencia];
GO
IF OBJECT_ID(N'[dbo].[tblHora]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblHora];
GO
IF OBJECT_ID(N'[dbo].[tblMateria]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblMateria];
GO
IF OBJECT_ID(N'[dbo].[tblRelaAlumMater]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblRelaAlumMater];
GO
IF OBJECT_ID(N'[dbo].[tblRelaMaesMater]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblRelaMaesMater];
GO
IF OBJECT_ID(N'[dbo].[tblUsuario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tblUsuario];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tblAsistencia'
CREATE TABLE [dbo].[tblAsistencia] (
    [Id_Asistencia] int IDENTITY(1,1) NOT NULL,
    [FechaAsistencia] datetime  NULL,
    [HoraInicioAsistencia] time  NULL,
    [HoraFinAsistencia] time  NULL,
    [MateriaAsistencia] varchar(50)  NULL,
    [NombreEstudianteAsistencia] varchar(50)  NULL,
    [ApellidoEstudianteAsistencia] varchar(50)  NULL,
    [NombreMaestroAsistencia] varchar(50)  NULL,
    [ApellidoMaestreAsistencia] varchar(50)  NULL,
    [Asistencia] int  NULL
);
GO

-- Creating table 'tblHora'
CREATE TABLE [dbo].[tblHora] (
    [Id_Hora] int IDENTITY(1,1) NOT NULL,
    [NombreMaestroHora] varchar(50)  NULL,
    [ApellidoMaestroHora] varchar(50)  NULL,
    [NombreCompletoMaestroHora] varchar(50)  NULL,
    [UsuarioMaestroHora] varchar(50)  NULL,
    [MateriaHora] varchar(50)  NULL,
    [InicioHora] time  NULL,
    [FinHora] time  NULL
);
GO

-- Creating table 'tblMateria'
CREATE TABLE [dbo].[tblMateria] (
    [Id_Materia] int IDENTITY(1,1) NOT NULL,
    [NombreMateria] varchar(50)  NULL,
    [CodigoMateria] varchar(50)  NULL,
    [SalaMateria] varchar(50)  NULL
);
GO

-- Creating table 'tblRelaAlumMater'
CREATE TABLE [dbo].[tblRelaAlumMater] (
    [Id_RAM] int IDENTITY(1,1) NOT NULL,
    [NombreAlumnoRAM] varchar(50)  NULL,
    [ApellidoAlumnoRAM] varchar(50)  NULL,
    [UsuarioAlumnoRAM] varchar(50)  NULL,
    [NombreCompletoRAM] varchar(50)  NULL,
    [MateriaRAM] varchar(50)  NULL,
    [Asistencia] int  NULL
);
GO

-- Creating table 'tblRelaMaesMater'
CREATE TABLE [dbo].[tblRelaMaesMater] (
    [Id_RMM] int IDENTITY(1,1) NOT NULL,
    [NombreMaestroRMM] varchar(50)  NULL,
    [ApellidoMaestroRMM] varchar(50)  NULL,
    [UsuarioMaestroRMM] varchar(50)  NULL,
    [NombreCompletoRMM] varchar(50)  NULL,
    [MateriaRMM] varchar(50)  NULL
);
GO

-- Creating table 'tblUsuario'
CREATE TABLE [dbo].[tblUsuario] (
    [Id_Usuario] int IDENTITY(1,1) NOT NULL,
    [NombreUsuario] varchar(50)  NOT NULL,
    [ApellidoUsuario] varchar(50)  NULL,
    [UsernameUsuario] varchar(50)  NOT NULL,
    [PasswordUsuario] varchar(50)  NOT NULL,
    [TipoUsuario] int  NOT NULL,
    [TituloUsuario] varchar(50)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id_Asistencia] in table 'tblAsistencia'
ALTER TABLE [dbo].[tblAsistencia]
ADD CONSTRAINT [PK_tblAsistencia]
    PRIMARY KEY CLUSTERED ([Id_Asistencia] ASC);
GO

-- Creating primary key on [Id_Hora] in table 'tblHora'
ALTER TABLE [dbo].[tblHora]
ADD CONSTRAINT [PK_tblHora]
    PRIMARY KEY CLUSTERED ([Id_Hora] ASC);
GO

-- Creating primary key on [Id_Materia] in table 'tblMateria'
ALTER TABLE [dbo].[tblMateria]
ADD CONSTRAINT [PK_tblMateria]
    PRIMARY KEY CLUSTERED ([Id_Materia] ASC);
GO

-- Creating primary key on [Id_RAM] in table 'tblRelaAlumMater'
ALTER TABLE [dbo].[tblRelaAlumMater]
ADD CONSTRAINT [PK_tblRelaAlumMater]
    PRIMARY KEY CLUSTERED ([Id_RAM] ASC);
GO

-- Creating primary key on [Id_RMM] in table 'tblRelaMaesMater'
ALTER TABLE [dbo].[tblRelaMaesMater]
ADD CONSTRAINT [PK_tblRelaMaesMater]
    PRIMARY KEY CLUSTERED ([Id_RMM] ASC);
GO

-- Creating primary key on [Id_Usuario] in table 'tblUsuario'
ALTER TABLE [dbo].[tblUsuario]
ADD CONSTRAINT [PK_tblUsuario]
    PRIMARY KEY CLUSTERED ([Id_Usuario] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------