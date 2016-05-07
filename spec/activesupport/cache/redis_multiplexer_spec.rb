require 'spec_helper'

describe Activesupport::Cache::RedisMultiplexer do
  it 'has a version number' do
    expect(Activesupport::Cache::RedisMultiplexer::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
