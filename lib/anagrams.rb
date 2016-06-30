require('pry')

class String
  def anagrams (user_input)
    word_split = self.split("")
    user_anagrams = user_input.split(" ")
    perms = word_split.permutation.to_a
    strings = []
    result = []
    perms.each do |perm|
      strings.push(perm.join(''))
    end
    user_anagrams.each do |anagram|
      if strings.include? anagram
        result.push(anagram)
      end
    end
    if result.length > 0
      result.join(" ")
    else
      "There are no matched anagrams"
    end
  end
end
