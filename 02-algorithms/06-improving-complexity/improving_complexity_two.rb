def poorly_written_ruby(*arrays)
  combined_array = []
  arrays.each do |array|
   combined_array.insert(array.value)
  end

  def merge_sort(combined_array)
    if combined_array.length <= 1
      combined_array
    else
      mid = (combined_array.length / 2).floor
      left = merge_sort(combined_array[0..mid - 1])
      right = merge_sort(mid..combined_array.length)
      merge(left, right)
    end
  end

  def merge(left, right)
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left.first < right.first
      [left.first] + merge(left[1..left.length], right)
    else
      [right.first] + merge(left, right[1..right.length])
    end
  end
  combined_array
end

  # for val in combined_array
  #  i = 0
  #  while i < sorted_array.length
  #    if val <= sorted_array[i]
  #      sorted_array.insert(i, val)
  #      break
  #    elsif i == sorted_array.length - 1
  #      sorted_array << val
  #      break
  #    end
  #    i+=1
  #  end
  # end
  #
  # # Return the sorted array
  # sorted_array
