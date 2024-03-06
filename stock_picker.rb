def stock_picker(arr)
  dup_arr = arr.dup 
  high_low_diff = [0, 0, 0]
  while arr.length > 1 do
    if arr.rindex(arr.min) == arr.last
      arr.delete_at(arr.rindex(arr.min))
    end
    sub_arr = arr.slice(arr.rindex(arr.min)..-1)
    sub_max = sub_arr.max 
    diff = sub_max - sub_arr[0]
    high_low_diff = [dup_arr.rindex(sub_arr[0]), dup_arr.rindex(sub_max), diff] if diff > high_low_diff.last
    arr.delete_at(arr.rindex(arr.min))
  end
  high_low_diff.pop()
  high_low_diff
end

p stock_picker([17,3,6,9,15,8,6,1,10])