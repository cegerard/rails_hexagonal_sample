require './lib/core/animal/behaviours/abstract_eat_behaviour'

module Core
  module Animal
    module Behaviours
      class CarnivorEatBehaviour < AbstractEatBehaviour

        def eat(food)
          if food.meat?
            return food.eat_all
          end

          food.eat(food.weight * VEGETABLE_QUANTITY_EATEN)
        end

        private

        VEGETABLE_QUANTITY_EATEN = 0.1 

      end
    end
  end
end

