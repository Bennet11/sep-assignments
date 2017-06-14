require_relative 'linked_list'

class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @max_load_factor = 0.7
    @size = size
    @lists = Array.new(@size)
  end

  def []=(key, value)

  end

  def [](key)
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Calculate the current load factor
  def load_factor
  end

  # Simple method to return the number of items in the hash
  def size
    @lists.length
  end

  # Resize the hash
  def resize
    old_list = @list.compact
    @size = @size * 2
    @lists = Array.new(@size)

    old_list.each do |list|
      i = index(key, @size)
      @lists[i] = list
    end
  end
end
