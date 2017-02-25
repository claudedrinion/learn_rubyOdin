def bubble_sort(array)
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

def bubble_sort_by(array)
  sorted = false
  until sorted == true
    # assume it is sorted
    sorted = true
    (array.length - 1).times do |i|
      if (yield(array[i], array[i+1]) > 0)
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

test2 = bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end

puts test2
