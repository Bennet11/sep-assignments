def recursive_binary_search(array, value)
  if array.include?(value)
    mid = array.length / 2
    if array[mid] == item
      return "#{value} has been found"
    elsif array[mid] > value
      new_array = array[0..mid]
      recursive_binary_search(new_array, value)
    elsif array[mid] < value
      new_array = array[mid..(array.length)]
      recursive_binary_search(new_array, value)
    end
  end
    puts "#{value} not found"
end
