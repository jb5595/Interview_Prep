puts "Hello"
testArray = [0,5,2,6,2]

def merge_sort(array)
  if array.length <= 1
    return array
  end
  # Gets Middle Index
  middle = array.length/2
  first_half = array.slice(0..middle)
  # Offsets index by one so it slices properly
  middle+= 1
  second_half = array.slice(middle..array.length)
  puts second_half

  merge_sort(first_half)
  merge_sort(second_half)
  return array
end

merge_sort(testArray)
