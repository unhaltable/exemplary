exemplary
=========

Document upload and annotation.

[![Code Climate](https://codeclimate.com/github/unhaltable/exemplary/badges/gpa.svg)](https://codeclimate.com/github/unhaltable/exemplary)
[![Test Coverage](https://codeclimate.com/github/unhaltable/exemplary/badges/coverage.svg)](https://codeclimate.com/github/unhaltable/exemplary)

### Overview

TODO

### Development

Dependencies:

- Ruby 2.2.0 ([rbenv][] recommended)
- Bundler: `gem install bundler`

1. Install the bundle:

    ```shell
    cd mylivenotes/
    bundle install
    ```

2. Set up PostgreSQL:

    - On OS X, [Postgres.app](http://postgresapp.com/) is recommended.
    - For other platforms, see [PostgreSQL downloads](http://www.postgresql.org/download/)

    - Set `$DATABASE_URL` in your environment:

        ```shell
        export DATABASE_URL="postgres://localhost/mylivenotes_development"
        ```

        (Tip: use [autoenv](https://github.com/kennethreitz/autoenv) or
        [an IDE](https://www.jetbrains.com/ruby/) to set this automatically)

3. Start the development server:

    ```shell
    bin/rails server
    ```

### Deploying to production

Add the [Heroku](https://www.heroku.com/) remote:

    git remote add heroku git@heroku.com:exemplary.git

The site is live at <https://exemplary.io>

[rbenv]: https://github.com/sstephenson/rbenv
