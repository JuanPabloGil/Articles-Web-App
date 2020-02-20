# Articles Web Application

## Built With

- Ruby v2.7.0
- Ruby on Rails v5.2.4

## Live Demo




## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 2.6.3
Rails: 5.2.3
Postgres: >=9.5

### Setup

Instal gems with:

```
bundle install

```

Setup database with:

```
   rails db:create
   rails db:migrate

```


### Usage

Start server with:

```
    rails server

```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rpsec --format documentation

```

> Tests will be added by Microverse students. There are no tests for initial features in order to make sure that students write all tests from scratch.

### Deployment

#### Heroku

  Create a Heroku App

  ```
      $ heroku create

  ```
  Push the changes to the Heroku App

  ```
      $ git push heroku master

  ```

  Make a migration to the Heroku App

  ```
      $ heroku run rails db:migrate

  ```


## Authors

Juan Pablo Gil - [LinkedIn](https://www.linkedin.com/in/juan-pablo-gil-1321a515a/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!


## 📝 License

TBA
