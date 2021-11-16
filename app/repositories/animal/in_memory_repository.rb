require './lib/core/animal/animal_info'
  require './lib/core/interfaces/animal_repository'
  
  module Animal
    class InMemoryRepository < Core::Interfaces::AnimalRepository

      def initialize
        @counter = 0
        @animals = {}
      end

      def create(animal_parameters)
        @counter += 1

        new_animal = animal_parameters.clone
        new_animal[:id] = @counter 

        @animals[@counter] = new_animal

        Core::Animal::AnimalInfo.new(new_animal)
      end

    end
  end
