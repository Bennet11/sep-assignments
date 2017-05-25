class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
    @head = @queue[0]
    @tail = @queue[0]
    @tailNum = -1
  end

  def enqueue(element)
    @queue[tailNum] = element
    @head = @queue[0]
    @tail = @queue[tailNum]
    @tailCount += 1
  end

  def dequeue
    temp = @head
    @head = @queue[0]
    @queue[tailNum] = nil
    @tailNum -= 1

    return temp
  end

  def empty?
    if @head == nil
      return true
    else
      return false
    end
  end
end
