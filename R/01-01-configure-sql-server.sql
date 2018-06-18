USE master;
go
-- check if configuration property is set
SELECT name, description, value
FROM sys.configurations 
WHERE name = 'external scripts enabled';

-- if value is 0, reset the configuration to enable
EXEC sp_configure  'external scripts enabled', 1;
RECONFIGURE WITH OVERRIDE;


-- Restart SQL Server Service 


-- check if configuration property is set
SELECT name, description, value
FROM sys.configurations 
WHERE name = 'external scripts enabled';
