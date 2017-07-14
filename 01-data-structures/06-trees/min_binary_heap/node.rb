class Node
  attr_accessor :title, :rating, :left, :right, :parent

  def initialize(title, rating)
    @title = title
    @rating = rating
  end

  def children
    [@left, @right].compact
  end
end
