module UseCases
  module ZooKeeper
    class FeedAnimal

      # @param [Core::Animal::Animal] animal
      # @param [Core::Food::Food] food
      # @return [Core::Food::Food] the uneatted food
      def call(animal, food)
        animal.eat(food)
      end

    end
  end
end
