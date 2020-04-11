# ruby code for jump search x in array[]
# If x is present then return lis location,
# otherwise return - 1

def jump_search(target, array)
  length = array.length
  interval = Math.sqrt(length).floor(0)
  prev = 0

  i = 0
  while i <= length / interval + 1
    follow = prev + interval - 1

    if target.between?(array[prev], array[follow])
      counter = prev
      while counter <= array[follow]
        if array[counter] == target
          return counter
        else
          counter += 1
        end
      end
      return -1
    else
      prev = follow + 1
    end

    i += 1
  end

  return -1
end

array = [1, 4, 6, 13, 43, 53, 135, 355, 454, 6442]
target = 13
index = jump_search(target, array)

puts "Target #{target} index : #{index}"
# => Target 13 index : 3

target = 32
index = jump_search(target, array)

puts "Target #{target} index : #{index}"
# => Target 32 index : -1