require "./Car.rb"
require 'singleton' # importing singleton to make class factories instance once
class CarFactory
  include Singleton
  def initialize
    @car_list = []
  end

  def create_car(seat = nil, engine = nil, doors = nil, multimedia = nil, suspension = nil, electrical_system = nil)
    seat ||= Seat.new.result
    engine ||= Engine.new.result
    doors ||= Doors.new.result
    multimedia ||= Multimedia.new.result
    suspension ||= Suspension.new.result
    electrical_system ||= ElectricalSystem.new.result

    car = Car.new(temp_seat, temp_engine, temp_doors, temp_multimedia, temp_suspension, temp_electricalsystem)
    car.display
    @car_list << car
  end

  def cars_count
    @cars_count = @car_list.count
    puts("The total number of Cars manufactured: #{@cars_count}")
  end

  def car_list
  end
end
