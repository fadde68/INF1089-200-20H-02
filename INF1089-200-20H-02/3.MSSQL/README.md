# MS SQL Server


:one: Creer un répertoire avec comme nom votre :id:

:two: Copier les fichiers se trouvant dans le repretoire `.src` dans votre répertoire

`PS > cp -r .\300098957\* `:id:` `

:three: Dans votre répertoire, construire l'image `Docker`

```
PS > docker build --tag mssql-server-windows-developer-fti .
```

:four: Demarrer le conteneur

```
PS > docker container run --name some-mssql `
                       --env "ACCEPT_EULA=Y" `
                       --env "SA_PASSWORD=Password123" `
                       --publish 1433:1433 --detach `
                       mssql-server-windows-developer-fti
```

:five: Se connecter au conteneur

```
PS > docker container exec --interactive --tty some-mssql powershell
```



:six: Utiliser SQL CMD

```
PS > sqlcmd -U sa -P Password123 -S localhost,1433
1> SELECT name FROM master.sys.databases
2> GO
>> list of DBs
1> QUIT
```

:b: Test

* Install SQL-SERVER Management Studio (SSMS) using `choco` in Admin Level

```
PS > choco install ssms
```

https://github.com/pulla2908/docker-mssql-server-windows-developer-fti


# References

https://hub.docker.com/r/microsoft/mssql-server-windows-express




![image](images/ssms.png)

## On Ubuntu

https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker

:seven: 

```
$ docker run --name some-mssql \
    --env "ACCEPT_EULA=Y" \
    --env "SA_PASSWORD=Password123" \
    --publish 1433:1433 \
    --detach \
    mcr.microsoft.com/mssql/server:2019-GA-ubuntu-16.04
```

:eight: Utiliser SQL CMD

```
$ export PATH=/opt/mssql-tools/bin:$PATH
$ sqlcmd -U sa -P Password123 -S localhost,1433
1> SELECT name FROM master.sys.databases
2> GO
>> list of DBs
1> QUIT
```

