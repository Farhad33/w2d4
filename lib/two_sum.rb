class Array
  def binary_search(target)
    return nil if count == 0

    midpoint = length / 2
    case target <=> self[midpoint]
    when -1
      self[0...midpoint].binary_search(target)
    when 0
      midpoint
    when 1
      subproblem_answer = self[(midpoint + 1)..-1].binary_search(target)
      (subproblem_answer.nil?) ? nil : (midpoint + 1) + subproblem_answer
    end
  end
end

def bad_two_sum?(arr, target)

  result = 0

  arr.each_with_index do |value, index|
    arr[(index+1)..-1].each do |value2|
      if value + value2 == target
        return true
      end
    end
  end

  false
end


def okay_two_sum?(arr, target)
  arr = arr.sort
  arr.each_with_index do |el,index|
    result = target - el
    found_index = arr.binary_search(result)
    if found_index && found_index!=index
      return true 
    end
  end

  false
end


def pair_sum?(arr, target)
  numbers = Hash.new(0)

  arr.each do |el|
    numbers[el] += 1
  end

  arr.each do |el|
    result = target - el
    if result == el
      return true if numbers[result] > 1
    else
      return true if numbers[result] > 0
    end
  end

  false
end
