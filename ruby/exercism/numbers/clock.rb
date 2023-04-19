class Clock
  attr_reader :hour, :minute

  def initialize(hours)
    @hour = (hours.fetch(:hour, 0) + hours.fetch(:minute, 0) / 60) % 24
    @minute = hours.fetch(:minute, 0) % 60
  end

  def to_s
    "#{format('%02d', @hour)}:#{format('%02d', @minute)}"
  end

  def +(other)
    Clock.new(hour: @hour + other.hour, minute: @minute + other.minute)
  end

  def -(other)
    Clock.new(hour: @hour - other.hour, minute: @minute - other.minute)
  end

  def ==(other)
    other.hour == @hour && other.minute == @minute ? true : false
  end
end
