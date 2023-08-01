# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


sudo su - postgres
createuser -s -r rmc3408
sudo service postgresql start
sudo service postgresql status
https://dev.to/sfpear/install-and-use-postgres-in-wsl-423d

postgres://rmc3408:1507@localhost:5432/mysite



```
$ sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
 
$ wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
 
$ sudo apt-get update
 
$ sudo apt-get -y install postgresql postgresql-contrib
 
$ psql --version
psql (PostgreSQL) 15.2 (Ubuntu 15.2-1.pgdg22.04+1)
 
$ sudo service postgresql status
15/main (port 5432): down
 
$ sudo service postgresql start
 * Starting PostgreSQL 15 database server
```