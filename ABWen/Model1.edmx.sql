
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/24/2025 15:16:46
-- Generated from EDMX file: C:\Users\opilane\source\repos\ABWen\ABWen\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [opilaneMudel];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ryhmopilane]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[opilaneSet] DROP CONSTRAINT [FK_ryhmopilane];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[opilaneSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[opilaneSet];
GO
IF OBJECT_ID(N'[dbo].[ryhmSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ryhmSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'opilaneSet'
CREATE TABLE [dbo].[opilaneSet] (
    [opilaneId] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [perenimi] nvarchar(max)  NOT NULL,
    [syniaeg] time  NOT NULL,
    [ryhm_ryhmId] int  NOT NULL
);
GO

-- Creating table 'ryhmSet'
CREATE TABLE [dbo].[ryhmSet] (
    [ryhmId] int IDENTITY(1,1) NOT NULL,
    [ryhmNimi] nvarchar(max)  NOT NULL,
    [Osakond_osakondId] int  NOT NULL
);
GO

-- Creating table 'OsakondSet'
CREATE TABLE [dbo].[OsakondSet] (
    [osakondId] int IDENTITY(1,1) NOT NULL,
    [osakondNimi] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [opilaneId] in table 'opilaneSet'
ALTER TABLE [dbo].[opilaneSet]
ADD CONSTRAINT [PK_opilaneSet]
    PRIMARY KEY CLUSTERED ([opilaneId] ASC);
GO

-- Creating primary key on [ryhmId] in table 'ryhmSet'
ALTER TABLE [dbo].[ryhmSet]
ADD CONSTRAINT [PK_ryhmSet]
    PRIMARY KEY CLUSTERED ([ryhmId] ASC);
GO

-- Creating primary key on [osakondId] in table 'OsakondSet'
ALTER TABLE [dbo].[OsakondSet]
ADD CONSTRAINT [PK_OsakondSet]
    PRIMARY KEY CLUSTERED ([osakondId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ryhm_ryhmId] in table 'opilaneSet'
ALTER TABLE [dbo].[opilaneSet]
ADD CONSTRAINT [FK_ryhmopilane]
    FOREIGN KEY ([ryhm_ryhmId])
    REFERENCES [dbo].[ryhmSet]
        ([ryhmId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ryhmopilane'
CREATE INDEX [IX_FK_ryhmopilane]
ON [dbo].[opilaneSet]
    ([ryhm_ryhmId]);
GO

-- Creating foreign key on [Osakond_osakondId] in table 'ryhmSet'
ALTER TABLE [dbo].[ryhmSet]
ADD CONSTRAINT [FK_Osakondryhm]
    FOREIGN KEY ([Osakond_osakondId])
    REFERENCES [dbo].[OsakondSet]
        ([osakondId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Osakondryhm'
CREATE INDEX [IX_FK_Osakondryhm]
ON [dbo].[ryhmSet]
    ([Osakond_osakondId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------