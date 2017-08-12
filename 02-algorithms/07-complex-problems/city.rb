class City
  attr_accessor :name, :visited, :neighbors, :distance

  def initialize(name, distance, neighbors)
    @name = name
    @distance = distance
    @visited = false
    @neighbors = nil
  end
end
