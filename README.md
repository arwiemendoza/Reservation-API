# Reservation API

This is a Rails API application for managing reservations and guests. It uses PostgreSQL as the database.
## Prerequisites

Before you begin, ensure you have the following installed on your system:

 - *Ruby 3.3.0* : The application is built using Ruby. Check your Ruby version with:
    ```
    ruby -v
    ```
    > If you need to install or switch to Ruby 3.3.0, use a version manager like [rbenv](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-macos) or [RVM](https://rvm.io/).

 - *Rails 7.1.5* : The application uses Rails. Check your Rails version with:
    ```
    rails -v
    ```

    If you need to install Rails 7.1.5, run:
    ```
    gem install rails -v 7.1.5
    ```
    PostgreSQL: The application uses PostgreSQL as the database. Check if PostgreSQL is installed with:
    ```
    psql --version
    ```
    If not installed, follow the instructions for your operating system:

 - [Install PostgreSQL on macOS](https://www.devart.com/dbforge/postgresql/how-to-install-postgresql-on-macos/)
 - [Install PostgreSQL on Linux (Ubuntu)](https://www.digitalocean.com/community/tutorials/how-to-install-postgresql-on-ubuntu-22-04-quickstart)

## Installation

Follow these steps to set up the application on your local machine.
### 1. Clone the Repository

Clone the repository to your local machine:
```
git@github.com:arwiemendoza/Reservation-API.git
cd reservation-api
```

### 2. Install Dependencies

Install the required Ruby gems:
```
bundle install
```

### 3. Set Up the Database
Create the PostgreSQL User

If you haven't already, create a PostgreSQL user with the same username as your system user (or the one specified in config/database.yml):
```
sudo -u postgres createuser -s $(whoami)
```
Alternatively, you can create a new user:
```
sudo -u postgres createuser -s your_username
```
Create the development and test databases:
```
rails db:create
```
Run Migrations

Run the database migrations to set up the schema:
```
rails db:migrate
```

### 4. Configure Environment Variables

Create a .env file in the root directory and add the necessary variables:
```
DATABASE_USERNAME=your_username
DATABASE_PASSWORD=your_password
DATABASE_HOST=your_host
```

### 5. Start the Server

Start the Rails server:
```
rails server
```

Running Tests

To run the test suite, use the following command:
```
bundle exec rspec
```
> This will execute all the RSpec tests in the spec directory.
