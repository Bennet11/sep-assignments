def heap_sort(array)
  if array.length <= 1
    return array
  else
    heapify(array)
    ender = (array.length - 1)
    while ender > 0
      array[ender], array[0] = array[0], array[ender]
    ender -= 1
    sift_down(array, 0, ender)
    end
    return array
  end
end

def heapify(array)
  starter = (array.length - 2) / 2
  while starter >= 0
    sift_down(array, starter, array.length - 1)
    starter -= 1
  end
  array
end

def sift_down(array, starter, ender)
  root = starter
  loop do
    child = root * 2 + 1
    break if child > ender
    if child + 1 <= ender and array[child] < array[child + 1]
      child += 1
    end
    if array[root] < array[child]
      array[root], array[child] = array[child], array[root]
      root = child
    else
      break
    end
  end
end


# def heap_sort(array)
#   array.heapify(array)
#   the_end = array.length - 1
#
#   while the_end > 0
#     array[the_end], array[0] = array[0], array[the_end]
#     the_end -= 1
#     array.sift_down(0, the_end)
#   end
#
#   array
# end
#
# def heapify(array)
#   # the_start is the last parent node
#   the_start = (array.length - 2) / 2
#
#   while the_start >= 0
#     array.sift_down(the_start, array.length - 1)
#     the_start -= 1
#   end
#
#   self
# end
#
# def sift_down(array, the_start, the_end)
#   root = the_start
#
#   while root * 2 + 1 <= the_end
#     child = root * 2 + 1
#     swap = root
#
#     if array[swap] < array[child]
#       swap = child
#     end
#
#     if child + 1 <= the_end && array[swap] < array[child + 1]
#       swap = child + 1
#     end
#
#     if swap != root
#       array[root], array[swap] = array[swap], array[root]
#       root = swap
#     else
#       return
#     end
#   end
# end
