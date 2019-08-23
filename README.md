# template Vue php

## Project dependency

- nodejs / npm
- docker-compose
- vuecli3
- mysql
- php7

## Frontend

- vue
- vue-router
- vuetify
- axios
- fontawesome

## Descript

Its a simple template project for vue frontend php7+apache2 backend mysql database in doecker.
**php mysql host** : *mysql*

### Conceptions

Clone and play project for vue php combination.

## Prepare for build

1. **docker-compose.yml**
    open via text editor and edit mysql docker environment (MYSQL_ROOT_PASSWORD, MYSQL_DATABASE,MYSQL_USER,MYSQL_PASSWORD)
2. **dockers/mysql/install.sql**
    open via text editor and create your database or change your backup file
3. **configs/apache2/sites-available/000-default.conf**
    open via text editor and edit (ServerName, ServerAdmin)
4. **htpasswd -D {{your project location}}configs/apache2/password/.htpassword user** (password: 12345678)
5. **htpasswd -c {{your project location}}configs/apache2/password/.htpassword {{new user name}}**

## Build

1. **cd src/frontend/**
2. **chmod +x copy.sh**
3. **npm install**
4. **npm run build**
5. **cd ../../**
6. **docker-compose build**

## Run

- **docker-compose up -d**

## Stop

- **docker-compose down**

### data

- **/data/mysql/db** :
    mysql db location

- **/data/frontend** :
    mounted: *DocumentRoot/assets* is the frontend data storage

- **/data/frontend/secret** :
    mounted: *DocumentRoot/assets/secret/* is the frontend password protected data storage

- **dockers/mysql/install.sql** :
    In build docker this file init database

- **/src/backend** :
    mounted: *DocumentRoot/backend* php backend source code folder is

- **/src/backend/api** :
    mounted: *DocumentRoot/backend/api* password protected folder for backend

## DocumentRoot structure

Fronted folders:

    /assets/
    /assets/secret/
    /backend/
    /backend/api/

### copy.sh

This script copy all item from "/dist" to "/builded" folder. "**npm run build**" command delet distfolder and the docker-compose **not remount automaticli** the new folder
