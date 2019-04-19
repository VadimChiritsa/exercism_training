class Acronym
  def self.abbreviate(name)
    name.upcase.scan(/(\b[a-zA-Z])/).join
  end
end