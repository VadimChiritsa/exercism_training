class Isogram

  def self.isogram?(str)
    str_only_letters = str.downcase.scan(/[[:alpha:]]/)
    str_only_letters.uniq.size == str_only_letters.size
  end

end