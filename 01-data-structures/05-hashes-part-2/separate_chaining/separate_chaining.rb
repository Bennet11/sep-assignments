require_relative 'linked_list'

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

    if @lists[i].nil?
      list = LinkedList.new
    else
      list = @lists[i]
    end

    list.add_to_tail(node)
    @lists[i] = list
    @entry_count += 1

    if load_factor.to_f > @max_load_factor.to_f
      resize
    end
  end

  def [](key)
    i = index(key, @size)
    list = @lists[i]
    if list != nil
      currentList = list.head
      while currentList != nil
        if currentList.key == key
          return currentList.value
        end
          currentList = currentList.next
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
      curr = list.head
      i = index(curr.key, @size)

      while curr != nil
        list = LinkedList.new
        list.add_to_tail(curr)
        @lists[i] = list
        curr = curr.next
      end
    end
  end

  def print
    for i in 0..size-1
      if @lists[i] != nil
        puts "#{@lists[i]}"
      end
    end
  end
end
