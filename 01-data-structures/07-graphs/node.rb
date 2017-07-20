class Node
  attr_accessor :name, :film, :film_actor_hash

  def initialize(name)
    @name = name
    @film = film
    @film_actor_hash = Hash.new()
  end

  def set_films(film)
    films.each do |key, value|
      puts "#{key}: #{value}"
    end
    film.cast.push(self)
  end
end
