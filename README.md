# README

This repository is created to learn ruby on rails from [codemy.net](https://www.codemy.net/channels/rails-foundation)

## How to run project

1. go to root of project and run command ```bundle```
2. start posgress SQL
* For mac - install and start postgres following steps
  * Install postgres ```brew install postgresql```
  * Install postgres config (rails need this pg_config to read postgres configuration) ```sudo gem install pg -v '0.20.0'```
  * Start postgres ```pg_ctl -D /usr/local/var/postgres start```

3. create database and schema with command ```rake db:create``` and ```rake db:migrate```
4. start server with command ```rails server```
5. Install and start mail server 
* Tested for mac
  * Install mailwatcher ```sudo gem install mailcatcher```
  * Start mail server ```mailcatcher```

## Useful command
* Start ruby console ```rails console```
* Show routes ```rake routes```
* Unit test [reference](https://github.com/qrush/m)
  * Run unit test ```rake```
  * Run unit test with specific class ```m test/models/user_test.rb```
  * Run unit test with specific unit ```m test/models/user_test.rb:12```
