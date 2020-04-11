# ruby code for linearly search x in array[]
# If x is present theh return its location,
# otherwise return -1

def linear_search(target, array)
  counter = 0
    while counter < array.length
      if array[counter] == target
        return counter
      else
        counter += 1
      end
    end
  return -1
end

array = [1, 4, 6, 13, 43, 53, 135, 355, 454, 6442]
target = 13
index = linear_search(target, array)

puts "Target #{target} index : #{index}"
# => Target 13 index : 3

target = 32
index = linear_search(target, array)

puts "Target #{target} index : #{index}"
# => Target 32 index : -1