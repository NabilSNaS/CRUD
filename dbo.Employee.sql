CREATE TABLE [dbo].[Employee]
(
[Employee_Id] [int] NOT NULL,
[Name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Age] [float] NULL,
[Sex] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Joindate] [datetime] NULL,
[Contact] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee] ADD CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([Employee_Id]) ON [PRIMARY]
GO
