# frozen_string_literal: true
class Seat
  def initialize(seat_type = 'Simple')
    @seat_type = seat_type # acts as an interface
  end
  def result
    @seat_type
  end
end

class Engine
  def initialize(engine_size = 660)
    @engine_size = engine_size                              # acts as an interface
  end
  def result
    @engine_size
  end
end

class Doors
  def initialize(door_number = 4)
    @door_number = door_number                       # acts as an interface
  end
  def result
    @door_number
  end
end

class Multimedia
  def initialize(multimedia_type = 'LCD')
    @multimedia_type = multimedia_type               # acts as an interface
  end
  def result
    @multimedia_type
  end
end

class Suspension
  def initialize(suspension_type = 'standard')
    @suspension_type = suspension_type               # acts as an interface
  end
  def result
    @suspension_type
  end
end

class ElectricalSystem
  def initialize(is_electrical_system = true)
    @is_electrical_system = is_electrical_system    # acts as an interface
  end
  def result
    @is_electrical_system
  end
end

# this is a car class in which we initiallize the car
class Car
  def initialize(seat, engine, doors, multimedia, suspension, electrical_system)
    @seat = seat
    @engine = engine
    @doors = doors
    @multimedia = multimedia
    @suspension = suspension
    @electrical_system = electrical_system
  end
  def display
    puts("Car Details:")
    puts("Seats: #{@seat}; Engine: #{@engine}; Doors: #{@doors}; MultiMedia: #{@multimedia}; Suspension: #{@suspension}; Electrical System: #{@electrical_system}")
  end
end
