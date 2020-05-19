# Articles Web Application

<p align="center">
    <img src="/main.png">
</p>

## Description 

This project is a web application that lets you register the application with your name and publish articles related to the topic you want items. Each article has a title, content, featured image and category. Each category has a name and priority (from 1 to 5), this to be able to choose which category will be shown first or last.

This web application was developed with Bootstrap 4 and is 100% responsive so that it can be viewed from any device.

## Built With

- Ruby v2.7.0
- Ruby on Rails v5.2.4
- Bootstrap 4

## Live Demo

[Live version](https://thawing-tor-70780.herokuapp.com/)


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


## Author

👤 **Juan Pablo Gil**

- [GitHub](https://github.com/JuanPabloGil )
- [@LinkedIn](https://www.linkedin.com/in/juan-pablo-gil-1321a515a/)
- jpablomgil@gmail.com


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!


## Acknowledgments

This project was made with this extra resources and the design was based on this [theme](https://www.behance.net/gallery/14554909/liFEsTlye-Mobile-version):

   1. Social Media [icons](https://www.iconfinder.com/iconsets/picons-social) by Picon.me
 

## 📝 License

TBA
