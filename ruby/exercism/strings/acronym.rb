class Acronym
  def self.abbreviate(value)
    value.tr!('-', ' ')
    value.split.map { |s| s[0].upcase }.join
  end
end
