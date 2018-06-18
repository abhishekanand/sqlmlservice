USE master;
GO

IF EXISTS(select * from sys.databases where name='r_demos')
DROP DATABASE r_demos;
go

CREATE DATABASE r_demos;
GO 