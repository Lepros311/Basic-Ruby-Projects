def bubble_sort(arr)
  high_num = 0
  low_num = 0
  arr.length.times do
    arr.each_with_index do |num, index| 
      break if index == arr.length-1
      if num > arr[index+1]
        high_num = num
        low_num = arr[index+1]
        arr[index] = low_num
        arr[index+1] = high_num
      end
    end
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])