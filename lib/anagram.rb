class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  #Returns all anagram matches in the provided array, okr an empty array if there are no matches
  def match(anagram_array)
    matches = []

    #check if sorted letters of word and anagram match. If so, add to list of matches
    anagram_array.each do |anagram|
      matches << anagram if anagram.split("").sort.join == @word.split("").sort.join
    end

    matches
  end
end
