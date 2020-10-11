USE master

-- full database restore
RESTORE DATABASE backrecTestDB
	FROM DISK = N'E:\SQL Server\Backup\backrecTestDB_FULL.bak' 
	WITH NORECOVERY, REPLACE

-- differential database restore
RESTORE DATABASE backrecTestDB
	FROM DISK = N'E:\SQL Server\Backup\backrecTestDB_DIFFERENTIAL.bak' 
	WITH NORECOVERY

-- Restore logs
-- restore 7 AM log
RESTORE LOG backrecTestDB
	FROM DISK = N'E:\SQL Server\Logs\backrecTestDB_7AM.trn' 
	WITH NORECOVERY

-- restore 8 AM log
RESTORE LOG backrecTestDB
	FROM DISK = N'E:\SQL Server\Logs\backrecTestDB_8AM.trn' 
	WITH NORECOVERY

RESTORE DATABASE backrecTestDB WITH RECOVERY

