# docker-compose - Rails 6.0 e Postgres
Docker compose com rails e postgres

## Clone this
Open your app directory in terminal

Clone this repositore in your directory

```$ git clone https://github.com/igorcb/docker-compose-rails-6-postgres.git .```

## Build Dockerfile
```$ docker-compose build```

## Create rails app
```$ docker-compose run web rails new . --force --database=postgresql```


## Configure your database
Fisrt give write permition all application

```$ sudo chown -R $USER:$USER .```

Now update the database config/database.yml

```
default: &default
  adapter: postgresql
  encoding: unicode
  host: postgres
  username: postgres
  password: mypassword
```

## Create the databases
*first off your application*

```$ docker-compose down```

```$ docker-compose run web rails db:create```

## Up your application
```$ docker-compose up -d```

and view in your browser in http://localhost:3000/

