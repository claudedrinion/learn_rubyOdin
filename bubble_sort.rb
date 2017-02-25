def bubble_sort(array)
#  array.length.times do |i|
#    for j in (i..array.length - 2) do
#      if array[j] > array[j+1]
#        tmp        = array[j]
#        array[j]   = array[j+1]
#        array[j+1] = tmp
#      end
#    end
#  end
  sorted = false
  until sorted == true
    # assume it is sorted
    sorted = true
    (array.length - 1).times do |i|
      if array[i] > array[i+1]
        sorted = false
        tmp        = array[i]
        array[i]   = array[i+1]
        array[i+1] = tmp
      end
    end
  end
  array
end

test = [2, 4, 5, 4, 6, 2]

puts(bubble_sort(test))
