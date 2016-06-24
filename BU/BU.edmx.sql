
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/24/2016 13:47:37
-- Generated from EDMX file: C:\VS Projects\PIT4Casus\PIT4Casus\BU\BU.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MovieDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_RegisseurFilms]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FilmsSet] DROP CONSTRAINT [FK_RegisseurFilms];
GO
IF OBJECT_ID(N'[dbo].[FK_ActeurFilms_Acteur]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActeurFilms] DROP CONSTRAINT [FK_ActeurFilms_Acteur];
GO
IF OBJECT_ID(N'[dbo].[FK_ActeurFilms_Films]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActeurFilms] DROP CONSTRAINT [FK_ActeurFilms_Films];
GO
IF OBJECT_ID(N'[dbo].[FK_RolActeur]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActeurSet] DROP CONSTRAINT [FK_RolActeur];
GO
IF OBJECT_ID(N'[dbo].[FK_GebruikersReview_Gebruikers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GebruikersReview] DROP CONSTRAINT [FK_GebruikersReview_Gebruikers];
GO
IF OBJECT_ID(N'[dbo].[FK_GebruikersReview_Review]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GebruikersReview] DROP CONSTRAINT [FK_GebruikersReview_Review];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FilmsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FilmsSet];
GO
IF OBJECT_ID(N'[dbo].[GebruikersSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GebruikersSet];
GO
IF OBJECT_ID(N'[dbo].[RegisseurSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RegisseurSet];
GO
IF OBJECT_ID(N'[dbo].[ActeurSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActeurSet];
GO
IF OBJECT_ID(N'[dbo].[ReviewSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReviewSet];
GO
IF OBJECT_ID(N'[dbo].[RolSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RolSet];
GO
IF OBJECT_ID(N'[dbo].[ActeurFilms]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActeurFilms];
GO
IF OBJECT_ID(N'[dbo].[GebruikersReview]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GebruikersReview];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'FilmSet'
CREATE TABLE [dbo].[FilmSet] (
    [FilmId] int IDENTITY(1,1) NOT NULL,
    [IMDBNummer] int  NOT NULL,
    [Naam] nvarchar(max)  NOT NULL,
    [AndereNaam] nvarchar(max)  NOT NULL,
    [Versie] nvarchar(max)  NOT NULL,
    [AantalDisks] int  NOT NULL,
    [Jaar] datetime  NOT NULL,
    [Land] nvarchar(max)  NOT NULL,
    [Speelduur] int  NOT NULL,
    [Kijkwijzer] nvarchar(max)  NOT NULL,
    [Gezien] bit  NOT NULL,
    [Wenslijst] bit  NOT NULL,
    [InBezit] bit  NOT NULL,
    [Kleur] bit  NOT NULL,
    [ZW] bit  NOT NULL,
    [KleurZW] bit  NOT NULL,
    [ToegevoegdDate] datetime  NOT NULL,
    [Serie] bit  NOT NULL,
    [DrieD] bit  NOT NULL,
    [Verhaal] nvarchar(max)  NOT NULL,
    [IMDBRate] int  NOT NULL,
    [PersRate] int  NOT NULL,
    [Afbeelding] nvarchar(max)  NOT NULL,
    [Taalnaam] nvarchar(max)  NOT NULL,
    [GenreNaam] nvarchar(max)  NOT NULL,
    [RegisseurRegID] int  NOT NULL
);
GO

-- Creating table 'GebruikerSet'
CREATE TABLE [dbo].[GebruikerSet] (
    [GebruikerID] int IDENTITY(1,1) NOT NULL,
    [Username] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RegisseurSet'
CREATE TABLE [dbo].[RegisseurSet] (
    [RegID] int IDENTITY(1,1) NOT NULL,
    [Naam] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ActeurSet'
CREATE TABLE [dbo].[ActeurSet] (
    [ActeurID] int IDENTITY(1,1) NOT NULL,
    [Naam] nvarchar(max)  NOT NULL,
    [Bio] nvarchar(max)  NOT NULL,
    [GebDate] datetime  NOT NULL,
    [GebPlaats] nvarchar(max)  NOT NULL,
    [Filmography] nvarchar(max)  NOT NULL,
    [RolRolID] int  NOT NULL
);
GO

-- Creating table 'ReviewSet'
CREATE TABLE [dbo].[ReviewSet] (
    [ReviewID] int IDENTITY(1,1) NOT NULL,
    [FilmID] int  NOT NULL,
    [Recensie] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RolSet'
CREATE TABLE [dbo].[RolSet] (
    [RolID] int IDENTITY(1,1) NOT NULL,
    [RolNaam] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ActeurFilms'
CREATE TABLE [dbo].[ActeurFilms] (
    [Acteur_ActeurID] int  NOT NULL,
    [Films_FilmId] int  NOT NULL
);
GO

-- Creating table 'GebruikersReview'
CREATE TABLE [dbo].[GebruikersReview] (
    [Gebruikers_GebruikerID] int  NOT NULL,
    [Review_ReviewID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [FilmId] in table 'FilmSet'
ALTER TABLE [dbo].[FilmSet]
ADD CONSTRAINT [PK_FilmSet]
    PRIMARY KEY CLUSTERED ([FilmId] ASC);
GO

-- Creating primary key on [GebruikerID] in table 'GebruikerSet'
ALTER TABLE [dbo].[GebruikerSet]
ADD CONSTRAINT [PK_GebruikerSet]
    PRIMARY KEY CLUSTERED ([GebruikerID] ASC);
GO

-- Creating primary key on [RegID] in table 'RegisseurSet'
ALTER TABLE [dbo].[RegisseurSet]
ADD CONSTRAINT [PK_RegisseurSet]
    PRIMARY KEY CLUSTERED ([RegID] ASC);
GO

-- Creating primary key on [ActeurID] in table 'ActeurSet'
ALTER TABLE [dbo].[ActeurSet]
ADD CONSTRAINT [PK_ActeurSet]
    PRIMARY KEY CLUSTERED ([ActeurID] ASC);
GO

-- Creating primary key on [ReviewID] in table 'ReviewSet'
ALTER TABLE [dbo].[ReviewSet]
ADD CONSTRAINT [PK_ReviewSet]
    PRIMARY KEY CLUSTERED ([ReviewID] ASC);
GO

-- Creating primary key on [RolID] in table 'RolSet'
ALTER TABLE [dbo].[RolSet]
ADD CONSTRAINT [PK_RolSet]
    PRIMARY KEY CLUSTERED ([RolID] ASC);
GO

-- Creating primary key on [Acteur_ActeurID], [Films_FilmId] in table 'ActeurFilms'
ALTER TABLE [dbo].[ActeurFilms]
ADD CONSTRAINT [PK_ActeurFilms]
    PRIMARY KEY CLUSTERED ([Acteur_ActeurID], [Films_FilmId] ASC);
GO

-- Creating primary key on [Gebruikers_GebruikerID], [Review_ReviewID] in table 'GebruikersReview'
ALTER TABLE [dbo].[GebruikersReview]
ADD CONSTRAINT [PK_GebruikersReview]
    PRIMARY KEY CLUSTERED ([Gebruikers_GebruikerID], [Review_ReviewID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [RegisseurRegID] in table 'FilmSet'
ALTER TABLE [dbo].[FilmSet]
ADD CONSTRAINT [FK_RegisseurFilms]
    FOREIGN KEY ([RegisseurRegID])
    REFERENCES [dbo].[RegisseurSet]
        ([RegID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RegisseurFilms'
CREATE INDEX [IX_FK_RegisseurFilms]
ON [dbo].[FilmSet]
    ([RegisseurRegID]);
GO

-- Creating foreign key on [Acteur_ActeurID] in table 'ActeurFilms'
ALTER TABLE [dbo].[ActeurFilms]
ADD CONSTRAINT [FK_ActeurFilms_Acteur]
    FOREIGN KEY ([Acteur_ActeurID])
    REFERENCES [dbo].[ActeurSet]
        ([ActeurID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Films_FilmId] in table 'ActeurFilms'
ALTER TABLE [dbo].[ActeurFilms]
ADD CONSTRAINT [FK_ActeurFilms_Films]
    FOREIGN KEY ([Films_FilmId])
    REFERENCES [dbo].[FilmSet]
        ([FilmId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ActeurFilms_Films'
CREATE INDEX [IX_FK_ActeurFilms_Films]
ON [dbo].[ActeurFilms]
    ([Films_FilmId]);
GO

-- Creating foreign key on [RolRolID] in table 'ActeurSet'
ALTER TABLE [dbo].[ActeurSet]
ADD CONSTRAINT [FK_RolActeur]
    FOREIGN KEY ([RolRolID])
    REFERENCES [dbo].[RolSet]
        ([RolID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RolActeur'
CREATE INDEX [IX_FK_RolActeur]
ON [dbo].[ActeurSet]
    ([RolRolID]);
GO

-- Creating foreign key on [Gebruikers_GebruikerID] in table 'GebruikersReview'
ALTER TABLE [dbo].[GebruikersReview]
ADD CONSTRAINT [FK_GebruikersReview_Gebruikers]
    FOREIGN KEY ([Gebruikers_GebruikerID])
    REFERENCES [dbo].[GebruikerSet]
        ([GebruikerID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Review_ReviewID] in table 'GebruikersReview'
ALTER TABLE [dbo].[GebruikersReview]
ADD CONSTRAINT [FK_GebruikersReview_Review]
    FOREIGN KEY ([Review_ReviewID])
    REFERENCES [dbo].[ReviewSet]
        ([ReviewID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GebruikersReview_Review'
CREATE INDEX [IX_FK_GebruikersReview_Review]
ON [dbo].[GebruikersReview]
    ([Review_ReviewID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------