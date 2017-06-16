require_relative 'linked_list'
require_relative 'node'

class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @max_load_factor = 0.7
    @size = size
    @entry_count = 0.0
    @lists = Array.new(@size)
  end

  def []=(key, value)
    node = Node.new(key, value)
    i = index(key, @size)

    if @lists[i] == nil
      list = LinkedList.new
    else
      @lists[i] = list
      @lists[i].add_to_tail(node)
    end

    @entry_count += 1
    
    if load_factor >= @max_load_factor
      resize
    end
  end

  def [](key)
    idx = index(key, @size)
    (idx...(idx + @size)).each do |i|

      if i >= @size
        i = i % @size
      end

      node = @nodes[i]
      if key == node.key
        return node.value
      end
    end
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Calculate the current load factor
  def load_factor
    @entry_count / @size
  end

  # Simple method to return the number of items in the hash
  def size
    @lists.length
  end

  # Resize the hash
  def resize
    old_list = @lists.compact
    @size = @size * 2
    @lists = Array.new(@size)

    old_list.each do |list|
      i = index(key, @size)
      @lists[i] = list
    end
  end
end
