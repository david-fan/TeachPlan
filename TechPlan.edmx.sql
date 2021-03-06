
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 05/04/2013 10:48:48
-- Generated from EDMX file: D:\TeachPlan\TeachPlan\TechPlan.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [TECHPLAN.MDF];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_SubjectHuodong]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActiveSet] DROP CONSTRAINT [FK_SubjectHuodong];
GO
IF OBJECT_ID(N'[dbo].[FK_SubjectFangan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlanSet] DROP CONSTRAINT [FK_SubjectFangan];
GO
IF OBJECT_ID(N'[dbo].[FK_GradeFangan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlanSet] DROP CONSTRAINT [FK_GradeFangan];
GO
IF OBJECT_ID(N'[dbo].[FK_TextbookFangan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlanSet] DROP CONSTRAINT [FK_TextbookFangan];
GO
IF OBJECT_ID(N'[dbo].[FK_PlanThink]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ThinkSet] DROP CONSTRAINT [FK_PlanThink];
GO
IF OBJECT_ID(N'[dbo].[FK_PlanReady]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReadySet] DROP CONSTRAINT [FK_PlanReady];
GO
IF OBJECT_ID(N'[dbo].[FK_PlanJudge]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JudgeSet] DROP CONSTRAINT [FK_PlanJudge];
GO
IF OBJECT_ID(N'[dbo].[FK_PointMethod]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MethodSet] DROP CONSTRAINT [FK_PointMethod];
GO
IF OBJECT_ID(N'[dbo].[FK_PlanPoint]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PointSet] DROP CONSTRAINT [FK_PlanPoint];
GO
IF OBJECT_ID(N'[dbo].[FK_PlanCharacter]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CharacterSet] DROP CONSTRAINT [FK_PlanCharacter];
GO
IF OBJECT_ID(N'[dbo].[FK_PlanTarget]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TargetSet] DROP CONSTRAINT [FK_PlanTarget];
GO
IF OBJECT_ID(N'[dbo].[FK_PlanActive]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActiveSet] DROP CONSTRAINT [FK_PlanActive];
GO
IF OBJECT_ID(N'[dbo].[FK_ActiveActive]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ActiveSet] DROP CONSTRAINT [FK_ActiveActive];
GO
IF OBJECT_ID(N'[dbo].[FK_UserInfoPlan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlanSet] DROP CONSTRAINT [FK_UserInfoPlan];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[PlanSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PlanSet];
GO
IF OBJECT_ID(N'[dbo].[ThinkSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ThinkSet];
GO
IF OBJECT_ID(N'[dbo].[JudgeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JudgeSet];
GO
IF OBJECT_ID(N'[dbo].[ReadySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReadySet];
GO
IF OBJECT_ID(N'[dbo].[TargetSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TargetSet];
GO
IF OBJECT_ID(N'[dbo].[ActiveSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActiveSet];
GO
IF OBJECT_ID(N'[dbo].[CharacterSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CharacterSet];
GO
IF OBJECT_ID(N'[dbo].[PointSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PointSet];
GO
IF OBJECT_ID(N'[dbo].[MethodSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MethodSet];
GO
IF OBJECT_ID(N'[dbo].[StepSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[StepSet];
GO
IF OBJECT_ID(N'[dbo].[SubjectSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SubjectSet];
GO
IF OBJECT_ID(N'[dbo].[ContentSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ContentSet];
GO
IF OBJECT_ID(N'[dbo].[PhaseSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PhaseSet];
GO
IF OBJECT_ID(N'[dbo].[UserInfoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserInfoSet];
GO
IF OBJECT_ID(N'[dbo].[GradeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GradeSet];
GO
IF OBJECT_ID(N'[dbo].[TextbookSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TextbookSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'PlanSet'
CREATE TABLE [dbo].[PlanSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Desc] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Author] nvarchar(max)  NOT NULL,
    [Organiser] nvarchar(max)  NOT NULL,
    [Refer] int  NOT NULL,
    [Public] bit  NOT NULL,
    [ClassName] nvarchar(max)  NOT NULL,
    [Grade_Id] int  NOT NULL,
    [Textbook_Id] int  NOT NULL,
    [UserInfo_Id] int  NOT NULL,
    [Subject_Id] int  NOT NULL
);
GO

-- Creating table 'ThinkSet'
CREATE TABLE [dbo].[ThinkSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [Plan_Id] int  NOT NULL
);
GO

-- Creating table 'JudgeSet'
CREATE TABLE [dbo].[JudgeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [Plan_Id] int  NOT NULL
);
GO

-- Creating table 'ReadySet'
CREATE TABLE [dbo].[ReadySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type] int  NOT NULL,
    [Plan_Id] int  NOT NULL
);
GO

-- Creating table 'TargetSet'
CREATE TABLE [dbo].[TargetSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type] int  NOT NULL,
    [Baseic] nvarchar(max)  NOT NULL,
    [Advance] nvarchar(max)  NOT NULL,
    [Plan_Id] int  NOT NULL
);
GO

-- Creating table 'ActiveSet'
CREATE TABLE [dbo].[ActiveSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Plan_Id] int  NOT NULL,
    [Subject_Id] int  NOT NULL,
    [Content_Id] int  NOT NULL,
    [Phase_Id] int  NOT NULL,
    [Form_Id] int  NOT NULL
);
GO

-- Creating table 'CharacterSet'
CREATE TABLE [dbo].[CharacterSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type] int  NOT NULL,
    [Plan_Id] int  NOT NULL
);
GO

-- Creating table 'PointSet'
CREATE TABLE [dbo].[PointSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Type] int  NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [Plan_Id] int  NOT NULL
);
GO

-- Creating table 'MethodSet'
CREATE TABLE [dbo].[MethodSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [Point_Id] int  NOT NULL
);
GO

-- Creating table 'StepSet'
CREATE TABLE [dbo].[StepSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [Active_Id] int  NOT NULL
);
GO

-- Creating table 'SubjectSet'
CREATE TABLE [dbo].[SubjectSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ContentSet'
CREATE TABLE [dbo].[ContentSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PhaseSet'
CREATE TABLE [dbo].[PhaseSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'UserInfoSet'
CREATE TABLE [dbo].[UserInfoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [PWD] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'GradeSet'
CREATE TABLE [dbo].[GradeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TextbookSet'
CREATE TABLE [dbo].[TextbookSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'FormSet'
CREATE TABLE [dbo].[FormSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'PlanSet'
ALTER TABLE [dbo].[PlanSet]
ADD CONSTRAINT [PK_PlanSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ThinkSet'
ALTER TABLE [dbo].[ThinkSet]
ADD CONSTRAINT [PK_ThinkSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'JudgeSet'
ALTER TABLE [dbo].[JudgeSet]
ADD CONSTRAINT [PK_JudgeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ReadySet'
ALTER TABLE [dbo].[ReadySet]
ADD CONSTRAINT [PK_ReadySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TargetSet'
ALTER TABLE [dbo].[TargetSet]
ADD CONSTRAINT [PK_TargetSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ActiveSet'
ALTER TABLE [dbo].[ActiveSet]
ADD CONSTRAINT [PK_ActiveSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CharacterSet'
ALTER TABLE [dbo].[CharacterSet]
ADD CONSTRAINT [PK_CharacterSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PointSet'
ALTER TABLE [dbo].[PointSet]
ADD CONSTRAINT [PK_PointSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MethodSet'
ALTER TABLE [dbo].[MethodSet]
ADD CONSTRAINT [PK_MethodSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'StepSet'
ALTER TABLE [dbo].[StepSet]
ADD CONSTRAINT [PK_StepSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SubjectSet'
ALTER TABLE [dbo].[SubjectSet]
ADD CONSTRAINT [PK_SubjectSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ContentSet'
ALTER TABLE [dbo].[ContentSet]
ADD CONSTRAINT [PK_ContentSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PhaseSet'
ALTER TABLE [dbo].[PhaseSet]
ADD CONSTRAINT [PK_PhaseSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserInfoSet'
ALTER TABLE [dbo].[UserInfoSet]
ADD CONSTRAINT [PK_UserInfoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'GradeSet'
ALTER TABLE [dbo].[GradeSet]
ADD CONSTRAINT [PK_GradeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TextbookSet'
ALTER TABLE [dbo].[TextbookSet]
ADD CONSTRAINT [PK_TextbookSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'FormSet'
ALTER TABLE [dbo].[FormSet]
ADD CONSTRAINT [PK_FormSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Grade_Id] in table 'PlanSet'
ALTER TABLE [dbo].[PlanSet]
ADD CONSTRAINT [FK_GradeFangan]
    FOREIGN KEY ([Grade_Id])
    REFERENCES [dbo].[GradeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GradeFangan'
CREATE INDEX [IX_FK_GradeFangan]
ON [dbo].[PlanSet]
    ([Grade_Id]);
GO

-- Creating foreign key on [Textbook_Id] in table 'PlanSet'
ALTER TABLE [dbo].[PlanSet]
ADD CONSTRAINT [FK_TextbookFangan]
    FOREIGN KEY ([Textbook_Id])
    REFERENCES [dbo].[TextbookSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TextbookFangan'
CREATE INDEX [IX_FK_TextbookFangan]
ON [dbo].[PlanSet]
    ([Textbook_Id]);
GO

-- Creating foreign key on [Plan_Id] in table 'ThinkSet'
ALTER TABLE [dbo].[ThinkSet]
ADD CONSTRAINT [FK_PlanThink]
    FOREIGN KEY ([Plan_Id])
    REFERENCES [dbo].[PlanSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlanThink'
CREATE INDEX [IX_FK_PlanThink]
ON [dbo].[ThinkSet]
    ([Plan_Id]);
GO

-- Creating foreign key on [Plan_Id] in table 'ReadySet'
ALTER TABLE [dbo].[ReadySet]
ADD CONSTRAINT [FK_PlanReady]
    FOREIGN KEY ([Plan_Id])
    REFERENCES [dbo].[PlanSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlanReady'
CREATE INDEX [IX_FK_PlanReady]
ON [dbo].[ReadySet]
    ([Plan_Id]);
GO

-- Creating foreign key on [Plan_Id] in table 'JudgeSet'
ALTER TABLE [dbo].[JudgeSet]
ADD CONSTRAINT [FK_PlanJudge]
    FOREIGN KEY ([Plan_Id])
    REFERENCES [dbo].[PlanSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlanJudge'
CREATE INDEX [IX_FK_PlanJudge]
ON [dbo].[JudgeSet]
    ([Plan_Id]);
GO

-- Creating foreign key on [Point_Id] in table 'MethodSet'
ALTER TABLE [dbo].[MethodSet]
ADD CONSTRAINT [FK_PointMethod]
    FOREIGN KEY ([Point_Id])
    REFERENCES [dbo].[PointSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PointMethod'
CREATE INDEX [IX_FK_PointMethod]
ON [dbo].[MethodSet]
    ([Point_Id]);
GO

-- Creating foreign key on [Plan_Id] in table 'PointSet'
ALTER TABLE [dbo].[PointSet]
ADD CONSTRAINT [FK_PlanPoint]
    FOREIGN KEY ([Plan_Id])
    REFERENCES [dbo].[PlanSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlanPoint'
CREATE INDEX [IX_FK_PlanPoint]
ON [dbo].[PointSet]
    ([Plan_Id]);
GO

-- Creating foreign key on [Plan_Id] in table 'CharacterSet'
ALTER TABLE [dbo].[CharacterSet]
ADD CONSTRAINT [FK_PlanCharacter]
    FOREIGN KEY ([Plan_Id])
    REFERENCES [dbo].[PlanSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlanCharacter'
CREATE INDEX [IX_FK_PlanCharacter]
ON [dbo].[CharacterSet]
    ([Plan_Id]);
GO

-- Creating foreign key on [Plan_Id] in table 'TargetSet'
ALTER TABLE [dbo].[TargetSet]
ADD CONSTRAINT [FK_PlanTarget]
    FOREIGN KEY ([Plan_Id])
    REFERENCES [dbo].[PlanSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlanTarget'
CREATE INDEX [IX_FK_PlanTarget]
ON [dbo].[TargetSet]
    ([Plan_Id]);
GO

-- Creating foreign key on [Plan_Id] in table 'ActiveSet'
ALTER TABLE [dbo].[ActiveSet]
ADD CONSTRAINT [FK_PlanActive]
    FOREIGN KEY ([Plan_Id])
    REFERENCES [dbo].[PlanSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlanActive'
CREATE INDEX [IX_FK_PlanActive]
ON [dbo].[ActiveSet]
    ([Plan_Id]);
GO

-- Creating foreign key on [UserInfo_Id] in table 'PlanSet'
ALTER TABLE [dbo].[PlanSet]
ADD CONSTRAINT [FK_UserInfoPlan]
    FOREIGN KEY ([UserInfo_Id])
    REFERENCES [dbo].[UserInfoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserInfoPlan'
CREATE INDEX [IX_FK_UserInfoPlan]
ON [dbo].[PlanSet]
    ([UserInfo_Id]);
GO

-- Creating foreign key on [Subject_Id] in table 'PlanSet'
ALTER TABLE [dbo].[PlanSet]
ADD CONSTRAINT [FK_SubjectPlan]
    FOREIGN KEY ([Subject_Id])
    REFERENCES [dbo].[SubjectSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubjectPlan'
CREATE INDEX [IX_FK_SubjectPlan]
ON [dbo].[PlanSet]
    ([Subject_Id]);
GO

-- Creating foreign key on [Subject_Id] in table 'ActiveSet'
ALTER TABLE [dbo].[ActiveSet]
ADD CONSTRAINT [FK_SubjectActive]
    FOREIGN KEY ([Subject_Id])
    REFERENCES [dbo].[SubjectSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubjectActive'
CREATE INDEX [IX_FK_SubjectActive]
ON [dbo].[ActiveSet]
    ([Subject_Id]);
GO

-- Creating foreign key on [Active_Id] in table 'StepSet'
ALTER TABLE [dbo].[StepSet]
ADD CONSTRAINT [FK_ActiveStep]
    FOREIGN KEY ([Active_Id])
    REFERENCES [dbo].[ActiveSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ActiveStep'
CREATE INDEX [IX_FK_ActiveStep]
ON [dbo].[StepSet]
    ([Active_Id]);
GO

-- Creating foreign key on [Content_Id] in table 'ActiveSet'
ALTER TABLE [dbo].[ActiveSet]
ADD CONSTRAINT [FK_ContentActive]
    FOREIGN KEY ([Content_Id])
    REFERENCES [dbo].[ContentSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ContentActive'
CREATE INDEX [IX_FK_ContentActive]
ON [dbo].[ActiveSet]
    ([Content_Id]);
GO

-- Creating foreign key on [Phase_Id] in table 'ActiveSet'
ALTER TABLE [dbo].[ActiveSet]
ADD CONSTRAINT [FK_PhaseActive]
    FOREIGN KEY ([Phase_Id])
    REFERENCES [dbo].[PhaseSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PhaseActive'
CREATE INDEX [IX_FK_PhaseActive]
ON [dbo].[ActiveSet]
    ([Phase_Id]);
GO

-- Creating foreign key on [Form_Id] in table 'ActiveSet'
ALTER TABLE [dbo].[ActiveSet]
ADD CONSTRAINT [FK_FormActive]
    FOREIGN KEY ([Form_Id])
    REFERENCES [dbo].[FormSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FormActive'
CREATE INDEX [IX_FK_FormActive]
ON [dbo].[ActiveSet]
    ([Form_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------