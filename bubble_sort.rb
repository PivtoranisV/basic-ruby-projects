def bubble_sort(array)
  array_length = array.length

  # Repeat the sorting process for array_length-1 times
  loop do
    swapped = false

    # Iterate over the array, comparing adjacent elements
    (array_length - 1).times do |i|
      # If the current element is greater than the next, swap them
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    # If no elements were swapped, the array is sorted
    break unless swapped
  end

  array
end
