require "./CarFactory.rb"

car_factory = CarFactory.instance

car_factory.create_car
car_factory.cars_count
car_factory.create_car('leather', 660, 4, '', 'standard', true)
car_factory.create_car('simple', 1000, 4, 'Simple', 'special', false)
car_factory.cars_count
