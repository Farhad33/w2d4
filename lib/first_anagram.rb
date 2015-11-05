def first_anagram(str1, str2)
  return false if str1.size != str2.size

  arr1 = str1.split('').permutation.to_a
  arr1.each do |el|
    if el == str2.split('')
      return true
    end
  end
  false
end


def second_anagram(str1, str2)
  count = str1.size
  i = 0
  while count > 0
    str2.delete str1[i]
    i+=1
  end

  str2 == ""
end


def third_anagram(str1, str2)
  str1.sort == str2.sort
end


def fourth_anagram(str1, str2)
  str_hash1 = Hash.new(0)
  str_hash2 = Hash.new(0)


  str1.each_char do |char|
    str_hash1[char]+=1
  end

  str2.each_char do |char|
    str_hash2[char]+=1
  end

  str_hash1==str_hash2


end
