ENV['RACK_ENV'] = 'test'
require_relative '../datamapper_setup.rb'

class Space

  include DataMapper::Resource

  property :id,             Serial
  property :host,           String
  property :email,          String
  property :name,           String
  property :price,          Integer
  property :description,    String
  #property :from,           Date
  #property :to,             Date

  attr_reader :name, :price, :description, :from, :to, :available, :host

  # def initialize(host, email, name, price, description, from, to)
  #   @host = host
  #   @email = email
  #   @name = name
  #   @price = price
  #   @description = description
  #   @from = from
  #   @to = to
  #   check_availability
  # end

  def check_availability
    date = DateTime.now
    @available = true if date > @from && date < @to
  end

  def available?
    @available
  end

end
