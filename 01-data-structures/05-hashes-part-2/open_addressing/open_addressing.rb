require_relative 'node'

class OpenAddressing
  def initialize(size)
    @nodes = Array.new(size)
    @size = size
  end

  def []=(key, value)
    node = Node.new(key, value)
    i = index(key, @size)


  end

  def [](key)
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Given an index, find the next open index in @items
  def next_open_index(index)
  end

  # Simple method to return the number of items in the hash
  def size
    @nodes.length
  end

  # Resize the hash
  def resize
    old_nodes = @nodes.compact
    @size = @size * 2
    @nodes = Array.new(@size)

    old_nodes.each do |node|
      i = index(node.key, @size)
      @nodes[i] = node
    end
  end
end
