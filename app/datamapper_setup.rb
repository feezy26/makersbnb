require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-validations'

require_relative 'models/space'
require_relative 'models/booking_request'
require_relative 'models/host'

# DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/makersbnb_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
