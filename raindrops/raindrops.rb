class Raindrops
  RAINDROP_SPEAK = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}.freeze

  def self.convert(number)
    str_for_return = RAINDROP_SPEAK.map do |key, value|
      value if number % key == 0
    end.join

    str_for_return.empty? ? number.to_s : str_for_return
  end

end
