# RailsReset [![Build Status](https://secure.travis-ci.org/42rockers/rails_reset.png?branch=master)](http://travis-ci.org/42rockers/rails_reset)

Reset your development and test environment with one simple rake task.

## Installation

Add this line to your application's Gemfile:

    gem 'rails_reset', :group => [:development, :test]

And then execute:

    $ bundle

## Usage

Instead of doing:

    $ rake db:migrate:reset db:seed db:test:prepare sunspot:reindex

You can do:

    $ rake rails:reset

Note: It will only reindex solr if you use sunspot

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
