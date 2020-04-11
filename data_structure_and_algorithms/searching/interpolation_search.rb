# ruby code for interpolation search x in array[]
# If x is present then return its location,
# otherwise return -1

def interpolation_search(target, array)
  length = array.length
  high = length - 1
  low = 0

  while target.between?(array[low], array[high])
    pos = low + (target - array[low]) * (high - low) / (array[high] - array[low])
    if array[pos] == target
      return array.index(target)
    elsif array[pos] < target
      low = pos + 1
    else
      high = pos - 1
    end
  end

  return -1
end

array = [10, 12, 13, 16, 18, 19, 20, 21, 22, 23, 24, 33, 35, 42, 47]
target1 = 22

index = interpolation_search(target1, array)

puts "Index of target1(#{target1}) : #{index}"
# => Index of target1(22) : 8

target2 = 26
index = interpolation_search(target2, array)

puts "Index of target2(#{target2}) : #{index}"
# => Index of target2(26) : -1