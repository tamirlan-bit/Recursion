def merge_sort(arr)
  #base case
  return arr if arr.length < 2

  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..-1])

  sorted = []
  until left.empty? || right.empty?
    left.first <= right.first ? sorted << left.shift : sorted << right.shift        
  end  
  sorted + left + right   
end

puts "First Array: [3, 2, 1, 13, 8, 5, 0, 1]:"
p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
puts "\n Second Array: [105, 79, 100, 110] :"
p merge_sort([105, 79, 100, 110] )