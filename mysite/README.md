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

```
$ sudo service postgresql status
$ sudo service postgresql start
```
https://dev.to/sfpear/install-and-use-postgres-in-wsl-423d
https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-database
https://medium.com/coding-blocks/creating-user-database-and-adding-access-on-postgresql-8bfcd2f4a91e