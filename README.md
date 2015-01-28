exemplary
=========

Document upload and annotation.

[![Code Climate](https://codeclimate.com/github/unhaltable/exemplary/badges/gpa.svg)](https://codeclimate.com/github/unhaltable/exemplary)
[![Test Coverage](https://codeclimate.com/github/unhaltable/exemplary/badges/coverage.svg)](https://codeclimate.com/github/unhaltable/exemplary)

### Overview

TODO

### Development

You need the following prerequisites:

- Ruby 2.2.0 (I recommend [rbenv](https://github.com/sstephenson/rbenv) for managing ruby versions)

- Bundler:

    gem install bundler

The rest of the dependencies can be installed by running:

    cd exemplary/
    bundle install

Start a local test server by running:

    rails server

### Deploying to production

Add the [Heroku](https://www.heroku.com/) remote:

    git remote add heroku git@heroku.com:exemplary.git

The site is live at <http://exemplary.io>
