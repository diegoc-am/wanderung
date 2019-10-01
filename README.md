# Wanderung

Wanderung helps you to manage multiple migrations within the same repository

It uses [Sequel](https://github.com/jeremyevans/sequel) internally to manage the migrations.

## Motivation

As part of a project that we were working on, we had to orchestrate multiple databases, whenever these started to grow,
it became troublesome to have to run several migrations for the micro-services to work together properly.

We wanted to have all of our migrations in a single place, run a single command and have them all executed.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wanderung'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wanderung

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/belfazt/wanderung.
