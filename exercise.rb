class System

def initialize
  @bodies = []
end

  def add(body)
    @bodies << body
  end

  def total_mass
    total = 0
    @bodies.each do |body|
      total+= body.mass
  end
  return total
end

 end


class Body

  def initialize(name, mass)
    @name = name
    @mass = mass
  end

#Reader to get access to total mass

def mass
  @mass
end

end

class Planet < Body

  def initialize(name, mass, day, year)
    super(name,mass)
    @day = day
    @year = year
  end

end

class Star < Body

  def initialize(name, mass, type)
    super(name,mass)
    @type = type
  end

end

class Moon < Body

  def initialize(name, mass, month, planet)
    super(name,mass)
    @month = month
    @planet = planet
  end

end

 p solar = System.new
 puts "___"
 p mars = Planet.new("Mars",639, 10, 200008)
 p moon = Moon.new("Moon",3, 1, mars)
 p star = Star.new("Star",1, "G-type")
 puts "____"
 p solar.add(mars)
 p solar.add(moon)
 p solar.add(star)
 puts "___"
 p solar.inspect
 p "____"
 p solar.total_mass
