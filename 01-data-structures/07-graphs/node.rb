class Node
  attr_accessor :actor, :film_actor_hash
  attr_accessor :path_array
  attr_accessor :visited

  def initialize(actor)
    @actor = actor
    @film_actor_hash = Hash.new()
    @path_array = []
    @visited = false

  end
end
