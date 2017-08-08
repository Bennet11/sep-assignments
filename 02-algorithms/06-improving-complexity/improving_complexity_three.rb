def poorly_written_ruby_three(*arrays)
  combined_array = []
  arrays.each do |array|
   combined_array += array
  end

  def insertion_sort(combined_array)

    sorted_array = [combined_array.delete_at(0)]

    for val in combined_array
      sorted_array_index = 0
      while sorted_array_index < sorted_array.length
        if val <= sorted_array[sorted_array_index]
          sorted_array.insert(sorted_array_index, val)
          break
        elsif sorted_array_index == sorted_array.length - 1
          sorted_array.insert(sorted_array_index + 1, val)
          break
        end
        sorted_array_index += 1
      end
    end
    sorted_array
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
