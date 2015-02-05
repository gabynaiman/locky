# Locky

[![Gem Version](https://badge.fury.io/rb/locky.png)](https://rubygems.org/gems/locky)
[![Build Status](https://travis-ci.org/gabynaiman/locky.png?branch=master)](https://travis-ci.org/gabynaiman/locky)
[![Coverage Status](https://coveralls.io/repos/gabynaiman/locky/badge.png?branch=master)](https://coveralls.io/r/gabynaiman/locky?branch=master)
[![Code Climate](https://codeclimate.com/github/gabynaiman/locky.png)](https://codeclimate.com/github/gabynaiman/locky)
[![Dependency Status](https://gemnasium.com/gabynaiman/locky.png)](https://gemnasium.com/gabynaiman/locky)

Mini locker

## Installation

Add this line to your application's Gemfile:

    gem 'locky'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install locky

## Usage

    locker = Locky.new :name

    locker.lock :process_name do
      ...
    end

## Contributing

1. Fork it ( https://github.com/gabynaiman/locky/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
