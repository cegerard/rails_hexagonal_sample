module Core
    module Pen
    class Pen

      # @param [Core::Pen::PenNumber] pen_number
      def initialize(pen_number, size = 0)
        @pen_number = pen_number
        @animals = []
        @size = size
      end

      # @param [Core::Animal::Animal] animal
      # @return [Boolean]
      def add_animal(animal)
        nb_animals_before = animal_count
        added = false

        if empty_space?
          @animals.push(animal)
          animal_count == nb_animals_before + 1
          added = true
        end

        added
      end

      private

      def empty_space?
        animal_count < @size
      end

      def animal_count
        @animals.length
      end

    end
  end
end
