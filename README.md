# Baseball statistics app

This application is build as a Rails5 API application with Angular JS frontend part.
Since this project is quite small, I decided to create a minimal Angular JS structure without separation in into modules, without routing, custom directives etc.

I also used Rails API application to serve static resources, like index.html and app.js.

Rails project has some RSpec specs for routing, controller and requests. 
I decided, that there is no need to write tests for model classes, since there is nothing to test there
(we don't need specific validations or logic in our small project)


* Database initialization
There are a number of migrations to create database schema.
Also I did a small rake task called "prepare_db" that I used to parse provided XML file and populate data into DB.
Please take into account, that it is a one-time task, that shouldn't be used several times.
If you want to use it, please reset database first to ensure that you don't have two identical copies of the same data in DB.
  
Also it should be noted, that I didn't spend any efforts on visual design, so it is just a simple HTML table without any styles etc.
 
 
