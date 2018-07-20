## To-Do Manager
To-Do Manager is an application that allows users to create self-destructing to-do lists.

## Key features
- Users can create a free account, sign-in, and make to-do lists
- Profile page displays summary of activities and age of to-do lists
- After 7 days, to-do list is automatically deleted

## Installation
- Clone the github repository
- To implement the automatic delete feature locally, install the whenever gem, then utilize the rake task in /lib/todo.rake
- For Heroku, install the scheduler add-on and follows set-up instructions

## Setup and Configuration
Languages and frameworks:
- Ruby 2.5
- Ruby-on-rails 5.1.5
- Bootstrap-SASS

Databases: SQLite (Test, Development) Postgres SQL (production)

Running locally:
- clone the repository

```
$ bundle install
$ rake db:create
$ rake db:migrate
$ rails s
```
navigate to localhost in your web browser

See the live version on [Heroku](https://morning-thicket-71470.herokuapp.com/)
