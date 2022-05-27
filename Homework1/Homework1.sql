USE [master]
GO

DROP DATABASE IF EXISTS [HOMEWORK1]
GO

CREATE DATABASE [HOMEWORK1]
GO

USE [HOMEWORK1]
GO

DROP TABLE IF EXISTS [Students]
DROP TABLE IF EXISTS [Teachers]
DROP TABLE IF EXISTS [Grades]
DROP TABLE IF EXISTS [Courses]
DROP TABLE IF EXISTS [AchievementTypes]
DROP TABLE IF EXISTS [GradeDetails]
GO

CREATE TABLE [Students](
[Id] int IDENTITY(1,1) NOT NULL,
[FirstName] nvarchar(100) NOT NULL,
[LastName] nvarchar(100) NOT NULL,
[DateOfBirth] date NULL,
[EnrolledDate] date NULL,
[Gender] bit NULL,
[NationalIdNumber] bigint NULL,
[StudentCardNumber] bigint NULL
)

CREATE TABLE [Teachers](
[Id] int IDENTITY(1,1) NOT NULL,
[FirstName] nvarchar(100) NOT NULL,
[LastName] nvarchar(100) NOT NULL,
[DateOfBirth] date NULL,
[AcademicRank] nvarchar(100) NULL,
[HireDate] date NULL
)

CREATE TABLE [Grades](
[Id] int IDENTITY(1,1) NOT NULL,
[StudentId] int NOT NULL,
[CourseId] int NOT NULL,
[TeacherId] int NOT NULL,
[Grade] smallint  NULL,
[Comment] nvarchar(1000) NULL,
[CreatedDate] date NULL
)

CREATE TABLE [Courses](
[Id] int IDENTITY(1,1) NOT NULL,
[Name] nvarchar(100) NOT NULL,
[Credit] nvarchar(100) NULL,
[AcademicYear] nvarchar(max) NULL,
[Semestar] nvarchar(100) NULL
)

CREATE TABLE [GradeDetails](
[Id] int IDENTITY(1,1) NOT NULL,
[GradeId] int NOT NULL,
[AchivmentTypeId] int NOT NULL,
[AchievementPoints] bigint NOT NULL,
[AchievementMaxPoints] bigint NOT NULL,
[AchievementDate] date NULL
)

CREATE TABLE [AchievementTypes](
[Id] int IDENTITY(1,1) NOT NULL,
[Name] nvarchar(100) NOT NULL,
[Description] nvarchar(max) NULL,
[ParticipationRate] nvarchar(max) NULL
)
GO