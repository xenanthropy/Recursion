# frozen-string-literal: true

def merge_sort(array)
  if array.length == 1
    array
  else
    merged = if array.length != 3
               merge_sort(array[0..((array.length - 1) / 2)]) +
                 merge_sort(array[(((array.length - 1) / 2) + 1)..array.length - 1])
             else
               merge_sort(array[0..((array.length - 1) / 2)]) +
                 merge_sort([array[-1]])
             end
    new_array = []
    while merged.length.positive?
      new_array << merged.min
      merged.delete_at(merged.index { |num| num == merged.min })
    end
    new_array
  end
end

p merge_sort([5, 2, 1, 3, 6, 4])
