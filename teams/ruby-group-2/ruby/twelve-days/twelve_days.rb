class TwelveDays
  GIFTS = [
    ['first', 'twelve Drummers Drumming,'],
    ['second', 'eleven Pipers Piping,'],
    ['third', 'ten Lords-a-Leaping,'],
    ['fourth', 'nine Ladies Dancing,'],
    ['fifth', 'eight Maids-a-Milking,'],
    ['sixth', 'seven Swans-a-Swimming,'],
    ['seventh', 'six Geese-a-Laying,'],
    ['eighth', 'five Gold Rings,'],
    ['ninth', 'four Calling Birds,'],
    ['tenth', 'three French Hens,'],
    ['eleventh', 'two Turtle Doves, and'],
    ['twelfth', 'a Partridge in a Pear Tree']
  ].freeze

  class << self
    def song
      GIFTS.map.with_index do |element, index|
        "On the #{element[0]} day of Christmas my true love gave to me: #{GIFTS
            .last(index + 1).map { |arr| arr[1] }.join(' ')}."
      end.join("\n\n") + "\n"
    end
  end
end
