
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 04/28/2017 16:34:17
-- Generated from EDMX file: c:\users\dingc05\documents\visual studio 2010\Projects\Domain\Domain\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [test];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'NoteInfo'
CREATE TABLE [dbo].[NoteInfo] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [UserInfoID] int  NOT NULL
);
GO

-- Creating table 'UserInfo'
CREATE TABLE [dbo].[UserInfo] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'NoteInfo'
ALTER TABLE [dbo].[NoteInfo]
ADD CONSTRAINT [PK_NoteInfo]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'UserInfo'
ALTER TABLE [dbo].[UserInfo]
ADD CONSTRAINT [PK_UserInfo]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UserInfoID] in table 'NoteInfo'
ALTER TABLE [dbo].[NoteInfo]
ADD CONSTRAINT [FK_NoteInfoUserInfo]
    FOREIGN KEY ([UserInfoID])
    REFERENCES [dbo].[UserInfo]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NoteInfoUserInfo'
CREATE INDEX [IX_FK_NoteInfoUserInfo]
ON [dbo].[NoteInfo]
    ([UserInfoID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------