# frozen_string_literal: true

def bubble_sort(array)
  array.length.times do
    array.each_with_index do |value, index|
      if (index + 1 <= (array.length - 1)) && (array[index] > array[index + 1])
        array[index] = array[index + 1]
        array[index + 1] = value
      end
    end
  end
  p array
end

bubble_sort([4, 3, 78, 2, 0, 2])
