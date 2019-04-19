class Series

  def initialize(digits)
    @digits = digits
  end

  def slices(number)
    raise ArgumentError if @digits.length < number
    @digits.chars.each_cons(number).to_a.map(&:join)
  end

end