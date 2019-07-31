IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'brgcommunication')
CREATE LOGIN [brgcommunication] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [brgcommunication] FOR LOGIN [brgcommunication]
GO
