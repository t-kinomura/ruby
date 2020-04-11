# ruby code for binary search x in array[]
# If x is present then return lis location,
# otherwise return - 1

def binary_search(target, array)

  length = array.length
  center = length / 2
  first = 0
  last = length - 1

  while first < last
    if array[center] == target
      return array.index(target)
    elsif array[center] > target
      first = center + 1
      center = ( first + last ) / 2
    else
      last = center - 1
      center = ( first + last ) / 2
    end
  end

  return -1
end

array = [1, 4, 6, 13, 43, 53, 135, 355, 454, 6442]
target1 = 13

index = binary_search(target1, array)

puts "Target1 #{target1} index : #{index}"
# => Target 13 index : 3

target2 = 32
index = binary_search(target2, array)

puts "Target2 #{target2} index : #{index}"
# => Target 32 index : -1