# Activesupport::Cache::RedisMultiplexer

RedisMultiplexer enables to handle redis-servers both primary and read-replica, in your Rails application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activesupport-cache-redis_multiplexer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activesupport-cache-redis_multiplexer

## Usage

```ruby
Rails.application.configure do
  config.cache_store = :redis_multiplexer, {
    primary: ActiveSupport::Cache.lookup_store(:redis_store, url: 'redis://primary_redis'),
    read_replica: ActiveSupport::Cache.lookup_store(:redis_store, url: 'redis://replica_redis')
  }
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/namusyaka/activesupport-cache-redis_multiplexer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

