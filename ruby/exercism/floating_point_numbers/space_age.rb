class SpaceAge
  ORBITAL_PERIOD = {
    'mercury' => 0.2408467,
    'venus' => 0.61519726,
    'earth' => 1.0,
    'mars' => 1.8808158,
    'jupiter' => 11.862615,
    'saturn' => 29.447498,
    'uranus' => 84.016846,
    'neptune' => 164.79132
  }

  EARTH_DAYS_PERIOD = 365.25

  def initialize(age)
    @seconds = age
  end

  ORBITAL_PERIOD.each_key do |k|
    define_method("on_#{k}") do
      age_on(k)
    end
  end

  def age_on(planet)
    @seconds / seconds_by_year(planet)
  end

  def seconds_by_year(planet)
    3600 * 24 * EARTH_DAYS_PERIOD * orbital_period(planet)
  end

  def orbital_period(planet)
    ORBITAL_PERIOD[planet]
  end
end
