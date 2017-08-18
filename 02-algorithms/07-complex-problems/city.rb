class City
  attr_accessor :name, :visited, :neighbors

  def initialize(name)
    @name = name
    @visited = false
  end

  def add_neighbors(neighbors)
    @neighbors = neighbors
  end
end
