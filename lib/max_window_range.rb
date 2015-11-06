
def windowed_max_range(arr, w_size)

  current_max_range = -1.0/0

  0.upto(arr.length-w_size) do |i|
    window = arr.slice(i,w_size)
    range = window.max - window.min

    if range > current_max_range
      current_max_range = range
    end

  end

  current_max_range
end
