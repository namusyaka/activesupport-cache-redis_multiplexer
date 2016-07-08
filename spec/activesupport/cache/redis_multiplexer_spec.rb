require 'spec_helper'

describe ActiveSupport::Cache::RedisMultiplexer do
  it 'has a version number' do
    expect(ActiveSupport::Cache::RedisMultiplexer::VERSION).not_to be nil
  end
end
