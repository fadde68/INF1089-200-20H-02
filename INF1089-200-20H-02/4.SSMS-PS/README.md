# SSMS PowerShell


## :one: Installation

https://docs.microsoft.com/en-us/sql/powershell/download-sql-server-ps-module

Installer le Module

```
PS > Install-Module -Name SqlServer
```

Lister les commandes

```
PS > Get-Module SqlServer -ListAvailable
```


:two: Utiliser SQLPS(https://docs.microsoft.com/en-us/sql/powershell/sql-server-powershell)


```
PS> Invoke-Sqlcmd "SELECT DB_NAME() AS DatabaseName"
```

:pushpin: Creer une base de donnees `TestDB`

```
PS> Invoke-Sqlcmd "CREATE DATABASE TestDB;"
```

https://www.sqlshack.com/connecting-powershell-to-sql-server/

:three: Backup


http://www.mikefal.net/2015/10/13/a-month-of-sql-ps-backups-and-restores/

:pushpin: Avec Docker

https://docs.microsoft.com/en-us/sql/linux/tutorial-restore-backup-in-sql-server-container

## Volumes:

https://github.com/pulla2908/docker-mssql-server-windows-developer-fti
