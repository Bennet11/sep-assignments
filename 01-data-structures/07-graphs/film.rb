require_relative 'node'

class Film
  attr_accessor :name, :cast

  def initialize(name, cast)
    @name = name
    @cast = cast
    set_film_actor_hash(cast)
  end

  def set_film_actor_hash(cast)
    cast.each do |actor|
      other_cast = @cast.clone
      other_cast.delete(actor)
      actor.film_actor_hash[@name] = other_cast
    end
  end
end
