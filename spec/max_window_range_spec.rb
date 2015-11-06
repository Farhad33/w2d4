

require 'max_window_range'
require 'rspec'

describe 'max_window_range' do

  it 'should return maximum range' do
    expect(windowed_max_range([1, 0, 2, 5, 4, 8], 2)).to eq(4) # 4, 8
    expect(windowed_max_range([1, 0, 2, 5, 4, 8], 3)).to eq(5) # 0, 2, 5
    expect(windowed_max_range([1, 0, 2, 5, 4, 8], 4)).to eq(6) # 2, 5, 4, 8
    expect(windowed_max_range([1, 3, 2, 5, 4, 8], 5)).to eq(6) # 3, 2, 5, 4, 8
  end
end
