class Luhn
  class << self
    def valid?(chars)
      chars.delete!(' ')
      return false unless chars.match?(/\A\d{2,}\z/)

      double_number(chars).sum % 10 == 0
    end

    private

    def double_number(chars)
      chars.reverse.chars.map.with_index do |char, index|
        if index.odd?
          int_double_char = char.to_i * 2
          int_double_char - (int_double_char > 9 ? 9 : 0)
        else
          char.to_i
        end
      end
    end
  end
end
