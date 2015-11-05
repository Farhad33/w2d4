def my_min(arr)
  result = nil
  arr.each do |el|
    if result.nil?
      result = el
    elsif result > el
      result = el
    end
  end
  result
end

# def subsum(arr)
#   result = arr.first
#   arr.each_with_index do |el1, i|
#     current_sum = el1
#     if current_sum > result
#       result = current_sum
#     end
#     (i+1).upto(arr.size-1) do |j|
#       current_sum += arr[j]
#       if current_sum > result
#         result = current_sum
#       end
#     end
#   end
#   result
# end

# def subsum(arr)
#
#   max_so_far = max_ending_here = -1.0/0
#   arr.each do |i|
#     if max_ending_here+i > i
#       max_ending_here +=i
#     else
#       max_ending_here = i
#     end
#
#     if max_so_far < max_ending_here
#       max_so_far = max_ending_here
#     end
#   end
#     max_so_far
# end



def subsum(arr)
  result = max = -1.0/0

  arr.each do |num|
    max = [num, max + num].max # max = 1, 3, 2, 5
    result = [result, max].max # result = 1, 3, 3, 5
  end

  result
end
