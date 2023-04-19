class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def car_per_hours
    @speed * 221.0
  end

  def production_rate_per_hour
    cars = car_per_hours

    if @speed < 5
      cars
    elsif @speed < 9
      cars * 90 / 100
    elsif @speed < 10
      cars * 80 / 100
    else
      cars * 77 / 100
    end
  end

  def working_items_per_minute
    production_rate_per_hour.to_i / 60
  end
end
