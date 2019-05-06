class Clock
  MINUTES_IN_DAY = 1440
  MINUTES_IN_HOUR = 60

  attr_reader :sum_minutes

  def initialize(hour: 0, minute: 0)
    @sum_minutes = (hour * MINUTES_IN_HOUR + minute) % MINUTES_IN_DAY
  end

  def to_s
    format('%02d:%02d', hour, minute)
  end

  def -(other)
    self.class.new(minute: (sum_minutes - other.sum_minutes))
  end

  def +(other)
    self.class.new(minute: (sum_minutes + other.sum_minutes))
  end

  def eql?(other)
    other.sum_minutes == sum_minutes
  end

  alias :== eql?

  def hash
    sum_minutes.hash
  end

  protected

  def hour
    sum_minutes / MINUTES_IN_HOUR
  end

  def minute
    sum_minutes % MINUTES_IN_HOUR
  end
end
