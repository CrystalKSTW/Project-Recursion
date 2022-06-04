def merge_sort(array)
    if array.length == 1
      array
    else
      left = merge_sort(array[0..((array.length - 1) / 2)])
      right = merge_sort(array[(((array.length - 1) / 2) + 1)..array.length - 1])
      puts "RIGHT:#{right}    LEFT:#{left}"
      sorted = []
      # Check if either side is empty, push lower element, then higher
      while left.length > 0 && right.length > 0
        if left[0] > right[0]
          sorted << right[0]
          # Shift is necessary to reset left/right
          right.shift
        else
          sorted << left[0]
          left.shift
        end
      end
      # Merge left, right, unless there's an empty array
      sorted += if left.length == 0
                  right
                else
                  left
                end
  
      sorted
    end
end
  
arr = [12,23,2,1,44,32,33,23,44,567,4,7,6,0]
p merge_sort(arr)