module UseCases
  module ZooKeeper
    class PlaceAnimalInPen

      def initialize(pen_repository)
        @pen_repository = pen_repository
      end

      # @param [Core::Animal] animal
      # @param [Core::PenNumber] pen_number
      # @return [Boolean] true if the animal as been added, false otherwise
      def call(animal, pen_number)
        pen = @pen_repository.get(pen_number)
        pen.add_animal(animal)
      end

    end
  end
end