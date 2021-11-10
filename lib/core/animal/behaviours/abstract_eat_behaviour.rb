module Core
  module Animal
    module Behaviours
      class AbstractEatBehaviour
      
        # @param [Core::Food] food
        # @return [Core::Food] the remaining food
        def eat(food)
          raise NotImplementedError
        end
      
      end
    end
  end
end
