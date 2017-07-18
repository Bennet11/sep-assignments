require_relative 'node'

class Film
  attr_accessor :name, :cast, :movie

  def initialize(name)
    @name = name
    @cast = name_array
    @movie = film_array
  end
end
