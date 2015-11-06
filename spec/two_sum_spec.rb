

require 'rspec'
require 'two_sum'

describe '#two_sum' do
  it 'bad: gives back true if target is found' do
    arr = [0,1,5,7]
    expect(bad_two_sum?(arr,6)).to be true
    expect(bad_two_sum?(arr,10)).to be false
  end

  it 'okay: gives back true if target is found' do
    arr = [0,1,5,7]
    expect(okay_two_sum?(arr,6)).to be true
    expect(okay_two_sum?(arr,10)).to be false
  end

  it 'okay: gives back true if target is found' do
    arr = [0,1,5,7]
    expect(pair_sum?(arr,6)).to be true
    expect(pair_sum?(arr,10)).to be false
  end
end

describe 'binary_search' do
  it 'returns index of target found' do

      arr=[0,1,2,7]
      expect(arr.binary_search(7)).to eq(3)
  end
end
