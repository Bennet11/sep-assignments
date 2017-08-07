def poorly_written_ruby_one(*arrays)
  combined_array = []
  arrays.each do |array|
   combined_array.push(array.value)
  end

  sorted_array = [combined_array.pop]

  for val in combined_array
   i = 0
   while i < sorted_array.length
     if val <= sorted_array[i]
       sorted_array.insert(i, val)
       break
     elsif i == sorted_array.length - 1
       sorted_array.insert(i, val)
       break
     end
     i+=1
   end
  end

  # Return the sorted array
  sorted_array
end
