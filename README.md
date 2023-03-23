# WealthForge API Client for Ruby

This client seamlessly integrates into your Ruby application to provide an interface to the WealthForge API web service.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wealthforge3-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wealthforge3-ruby


## Configuration

Before you can use this gem, you'll need to configure it with the key and cert, which you'll have after registering with WealthForge. If using with Rails, put this code in the initializer.

```ruby
WealthForge3.configure do |config|
  config.session_id  = '[assigned-session-id]'
  config.environment = 'development'
end
```

## Usage

### Available Calls

#### Investment

```ruby
WealthForge3::Investment.create
WealthForge3::Investment.get
WealthForge3::Investment.cancel_subscription
WealthForge3::Investment.file_upload
```

#### Offering

```ruby
WealthForge3::Offering.create
WealthForge3::Offering.get
```

## Tests

All tests can be run by typing `rspec`. Prior to running tests, you'll need to set your secret and client ID.:

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


## Disclaimer

This project and the code therein was not created by and is not supported by WealthForge.


