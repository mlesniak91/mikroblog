require 'lotus/model'
Dir["#{ __dir__ }/demo/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/demo_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/demo_development.sqlite3'
  #    adapter type: :sql, uri: 'postgres://localhost/demo_development'
  #    adapter type: :sql, uri: 'mysql://localhost/demo_development'
  #
  adapter type: :sql, uri: 'postgres://inpeiusoklxbqs:_RyT-oSzgE8Oqfeow5NoF1tzl2@ec2-54-204-35-248.compute-1.amazonaws.com:5432/dcjuat1t30ssa3'

  ##
  # Database mapping
  #
  # Intended for specifying application wide mappings.
  #
  # You can specify mapping file to load with:
  #
  # mapping "#{__dir__}/config/mapping"
  #
  # Alternatively, you can use a block syntax like the following:
  #
  mapping do
    # collection :users do
    #   entity     User
    #   repository UserRepository
    #
    #   attribute :id,   Integer
    #   attribute :name, String
    # end
  end
end.load!
