require 'active_support/cache'
require 'forwardable'

module ActiveSupport::Cache
  class RedisMultiplexer < Store
    VERSION = "0.1.2"

    extend Forwardable

    # Delegates WRITE actions into primary redis instance.
     def_delegators :@primary, :write, :delete_matched, :fetch_multi, :increment, :decrement,
       :expire, :clear, :write_entry, :delete_entry

     # Delegates READ actions into read-replica redis instance.
     def_delegators :@read_replica, :read_multi, :exist?, :stats,
       :read_entry, :key_matcher, :raise_errors?

    # Constructs an instance of RedisMultiplexer.
    # @param [ActiveSupport::Cache::RedisStore] primary
    # @param [ActiveSupport::Cache::RedisStore, NilClass] read_replica
    # @return [Redis::Multiplexer]
    def initialize(primary: , read_replica: nil, **options)
      super(options)
      @primary = primary
      @read_replica = read_replica || primary
    end

    # Triggers reconnects primary and read-replica.
    # @return [Redis::Client] The client of primary redis instance
    def reconnect
      @read_replica.reconnect
      @primary.reconnect
    end
  end
end
