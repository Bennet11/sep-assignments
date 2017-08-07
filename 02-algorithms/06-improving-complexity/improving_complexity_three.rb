def poorly_written_ruby_three(*arrays)
  combined_array = []
  arrays.each do |array|
   combined_array.insert(array.value)
  end

  while combined_array.length > 0
    lowest_value = combined_array[0]
    combined_array.each do |value|
      if value < lowest_value
        lowest_value = value
      end
    end
    combined_array
  end
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

  # Return the sorted array
