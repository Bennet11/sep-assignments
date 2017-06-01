require 'benchmark'
require_relative 'node'
require_relative 'linked_list'

MyList = LinkedList.new
MyArray = []

Benchmark.bm do |bm|
  bm.report("Push 10k items to the array") do
    num = 0
    while num < 10000
      MyArray.push(num.to_s)
      num += 1;
    end
  end

  bm.report("Append 10k items to My List") do
    num = 0
    while num < 10000
      MyList.add_to_tail(Node.new(num.to_s))
      num += 1;
    end
  end

  bm.report("5000th element of the array") do
    MyArray[4999]
  end

  bm.report("5000th element of My List") do
    MyList.find_node(4999.to_s)
  end

  bm.report("remove 5000th element of the array") do
    MyArray.delete_at(4999)
  end

  bm.report("remove 5000th item on My List") do
    MyList.delete(MyList.find_node(4999.to_s))
  end
end
