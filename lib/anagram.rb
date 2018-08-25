class Anagram
  attr_accessor :word

  def initialize(word)
  end

  #Returns all anagram matches in the provided array, okr an empty array if there are no matches
  def match(anagram_array)
    matches = []
    word = @word
    anagram_array.each do |anagram|
      matches << anagram if anagram.split("").sort.join == word.split("").sort.join
    end
    matches
  end
end
