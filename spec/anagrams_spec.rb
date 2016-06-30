require('rspec')
require('anagrams')

describe('String#anagrams') do
  it('takes a string and several possible anagram and returns false if no matched anagrams') do
    expect('fox'.anagrams('fax')).to(eq("There are no matched anagrams"))
  end

  it('takes a string and possible anagram and returns anagram if in permutations of string') do
    expect('fox'.anagrams('ofx')).to(eq('ofx'))
  end

  it('takes a string and several possible anagram and returns anagram if in permutations of string') do
    expect('fox'.anagrams('ofx xfo')).to(eq('ofx xfo'))
  end

  it('takes a string and several possible anagram and returns anagram if in permutations of string') do
    expect('fox'.anagrams('ofx xfo jellybean')).to(eq('ofx xfo'))
  end


end
