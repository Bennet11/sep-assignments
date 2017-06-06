class HashClass

  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
    item = HashItem.new(key, value)
    i = index(key, value)
    if @items[i] == nil
      @items[i] = HashItem.new(key, value)
    elsif @items[i].key == item.key && @items[i].value == item.value
      self.resize
    end

  end


  def [](key)
  end

  def resize
    old_items = @items.compact
    @items = Array.new(size * 2)
    old_items.each do |item|
      self[item.key] = item.value
    end
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key % size
  end

  # Simple method to return the number of items in the hash
  def size
    @items.length
  end

end
