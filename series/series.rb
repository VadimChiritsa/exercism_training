class Series
  def initialize(chars)
    @chars = chars
  end

  def slices(number)
    raise ArgumentError if @chars.length < number
    @chars.chars.each_cons(number).map(&:join)
  end
end