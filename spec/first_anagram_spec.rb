require 'rspec'
require 'first_anagram'

describe 'first_anagram?' do
  it 'find two anagrams' do
    expect(first_anagram("gizmo", "sally")).to be false
    expect(first_anagram("elvis", "lives")).to be true
  end
end

describe 'second_anagram?' do
  it 'find two anagrams' do
    expect(first_anagram("gizmo", "sally")).to be false
    expect(first_anagram("elvis", "lives")).to be true
  end
end


describe 'fourth_anagram?' do
  it 'find two anagrams' do
    expect(fourth_anagram("gizmo", "sally")).to be false
    expect(fourth_anagram("elvis", "lives")).to be true
  end
end
