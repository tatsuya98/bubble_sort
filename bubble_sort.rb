
def bubble_sort(unsorted_array)
prev_index = 0
current_index = 0
unsorted_array.cycle(unsorted_array.length - 1) do |number|
  if unsorted_array.index(number) == 0 then 
    prev_index = unsorted_array.index(number)
    next
  end

  if unsorted_array.index(number) > prev_index then
    current_index = unsorted_array.index(number)
  end
  if unsorted_array[prev_index] > unsorted_array[current_index] then
    unsorted_array[prev_index], unsorted_array[current_index] = unsorted_array[current_index], unsorted_array[prev_index]
    prev_index = current_index
  end
  if unsorted_array[prev_index] < unsorted_array[current_index] then
    prev_index = current_index
  end

end
puts unsorted_array
end
