# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

  # stock_picker([17,3,6,9,15,8,6,1,10])
  # => [1,4]  # for a profit of $15 - $3 == $12


# Quick Tips:

# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.



# def stock_picker(arr)
#   diffs_arr = []
#   diffs_max = 0
#   max = 0
#   arr.each_with_index do |num, index|
#     (arr.length-1 - index).times do |i|
#       break if i == arr.length - 1
#       diffs_arr << num - arr[i + 1]
#     end
#     if diffs_arr.max > max
#       max = diffs_arr.max
#     end 
#     diffs_arr = []
#   end
#   max
# end

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