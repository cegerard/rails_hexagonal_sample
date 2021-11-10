require './lib/core/animal/behaviours/abstract_eat_behaviour'

module Core
  module Animal
    module Behaviours
      class VegetarianEatBehaviour < AbstractEatBehaviour
      
        def eat(food)
          if food.vegetables?
            return food.eat_all
          end
        
          food
         end
       
      end
    end
  end
end
