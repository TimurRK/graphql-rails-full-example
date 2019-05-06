# Installation
- Make sure you have PostgreSQL installed.
- Clone this repo
- ```bundle install``` to install required dependencies

# Launch

- ```rails db:create db:setup``` to create database, load schema and seed data
- ```rails s``` to start the local server

# Info

Schema is defined in ```/app/graphql```.

Shows an implementation of GraphQL via [graphql-ruby](https://github.com/rmosolgo/graphql-ruby).

GraphiQL IDE is served by [graphiql-rails](https://github.com/rmosolgo/graphiql-rails)

A [graphql-batch](https://github.com/Shopify/graphql-batch) is used to solve n + 1 problems.