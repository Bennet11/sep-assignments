def quicksort(array)
  return array if array.length <= 1

  pivot_index = (array.length / 2).to_i
  pivot_value = array[pivot_index]
  array.delete_at(pivot_index)

  lesser = Array.new
  greater = Array.new

  array.each do |x|
    if x <= pivot_value
      lesser.push(x)
    else
      greater.push(x)
    end
  end
  return quicksort(lesser) + [pivot_value] + quicksort(greater)
end


# class Array
#   def quick_sort
#     return [] if empty?
#
#     pivot = delete_at(rand(size))
#     left, right = partition(&pivot.method(:>))
#
#     return left.quick_sort, pivot, *right.quick_sort
#   end
# end
