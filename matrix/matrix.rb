class Matrix
  attr_accessor :rows, :columns

  def initialize(text)
    @rows = text.split("\n").map {|row| row.split(' ').map(&:to_i)}
    @columns = rows.transpose
  end

end

