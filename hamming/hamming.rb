class Hamming

  def self.compute(str1, str2)
    raise ArgumentError if str1.size != str2.size
    str1.chars.each_with_index.count {|symbol, index| symbol != str2[index]}
  end

end