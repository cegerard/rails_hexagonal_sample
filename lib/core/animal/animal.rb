module Core
  module Animal
    class Animal

      # @param [Core::Behaviours::AbstractEatBehaviour] eat_behaviour
      # @param [Core::Behaviours::AbstractHealthBehaviour] health_behaviour
      def initialize(eat_behaviour, health_behaviour)
        @eat_behaviour = eat_behaviour
        @health_behaviour = health_behaviour
      end

      # @param [Core::Food::Food] food
      # @return [Core::Food::Food] the remaining food
      def eat(food)
        remaining_food = @eat_behaviour.eat(food)

        eaten_quantity = food.weight - remaining_food.weight
        @health_behaviour.fed(eaten_quantity)
        
        remaining_food
      end

      def restore_health(quantity)
        @health_behaviour.add_health(quantity)
      end

      def fed?
        !@health_behaviour.hungry?
      end

      def sick?
        @health_behaviour.sick?
      end

    end
  end
end
