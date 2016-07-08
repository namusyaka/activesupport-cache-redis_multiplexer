# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activesupport/cache/redis_multiplexer'

Gem::Specification.new do |spec|
  spec.name          = "activesupport-cache-redis_multiplexer"
  spec.version       = ActiveSupport::Cache::RedisMultiplexer::VERSION
  spec.authors       = ["namusyaka"]
  spec.email         = ["namusyaka@gmail.com"]

  spec.summary       = %q{Handling redis-servers both Primary and Read-Replica in your Rails application}
  spec.description   = %q{RedisMultiplexer enables to handle redis-servers both primary and read-replica, in your Rails application.}
  spec.homepage      = "https://github.com/namusyaka/activesupport-cache-redis_multiplexer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activesupport'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
