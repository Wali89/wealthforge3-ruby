# WealthForge API Client for Ruby

This client seamlessly integrates into your Ruby application to provide an interface to the WealthForge API web service.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wealthforge2-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wealthforge2-ruby


## Configuration

Before you can use this gem, you'll need to configure it with the key and cert, which you'll have after registering with WealthForge. If using with Rails, put this code in the initializer.

```ruby
WealthForge2.configure do |config|
  config.session_id  = '[assigned-session-id]'
  config.environment = 'development'
end
```

## Usage

### Available Calls

#### Investment

```ruby
WealthForge2::Investment.create
WealthForge2::Investment.get
WealthForge2::Investment.cancel_subscription
WealthForge2::Investment.file_upload
```

#### Offering

```ruby
WealthForge2::Offering.create
WealthForge2::Offering.get
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dinosimone/wealthforge2-ruby.


## Tests

All tests can be run by typing `rspec`. Prior to running tests, you'll need to set your secret and client ID.:

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


## Disclaimer

This project and the code therein was not created by and is not supported by WealthForge.


## Author

Dino Simone (dino@simone.is) | dinosimone.com
