require_relative 'node'

class Film
  attr_accessor :name, :cast, :movie

  def initialize(name)
    @name = name
    @cast = Array.new
  end
end
