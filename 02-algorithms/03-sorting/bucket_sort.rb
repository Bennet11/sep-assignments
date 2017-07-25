def bucket_sort(array)
  if array.length <= 1
    return array
  else
    mid = (array.length/2).floor
    top = array[(mid + 1)..(array.length)]
    bottom = array[0..mid]
    sorted_b = q_sort(bottom)
    sorted_t = q_sort(top)
    return q_sort(sorted_b + sorted_t)
  end
end

def bucket_sort_two(array)
  if array.length <= 1
    return array
  else
    up_to_fifty = []
    over_fifty = []
    over_one_hundred = []
    array.each do |x|
      if x <= 50
        up_to_fifty.push(x)
      elsif x > 50 && x <= 100
        over_fifty.push(x)
      else
        over_one_hundred.push(x)
      end
    end
    return q_sort(up_to_fifty) + q_sort(over_fifty) +q_sort(over_one_hundred)
  end
end

def q_sort(array)
  if array.length <= 1
    return array
  else
    pivot = array.last
    less = []
    more =[]
    array.pop
    array.each do |x|
      x <= pivot ? less.push(x) : more.push(x)
    end
    return q_sort(less) + [pivot] + q_sort(more)
  end
end
