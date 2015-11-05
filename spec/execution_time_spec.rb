require "rspec"
require "execution_time"

describe 'my_min' do
  it 'find smallest number in the array' do
    list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
    expect(my_min(list)).to eq(-5)
  end
end

describe 'subsum' do
  it 'find largest contiguous sub_sum' do
    list = [1,2,-1,3]
    expect(subsum(list)).to eq(5)
  end
end
