class Phrase

  def initialize(str)
    @words_digits_array = str.downcase.scan(/\b[\w|']+\b/)
  end

  def word_count
    @words_digits_array.each_with_object(Hash.new(0)) do |word, hash|
      hash[word] += 1
    end
  end
end
