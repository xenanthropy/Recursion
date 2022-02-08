# frozen-string-literal: true

def merge_sort(array)
  if array.length == 1
    array
  else
    left_half = merge_sort(array[0..((array.length - 1) / 2)])
    right_half = merge_sort(array[(((array.length - 1) / 2) + 1)..array.length - 1])
    new_array = []
    while left_half.length > 0 && right_half.length > 0
      if left_half[0] > right_half[0]
        new_array << right_half[0]
        right_half.shift
      else
        new_array << left_half[0]
        left_half.shift
      end
    end
    if left_half.length == 0
      new_array = new_array + right_half
    else
      new_array = new_array + left_half
    end
    new_array
  end
end

p merge_sort([5, 2, 1, 3, 6, 4])
